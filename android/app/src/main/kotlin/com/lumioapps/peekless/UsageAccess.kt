package com.lumioapps.peekless

import android.app.AppOpsManager
import android.app.usage.UsageStatsManager
import android.content.Context
import android.os.Build
import android.os.Process

/**
 * Optional "Usage access". When the user turns it on in Android settings,
 * Peekless can see when each app was last opened. The data stays on the phone.
 */
object UsageAccess {
    private const val WINDOW_MS = 180L * 24 * 60 * 60 * 1000

    @Suppress("DEPRECATION")
    fun granted(context: Context): Boolean {
        val ops = context.getSystemService(Context.APP_OPS_SERVICE) as? AppOpsManager ?: return false
        return try {
            val mode = if (Build.VERSION.SDK_INT >= 29) {
                ops.unsafeCheckOpNoThrow(
                    AppOpsManager.OPSTR_GET_USAGE_STATS,
                    Process.myUid(),
                    context.packageName,
                )
            } else {
                ops.checkOpNoThrow(
                    AppOpsManager.OPSTR_GET_USAGE_STATS,
                    Process.myUid(),
                    context.packageName,
                )
            }
            mode == AppOpsManager.MODE_ALLOWED
        } catch (e: Exception) {
            false
        }
    }

    /**
     * Package name -> time it was last opened (milliseconds), over the last
     * 180 days. Null when access is off or Android returns nothing.
     */
    fun lastUsed(context: Context): Map<String, Long>? {
        if (!granted(context)) return null
        return try {
            val manager = context.getSystemService(Context.USAGE_STATS_SERVICE) as? UsageStatsManager
                ?: return null
            val now = System.currentTimeMillis()
            val stats = manager.queryUsageStats(UsageStatsManager.INTERVAL_BEST, now - WINDOW_MS, now)
            if (stats.isNullOrEmpty()) return null
            val out = HashMap<String, Long>()
            for (stat in stats) {
                val last = stat.lastTimeUsed
                if (last > (out[stat.packageName] ?: 0L)) out[stat.packageName] = last
            }
            out
        } catch (e: Exception) {
            null
        }
    }
}
