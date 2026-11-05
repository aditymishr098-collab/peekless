package com.lumioapps.peekless

import java.io.ByteArrayOutputStream
import java.io.IOException
import java.net.InetAddress
import java.net.InetSocketAddress
import java.net.Socket
import java.util.concurrent.ConcurrentHashMap
import java.util.Random

/** What the TCP helper needs from the monitor service. */
interface DnsHost {
    /** Keeps a socket out of the tunnel. */
    fun protectSocket(socket: Socket): Boolean

    /** The phone's real DNS server, or null. */
    fun upstream(): InetAddress?

    /** Counts a question for the app that sent it. Returns that app's package, or null. */
    fun record(query: ByteArray, source: ByteArray, sourcePort: Int, destination: ByteArray): String?

    /** The "does not exist" answer when the name is a blocked tracker, otherwise null. */
    fun refusal(query: ByteArray, owner: String?): ByteArray?

    /** Runs work in the background. */
    fun submit(task: Runnable)

    /** Writes one IPv4 packet back into the tunnel. */
    fun write(packet: ByteArray)
}

/**
 * DNS over TCP. Normal DNS uses UDP, but when an answer is too big for one UDP
 * packet the app asks again over TCP. This is a very small TCP server that
 * only knows what DNS needs: open, receive one or more length-prefixed
 * questions, send the answers, close. Each question is forwarded to the real
 * DNS server over a normal (protected) TCP socket.
 *
 * Anything that is not TCP to port 53 of the made-up DNS server is refused
 * with a reset, so the app falls back at once instead of waiting.
 */
class DnsTcp(private val host: DnsHost) {
    private class Conn(
        val source: ByteArray,
        val sourcePort: Int,
        val destination: ByteArray,
        val destinationPort: Int,
        var rcvNext: Int,
        val isn: Int,
    ) {
        var sndNext: Int = isn + 1
        val buffer = ByteArrayOutputStream()
        var finReceived = false
        var finSent = false
        var closed = false
        var pending = 0

        @Volatile
        var lastActive = System.currentTimeMillis()
        val upLock = Any()

        @Volatile
        var socket: Socket? = null
    }

    private val conns = ConcurrentHashMap<Long, Conn>()
    private val random = Random()

    companion object {
        private const val FIN = 0x01
        private const val SYN = 0x02
        private const val RST = 0x04
        private const val PSH = 0x08
        private const val ACK = 0x10

        private const val MAX_CONNECTIONS = 64
        private const val IDLE_MILLIS = 30_000L
        private const val SEGMENT = 1400
        private const val MAX_BUFFER = 70_000
        private const val TIMEOUT = 4000
    }

    /** Called for every IPv4 TCP packet that reaches the tunnel. */
    fun onPacket(packet: ByteArray, ipHeader: Int) {
        val total = minOf(u16(packet, 2), packet.size)
        if (total < ipHeader + 20) return
        val t = ipHeader
        val sourcePort = u16(packet, t)
        val destinationPort = u16(packet, t + 2)
        val seq = i32(packet, t + 4)
        val ackNumber = i32(packet, t + 8)
        val offset = ((packet[t + 12].toInt() shr 4) and 0x0F) * 4
        if (offset < 20 || total < t + offset) return
        val flags = packet[t + 13].toInt() and 0xFF
        val source = packet.copyOfRange(12, 16)
        val destination = packet.copyOfRange(16, 20)
        val payload = if (total > t + offset) packet.copyOfRange(t + offset, total) else ByteArray(0)
        val key = keyOf(source, sourcePort, destinationPort)

        if ((flags and RST) != 0) {
            conns.remove(key)?.let { close(it) }
            return
        }

        if ((flags and SYN) != 0 && (flags and ACK) == 0) {
            if (destinationPort != 53) {
                // Private DNS (port 853) and anything else: refuse quickly.
                refuse(source, sourcePort, destination, destinationPort, 0, seq + 1, true)
                return
            }
            val old = conns[key]
            if (old != null && old.rcvNext == seq + 1) {
                // The app repeated its SYN. Repeat our answer.
                synchronized(old) { host.write(synAck(old)) }
                return
            }
            purge()
            if (conns.size >= MAX_CONNECTIONS) {
                refuse(source, sourcePort, destination, destinationPort, 0, seq + 1, true)
                return
            }
            val conn = Conn(source, sourcePort, destination, destinationPort, seq + 1, random.nextInt())
            conns.put(key, conn)?.let { close(it) }
            host.write(synAck(conn))
            return
        }

        val conn = conns[key]
        if (conn == null) {
            // Only data or a close for a connection we do not know needs a reset.
            if (payload.isNotEmpty() || (flags and FIN) != 0) {
                val hasAck = (flags and ACK) != 0
                val length = payload.size + (if ((flags and FIN) != 0) 1 else 0)
                refuse(source, sourcePort, destination, destinationPort, if (hasAck) ackNumber else 0, seq + length, !hasAck)
            }
            return
        }

        conn.lastActive = System.currentTimeMillis()
        val messages = ArrayList<ByteArray>()
        var broken = false
        synchronized(conn) {
            if (conn.closed) return
            val hasData = payload.isNotEmpty() || (flags and FIN) != 0
            if (!hasData) return
            if (seq != conn.rcvNext) {
                // Repeated or out of order. Say what we expect and wait.
                host.write(plain(conn, ACK))
                return
            }
            if (payload.isNotEmpty()) {
                conn.buffer.write(payload, 0, payload.size)
                conn.rcvNext += payload.size
            }
            if ((flags and FIN) != 0) {
                conn.rcvNext += 1
                conn.finReceived = true
            }
            host.write(plain(conn, ACK))

            if (conn.buffer.size() > MAX_BUFFER) {
                broken = true
            } else {
                val data = conn.buffer.toByteArray()
                var pos = 0
                while (data.size - pos >= 2) {
                    val length = u16(data, pos)
                    if (length < 12) {
                        broken = true
                        break
                    }
                    if (data.size - pos - 2 < length) break
                    messages.add(data.copyOfRange(pos + 2, pos + 2 + length))
                    pos += 2 + length
                }
                if (pos > 0 && !broken) {
                    conn.buffer.reset()
                    conn.buffer.write(data, pos, data.size - pos)
                }
                conn.pending += messages.size
            }
        }

        if (broken) {
            synchronized(conn) { host.write(plain(conn, RST or ACK)) }
            conns.remove(key, conn)
            close(conn)
            return
        }
        for (message in messages) {
            try {
                host.submit(Runnable { forward(key, conn, message) })
            } catch (e: Exception) {
                // The monitor is stopping.
                synchronized(conn) { conn.pending-- }
            }
        }
        if (messages.isEmpty()) maybeFinish(key, conn)
    }

    /** Ends every connection. Used when the monitor stops. */
    fun closeAll() {
        for (conn in conns.values) close(conn)
        conns.clear()
    }

    private fun forward(key: Long, conn: Conn, query: ByteArray) {
        try {
            val owner = host.record(query, conn.source, conn.sourcePort, conn.destination)
            val refusal = host.refusal(query, owner)
            if (refusal != null) {
                sendData(conn, refusal)
                return
            }
            val server = host.upstream() ?: return
            val reply = synchronized(conn.upLock) { exchange(conn, server, query) }
            if (reply != null) sendData(conn, reply)
        } catch (e: Exception) {
            // No answer. The app will time out and try again by itself.
        } finally {
            synchronized(conn) { conn.pending-- }
            maybeFinish(key, conn)
        }
    }

    /** Sends one question to the real DNS server and reads the whole answer. */
    private fun exchange(conn: Conn, server: InetAddress, query: ByteArray): ByteArray? {
        for (attempt in 0..1) {
            var socket = conn.socket
            val reused = socket != null
            try {
                if (socket == null) {
                    socket = Socket()
                    conn.socket = socket
                    // The socket needs a real descriptor before it can be protected.
                    socket.bind(InetSocketAddress(0))
                    if (!host.protectSocket(socket)) throw IOException("not protected")
                    socket.soTimeout = TIMEOUT
                    socket.connect(InetSocketAddress(server, 53), TIMEOUT)
                }
                if (conn.closed) return null
                val out = socket.getOutputStream()
                val request = ByteArray(2 + query.size)
                request[0] = (query.size shr 8).toByte()
                request[1] = query.size.toByte()
                System.arraycopy(query, 0, request, 2, query.size)
                out.write(request)
                out.flush()
                val input = socket.getInputStream()
                val head = ByteArray(2)
                readFully(input, head)
                val length = u16(head, 0)
                if (length < 12) return null
                val body = ByteArray(length)
                readFully(input, body)
                return body
            } catch (e: IOException) {
                try {
                    socket?.close()
                } catch (ignored: Exception) {
                    // Already closed.
                }
                conn.socket = null
                // A kept-open socket may have been closed by the server. Try once with a new one.
                if (!reused || conn.closed) return null
            }
        }
        return null
    }

    private fun readFully(input: java.io.InputStream, target: ByteArray) {
        var got = 0
        while (got < target.size) {
            val n = input.read(target, got, target.size - got)
            if (n < 0) throw IOException("closed")
            got += n
        }
    }

    /** Sends an answer back to the app, split into pieces that fit. */
    private fun sendData(conn: Conn, reply: ByteArray) {
        val data = ByteArray(2 + reply.size)
        data[0] = (reply.size shr 8).toByte()
        data[1] = reply.size.toByte()
        System.arraycopy(reply, 0, data, 2, reply.size)
        synchronized(conn) {
            if (conn.closed) return
            var at = 0
            while (at < data.size) {
                val n = minOf(SEGMENT, data.size - at)
                val packet = segment(
                    conn.destination, conn.destinationPort, conn.source, conn.sourcePort,
                    conn.sndNext, conn.rcvNext, PSH or ACK, data, at, n, false,
                )
                conn.sndNext += n
                host.write(packet)
                at += n
            }
        }
    }

    /** When the app has closed its side and every answer is sent, close ours. */
    private fun maybeFinish(key: Long, conn: Conn) {
        synchronized(conn) {
            if (!conn.finReceived || conn.pending > 0 || conn.finSent || conn.closed) return
            conn.finSent = true
            host.write(plain(conn, FIN or ACK))
            conn.sndNext += 1
        }
        conns.remove(key, conn)
        close(conn)
    }

    private fun close(conn: Conn) {
        synchronized(conn) { conn.closed = true }
        try {
            // Closing from here also stops a read that is waiting.
            conn.socket?.close()
        } catch (e: Exception) {
            // Already closed.
        }
        conn.socket = null
    }

    private fun purge() {
        val now = System.currentTimeMillis()
        val it = conns.entries.iterator()
        while (it.hasNext()) {
            val entry = it.next()
            if (now - entry.value.lastActive > IDLE_MILLIS) {
                it.remove()
                close(entry.value)
            }
        }
    }

    // Packets.

    private fun synAck(conn: Conn): ByteArray = segment(
        conn.destination, conn.destinationPort, conn.source, conn.sourcePort,
        conn.isn, conn.rcvNext, SYN or ACK, ByteArray(0), 0, 0, true,
    )

    private fun plain(conn: Conn, flags: Int): ByteArray = segment(
        conn.destination, conn.destinationPort, conn.source, conn.sourcePort,
        conn.sndNext, conn.rcvNext, flags, ByteArray(0), 0, 0, false,
    )

    /** A reset to a packet we do not want. [source] is the app, [destination] the made-up server. */
    private fun refuse(
        source: ByteArray,
        sourcePort: Int,
        destination: ByteArray,
        destinationPort: Int,
        seq: Int,
        ack: Int,
        withAck: Boolean,
    ) {
        val flags = if (withAck) RST or ACK else RST
        host.write(
            segment(
                destination, destinationPort, source, sourcePort,
                seq, if (withAck) ack else 0, flags, ByteArray(0), 0, 0, false,
            ),
        )
    }

    /** Builds an IPv4 + TCP packet with correct checksums. [from] is the sender of this packet. */
    private fun segment(
        from: ByteArray,
        fromPort: Int,
        to: ByteArray,
        toPort: Int,
        seq: Int,
        ack: Int,
        flags: Int,
        data: ByteArray,
        dataOffset: Int,
        dataLength: Int,
        mss: Boolean,
    ): ByteArray {
        val header = if (mss) 24 else 20
        val tcpLength = header + dataLength
        val total = 20 + tcpLength
        val p = ByteArray(total)
        p[0] = 0x45
        p[2] = (total shr 8).toByte()
        p[3] = total.toByte()
        p[6] = 0x40 // Do not fragment.
        p[8] = 64
        p[9] = 6
        System.arraycopy(from, 0, p, 12, 4)
        System.arraycopy(to, 0, p, 16, 4)
        val ipSum = fold(sum(p, 0, 20, 0))
        p[10] = (ipSum shr 8).toByte()
        p[11] = ipSum.toByte()

        val t = 20
        p[t] = (fromPort shr 8).toByte()
        p[t + 1] = fromPort.toByte()
        p[t + 2] = (toPort shr 8).toByte()
        p[t + 3] = toPort.toByte()
        put32(p, t + 4, seq)
        put32(p, t + 8, ack)
        p[t + 12] = ((header / 4) shl 4).toByte()
        p[t + 13] = flags.toByte()
        p[t + 14] = 0xFF.toByte() // Window 65535.
        p[t + 15] = 0xFF.toByte()
        if (mss) {
            p[t + 20] = 2
            p[t + 21] = 4
            p[t + 22] = (SEGMENT shr 8).toByte()
            p[t + 23] = SEGMENT.toByte()
        }
        if (dataLength > 0) System.arraycopy(data, dataOffset, p, t + header, dataLength)

        // The TCP checksum also covers the addresses, protocol and length.
        var pseudo = 0
        pseudo += u16(p, 12) + u16(p, 14) + u16(p, 16) + u16(p, 18)
        pseudo += 6 + tcpLength
        val tcpSum = fold(sum(p, t, tcpLength, pseudo))
        p[t + 16] = (tcpSum shr 8).toByte()
        p[t + 17] = tcpSum.toByte()
        return p
    }

    // Small helpers.

    private fun u16(b: ByteArray, at: Int): Int =
        ((b[at].toInt() and 0xFF) shl 8) or (b[at + 1].toInt() and 0xFF)

    private fun i32(b: ByteArray, at: Int): Int =
        ((b[at].toInt() and 0xFF) shl 24) or ((b[at + 1].toInt() and 0xFF) shl 16) or
            ((b[at + 2].toInt() and 0xFF) shl 8) or (b[at + 3].toInt() and 0xFF)

    private fun put32(b: ByteArray, at: Int, value: Int) {
        b[at] = (value ushr 24).toByte()
        b[at + 1] = (value ushr 16).toByte()
        b[at + 2] = (value ushr 8).toByte()
        b[at + 3] = value.toByte()
    }

    private fun sum(b: ByteArray, from: Int, length: Int, start: Int): Int {
        var total = start
        var i = from
        val end = from + length
        while (i + 1 < end) {
            total += u16(b, i)
            i += 2
        }
        if (i < end) total += (b[i].toInt() and 0xFF) shl 8
        return total
    }

    /** Folds carries in and returns the one's complement. */
    private fun fold(value: Int): Int {
        var s = value
        while ((s ushr 16) != 0) s = (s and 0xFFFF) + (s ushr 16)
        return s.inv() and 0xFFFF
    }

    private fun keyOf(source: ByteArray, sourcePort: Int, destinationPort: Int): Long {
        val address = ((source[0].toLong() and 0xFF) shl 24) or ((source[1].toLong() and 0xFF) shl 16) or
            ((source[2].toLong() and 0xFF) shl 8) or (source[3].toLong() and 0xFF)
        return (address shl 32) or (sourcePort.toLong() shl 16) or destinationPort.toLong()
    }
}
