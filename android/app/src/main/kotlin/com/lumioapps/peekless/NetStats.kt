package com.lumioapps.peekless

import android.content.Context
import org.json.JSONObject

/**
 * What the network monitor has seen: for every app, the domain names it asked
 * for and how many times. Only the names are kept, never any content. It is
 * stored on the phone and can be cleared at any time.
 */
object NetStats {
    private const val PREFS = "peekless_net"
    private const val KEY = "data"
    private const val MAX_APPS = 300
    private const val MAX_DOMAINS = 300

    private val lock = Any()
    private var apps: LinkedHashMap<String, LinkedHashMap<String, Int>>? = null
    private var since = 0L
    private var dirty = false
    private var lastSave = 0L

    // The same app often asks for a name twice in a row (IPv4 and IPv6).
    private val recent = HashMap<String, Long>()

    private fun load(context: Context): LinkedHashMap<String, LinkedHashMap<String, Int>> {
        apps?.let { return it }
        val loaded = LinkedHashMap<String, LinkedHashMap<String, Int>>()
        try {
            val raw = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(KEY, null)
            if (raw != null) {
                val root = JSONObject(raw)
                since = root.optLong("since", 0L)
                val all = root.optJSONObject("apps")
                if (all != null) {
                    val packages = all.keys()
                    while (packages.hasNext()) {
                        val pkg = packages.next()
                        val domains = all.optJSONObject(pkg) ?: continue
                        val map = LinkedHashMap<String, Int>()
                        val names = domains.keys()
                        while (names.hasNext()) {
                            val name = names.next()
                            map[name] = domains.optInt(name, 1)
                        }
                        loaded[pkg] = map
                    }
                }
            }
        } catch (e: Exception) {
            loaded.clear()
        }
        apps = loaded
        return loaded
    }

    private fun toJson(data: Map<String, Map<String, Int>>): JSONObject {
        val all = JSONObject()
        for ((pkg, domains) in data) {
            val inner = JSONObject()
            for ((name, count) in domains) inner.put(name, count)
            all.put(pkg, inner)
        }
        return JSONObject().put("since", since).put("apps", all)
    }

    private fun save(context: Context, data: Map<String, Map<String, Int>>) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
            .putString(KEY, toJson(data).toString())
            .apply()
        dirty = false
        lastSave = System.currentTimeMillis()
    }

    fun add(context: Context, pkg: String, domain: String) {
        synchronized(lock) {
            val data = load(context)
            val now = System.currentTimeMillis()
            val key = "$pkg|$domain"
            val last = recent[key]
            if (last != null && now - last < 1500) return
            if (recent.size > 2000) recent.clear()
            recent[key] = now

            var map = data[pkg]
            if (map == null) {
                if (data.size >= MAX_APPS) return
                map = LinkedHashMap()
                data[pkg] = map
            }
            val count = map[domain]
            if (count != null) {
                map[domain] = count + 1
            } else if (map.size < MAX_DOMAINS) {
                map[domain] = 1
            } else {
                return
            }
            if (since == 0L) since = now
            dirty = true
            if (now - lastSave > 15_000) save(context, data)
        }
    }

    /** Writes anything that is not saved yet. */
    fun flush(context: Context) {
        synchronized(lock) {
            val data = apps ?: return
            if (dirty) save(context, data)
        }
    }

    fun report(context: Context): String {
        synchronized(lock) {
            return toJson(load(context)).toString()
        }
    }

    fun clear(context: Context) {
        synchronized(lock) {
            apps = LinkedHashMap()
            since = 0L
            recent.clear()
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().remove(KEY).apply()
            dirty = false
        }
    }
}
