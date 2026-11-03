package com.lumioapps.peekless

import android.content.Context
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.zip.ZipFile

/**
 * The deep scan. The normal scan finds trackers from the app manifest. This
 * one also reads the class names inside the app's code (the .dex files) and
 * looks for the same tracker names there. It finds trackers that have no
 * screen or service of their own. Everything happens on the phone, and only
 * the class names are read, never the app's data.
 *
 * Results are remembered for each app until the app or the tracker list
 * changes, so only the first deep scan is slow.
 */
object DexScanner {
    private const val PREFS = "peekless_deep"
    private const val MAX_DEX_BYTES = 48L * 1024 * 1024
    private const val MAX_CLASSES = 400_000

    private val dexName = Regex("classes\\d*\\.dex")

    /** A tracker name with the class prefixes to look for, as dex bytes. */
    private class Needle(val tracker: String, val prefixes: List<ByteArray>)

    private fun needles(signatures: Map<String, List<String>>): List<Needle> {
        return signatures.map { (tracker, prefixes) ->
            Needle(
                tracker,
                prefixes.map { ("L" + it.replace('.', '/')).toByteArray(Charsets.US_ASCII) },
            )
        }
    }

    /**
     * The trackers found in the code of [sourceDirs] (the APK and its splits).
     * [fingerprint] describes the tracker list, [updateTime] the app version:
     * a saved result is used only when both still match.
     */
    fun scan(
        context: Context,
        packageName: String,
        sourceDirs: List<String>,
        signatures: Map<String, List<String>>,
        fingerprint: Int,
        updateTime: Long,
    ): Set<String> {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val saved = prefs.getString(packageName, null)
        if (saved != null) {
            val parts = saved.split("|", limit = 3)
            if (parts.size == 3 && parts[0] == fingerprint.toString() && parts[1] == updateTime.toString()) {
                return if (parts[2].isEmpty()) emptySet() else parts[2].split("\n").toSet()
            }
        }

        val found = LinkedHashSet<String>()
        var complete = true
        val remaining = needles(signatures).toMutableList()
        for (path in sourceDirs) {
            if (remaining.isEmpty()) break
            try {
                ZipFile(path).use { zip ->
                    val entries = zip.entries()
                    while (entries.hasMoreElements() && remaining.isNotEmpty()) {
                        val entry = entries.nextElement()
                        if (!dexName.matches(entry.name)) continue
                        if (entry.size < 0 || entry.size > MAX_DEX_BYTES) {
                            complete = false
                            continue
                        }
                        val bytes = zip.getInputStream(entry).use { it.readBytes() }
                        match(bytes, remaining, found)
                    }
                }
            } catch (e: Exception) {
                // An unreadable APK is skipped. Do not remember a half result.
                complete = false
            }
        }

        if (complete) {
            prefs.edit()
                .putString(packageName, "$fingerprint|$updateTime|" + found.joinToString("\n"))
                .apply()
        }
        return found
    }

    /** Adds every tracker that has a class in this dex file to [found]. */
    private fun match(bytes: ByteArray, remaining: MutableList<Needle>, found: MutableSet<String>) {
        if (bytes.size < 0x70) return
        val buf = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        // A dex file starts with "dex\n".
        if (buf.getInt(0) != 0x0A786564) return

        val stringIdsSize = buf.getInt(0x38)
        val stringIdsOff = buf.getInt(0x3C)
        val typeIdsSize = buf.getInt(0x40)
        val typeIdsOff = buf.getInt(0x44)
        val classDefsSize = buf.getInt(0x60)
        val classDefsOff = buf.getInt(0x64)
        val size = bytes.size.toLong()
        if (stringIdsSize <= 0 || typeIdsSize <= 0 || classDefsSize <= 0) return
        if (classDefsSize > MAX_CLASSES) return
        if (stringIdsOff < 0 || stringIdsOff + stringIdsSize * 4L > size) return
        if (typeIdsOff < 0 || typeIdsOff + typeIdsSize * 4L > size) return
        if (classDefsOff < 0 || classDefsOff + classDefsSize * 32L > size) return

        for (i in 0 until classDefsSize) {
            val classType = buf.getInt(classDefsOff + i * 32)
            if (classType < 0 || classType >= typeIdsSize) continue
            val stringIndex = buf.getInt(typeIdsOff + classType * 4)
            if (stringIndex < 0 || stringIndex >= stringIdsSize) continue
            var at = buf.getInt(stringIdsOff + stringIndex * 4)
            if (at < 0 || at >= bytes.size) continue
            // The text starts after its length, which is stored as a ULEB128 number.
            while (at < bytes.size && (bytes[at].toInt() and 0x80) != 0) at++
            at++
            if (at >= bytes.size) continue

            val iterator = remaining.iterator()
            while (iterator.hasNext()) {
                val needle = iterator.next()
                if (needle.prefixes.any { startsWith(bytes, at, it) }) {
                    found.add(needle.tracker)
                    iterator.remove()
                }
            }
            if (remaining.isEmpty()) return
        }
    }

    private fun startsWith(bytes: ByteArray, at: Int, prefix: ByteArray): Boolean {
        if (at + prefix.size > bytes.size) return false
        for (k in prefix.indices) {
            if (bytes[at + k] != prefix[k]) return false
        }
        return true
    }
}
