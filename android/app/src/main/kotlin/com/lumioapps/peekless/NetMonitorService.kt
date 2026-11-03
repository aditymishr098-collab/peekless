package com.lumioapps.peekless

import android.annotation.TargetApi
import android.content.Context
import android.content.Intent
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.VpnService
import android.os.Build
import android.os.ParcelFileDescriptor
import android.system.OsConstants
import java.io.FileInputStream
import java.io.FileOutputStream
import java.net.DatagramPacket
import java.net.DatagramSocket
import java.net.Inet4Address
import java.net.InetAddress
import java.net.InetSocketAddress
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

/**
 * The network monitor. It is a local VPN that only takes DNS questions: the
 * only address routed into it is a made-up DNS server. Every other packet goes
 * out the normal way, so internet speed does not change. Peekless reads the
 * domain name of each question, finds the app that asked, counts it, and
 * passes the question on to the phone's real DNS server unchanged.
 *
 * It sees domain names only. It never sees pages, messages or any content.
 * It does not send anything to a server of its own.
 */
class NetMonitorService : VpnService() {
    companion object {
        @Volatile
        var running = false

        private const val CLIENT_ADDRESS = "10.111.222.1"
        private const val DNS_ADDRESS = "10.111.222.2"

        fun start(context: Context) {
            context.startService(Intent(context, NetMonitorService::class.java))
        }

        fun stop(context: Context) {
            context.stopService(Intent(context, NetMonitorService::class.java))
        }
    }

    private var tunnel: ParcelFileDescriptor? = null
    private var worker: Thread? = null
    private var executor: ExecutorService? = null

    private var upstream: InetAddress? = null
    private var upstreamAt = 0L

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (!running) startMonitor()
        return START_NOT_STICKY
    }

    private fun startMonitor() {
        try {
            val builder = Builder()
                .setSession("Peekless")
                .addAddress(CLIENT_ADDRESS, 32)
                .addDnsServer(DNS_ADDRESS)
                .addRoute(DNS_ADDRESS, 32)
                .setBlocking(true)
            val pfd = builder.establish()
            if (pfd == null) {
                stopSelf()
                return
            }
            tunnel = pfd
            executor = Executors.newFixedThreadPool(6)
            running = true
            worker = Thread({ readLoop(pfd) }, "peekless-dns").also { it.start() }
        } catch (e: Exception) {
            stopMonitor()
        }
    }

    private fun stopMonitor() {
        running = false
        try {
            tunnel?.close()
        } catch (e: Exception) {
            // Already closed.
        }
        tunnel = null
        executor?.shutdownNow()
        executor = null
        worker = null
        NetStats.flush(applicationContext)
        stopSelf()
    }

    override fun onRevoke() {
        // The user switched the VPN off in Android settings.
        stopMonitor()
        super.onRevoke()
    }

    override fun onDestroy() {
        running = false
        try {
            tunnel?.close()
        } catch (e: Exception) {
            // Already closed.
        }
        tunnel = null
        executor?.shutdownNow()
        NetStats.flush(applicationContext)
        super.onDestroy()
    }

    private fun readLoop(pfd: ParcelFileDescriptor) {
        val input = FileInputStream(pfd.fileDescriptor)
        val output = FileOutputStream(pfd.fileDescriptor)
        val buffer = ByteArray(32767)
        try {
            while (running) {
                val length = input.read(buffer)
                if (length < 0) break
                if (length == 0) continue
                handle(buffer.copyOf(length), output)
            }
        } catch (e: Exception) {
            // The tunnel was closed. That is how the loop ends.
        }
    }

    private fun u16(b: ByteArray, at: Int): Int =
        ((b[at].toInt() and 0xFF) shl 8) or (b[at + 1].toInt() and 0xFF)

    /** Takes a DNS question out of an IPv4 UDP packet and answers it in the background. */
    private fun handle(packet: ByteArray, output: FileOutputStream) {
        if (packet.size < 28) return
        if (((packet[0].toInt() shr 4) and 0x0F) != 4) return
        val headerLength = (packet[0].toInt() and 0x0F) * 4
        if (headerLength < 20 || packet.size < headerLength + 8) return
        if (packet[9].toInt() != 17) return // Only UDP.
        val sourcePort = u16(packet, headerLength)
        val destinationPort = u16(packet, headerLength + 2)
        if (destinationPort != 53) return
        val total = minOf(u16(packet, 2), packet.size)
        val end = minOf(total, headerLength + u16(packet, headerLength + 4))
        if (end <= headerLength + 8) return
        val query = packet.copyOfRange(headerLength + 8, end)
        val source = packet.copyOfRange(12, 16)
        val destination = packet.copyOfRange(16, 20)
        try {
            executor?.execute { answer(query, source, sourcePort, destination, output) }
        } catch (e: Exception) {
            // The monitor is stopping.
        }
    }

    private fun answer(
        query: ByteArray,
        source: ByteArray,
        sourcePort: Int,
        destination: ByteArray,
        output: FileOutputStream,
    ) {
        try {
            record(query, source, sourcePort, destination)
            val server = upstreamServer() ?: return
            val socket = DatagramSocket()
            try {
                // Keeps this socket out of the tunnel, so it reaches the real DNS server.
                protect(socket)
                socket.soTimeout = 4000
                socket.send(DatagramPacket(query, query.size, server, 53))
                val buffer = ByteArray(4096)
                val reply = DatagramPacket(buffer, buffer.size)
                socket.receive(reply)
                writeReply(buffer.copyOf(reply.length), source, sourcePort, destination, output)
            } finally {
                socket.close()
            }
        } catch (e: Exception) {
            // No answer. The app will try again by itself.
        }
    }

    private fun record(query: ByteArray, source: ByteArray, sourcePort: Int, destination: ByteArray) {
        val question = DnsQuery.parse(query) ?: return
        // 1 is IPv4, 28 is IPv6, 65 is HTTPS. These are real lookups.
        if (question.second != 1 && question.second != 28 && question.second != 65) return
        NetStats.add(applicationContext, owner(source, sourcePort, destination), question.first)
    }

    /** The package of the app that sent the question, or "unknown". */
    @TargetApi(29)
    private fun owner(source: ByteArray, sourcePort: Int, destination: ByteArray): String {
        if (Build.VERSION.SDK_INT < 29) return "unknown"
        return try {
            val manager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            val uid = manager.getConnectionOwnerUid(
                OsConstants.IPPROTO_UDP,
                InetSocketAddress(InetAddress.getByAddress(source), sourcePort),
                InetSocketAddress(InetAddress.getByAddress(destination), 53),
            )
            if (uid < 0) return "unknown"
            if (uid == 1000) return "android"
            packageManager.getPackagesForUid(uid)?.firstOrNull() ?: "unknown"
        } catch (e: Exception) {
            "unknown"
        }
    }

    /** The phone's real DNS server (from the normal connection, not the tunnel). */
    @Suppress("DEPRECATION")
    private fun upstreamServer(): InetAddress? {
        val now = System.currentTimeMillis()
        val saved = upstream
        if (saved != null && now - upstreamAt < 30_000) return saved
        try {
            val manager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
            var best: InetAddress? = null
            for (network in manager.allNetworks) {
                val caps = manager.getNetworkCapabilities(network) ?: continue
                if (caps.hasTransport(NetworkCapabilities.TRANSPORT_VPN)) continue
                if (!caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)) continue
                val servers = manager.getLinkProperties(network)?.dnsServers ?: continue
                val pick = servers.firstOrNull { it is Inet4Address } ?: servers.firstOrNull() ?: continue
                best = pick
                if (caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)) break
            }
            if (best != null) {
                upstream = best
                upstreamAt = now
            }
            return best
        } catch (e: Exception) {
            return saved
        }
    }

    /** Wraps a DNS answer in an IPv4 UDP packet that goes back to the asking app. */
    private fun writeReply(
        data: ByteArray,
        source: ByteArray,
        sourcePort: Int,
        destination: ByteArray,
        output: FileOutputStream,
    ) {
        val total = 20 + 8 + data.size
        val packet = ByteArray(total)
        packet[0] = 0x45
        packet[2] = (total shr 8).toByte()
        packet[3] = total.toByte()
        packet[8] = 64
        packet[9] = 17
        // The answer comes from the made-up DNS server and goes to the asking app.
        System.arraycopy(destination, 0, packet, 12, 4)
        System.arraycopy(source, 0, packet, 16, 4)
        var sum = 0
        var i = 0
        while (i < 20) {
            sum += ((packet[i].toInt() and 0xFF) shl 8) or (packet[i + 1].toInt() and 0xFF)
            i += 2
        }
        while ((sum shr 16) != 0) sum = (sum and 0xFFFF) + (sum shr 16)
        val checksum = sum.inv() and 0xFFFF
        packet[10] = (checksum shr 8).toByte()
        packet[11] = checksum.toByte()
        // UDP: from port 53 to the asking port. A checksum of 0 is allowed over IPv4.
        packet[21] = 53
        packet[22] = (sourcePort shr 8).toByte()
        packet[23] = sourcePort.toByte()
        val udpLength = 8 + data.size
        packet[24] = (udpLength shr 8).toByte()
        packet[25] = udpLength.toByte()
        System.arraycopy(data, 0, packet, 28, data.size)
        synchronized(output) {
            output.write(packet)
        }
    }
}

/** Reads the name from a DNS question. */
object DnsQuery {
    /** The lower-case name and the type of the first question, or null. */
    fun parse(query: ByteArray): Pair<String, Int>? {
        if (query.size < 17) return null
        val count = ((query[4].toInt() and 0xFF) shl 8) or (query[5].toInt() and 0xFF)
        if (count < 1) return null
        var i = 12
        val name = StringBuilder()
        while (true) {
            if (i >= query.size) return null
            val length = query[i].toInt() and 0xFF
            if (length == 0) {
                i++
                break
            }
            // A question never uses compressed names.
            if ((length and 0xC0) != 0) return null
            if (i + 1 + length > query.size) return null
            if (name.isNotEmpty()) name.append('.')
            for (k in 1..length) {
                val c = (query[i + k].toInt() and 0xFF).toChar().lowercaseChar()
                val ok = (c in 'a'..'z') || (c in '0'..'9') || c == '-' || c == '_'
                if (!ok) return null
                name.append(c)
            }
            i += 1 + length
            if (name.length > 253) return null
        }
        if (name.isEmpty() || i + 4 > query.size) return null
        val type = ((query[i].toInt() and 0xFF) shl 8) or (query[i + 1].toInt() and 0xFF)
        return Pair(name.toString(), type)
    }
}
