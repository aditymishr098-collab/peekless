package com.lumioapps.peekless

import android.content.Context

/**
 * Optional blocking of known tracker domains. When it is on, a DNS question
 * for such a name gets an empty "this name does not exist" answer, so the app
 * cannot reach the tracker. The names come from the app (Dart) and are kept on
 * the phone. Nothing is sent anywhere.
 */
object NetBlock {
    private const val PREFS = "peekless_netblock"

    @Volatile
    private var enabled = false

    @Volatile
    private var domains: Set<String> = emptySet()

    @Volatile
    private var loaded = false

    fun load(context: Context) {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        enabled = prefs.getBoolean("enabled", false)
        domains = (prefs.getString("domains", "") ?: "")
            .split("\n")
            .map { it.trim().lowercase() }
            .filter { it.isNotEmpty() }
            .toSet()
        loaded = true
    }

    fun isEnabled(context: Context): Boolean {
        if (!loaded) load(context)
        return enabled
    }

    /** Switches blocking on or off. [list] replaces the names when it is not null. */
    fun set(context: Context, on: Boolean, list: List<String>?) {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val edit = prefs.edit().putBoolean("enabled", on)
        if (list != null) {
            val clean = list.map { it.trim().lowercase() }.filter { it.isNotEmpty() }.toSet()
            edit.putString("domains", clean.joinToString("\n"))
            domains = clean
        } else if (!loaded) {
            load(context)
        }
        edit.apply()
        enabled = on
        loaded = true
    }

    /** True when [name] is a blocked domain or ends with ".<blocked domain>". */
    fun blocks(name: String): Boolean {
        if (!enabled) return false
        val set = domains
        var current = name
        while (true) {
            if (current in set) return true
            val dot = current.indexOf('.')
            if (dot < 0) return false
            current = current.substring(dot + 1)
        }
    }

    /**
     * The answer to send for [query] when its name is blocked, or null when the
     * question should go on as usual.
     */
    fun refusal(query: ByteArray): ByteArray? {
        if (!enabled) return null
        // Only plain questions (opcode 0).
        if (query.size < 12 || (query[2].toInt() and 0x78) != 0) return null
        val question = DnsQuery.parse(query) ?: return null
        if (!blocks(question.first)) return null
        val end = DnsQuery.questionEnd(query)
        if (end < 0) return null
        val out = query.copyOfRange(0, end)
        out[2] = (0x80 or (query[2].toInt() and 0x01)).toByte() // Answer, keep "recursion desired".
        out[3] = 0x83.toByte() // Recursion available, code 3: the name does not exist.
        out[4] = 0
        out[5] = 1 // One question.
        for (i in 6..11) out[i] = 0 // No answers, no extra records.
        return out
    }
}
