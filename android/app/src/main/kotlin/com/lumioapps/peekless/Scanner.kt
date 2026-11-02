package com.lumioapps.peekless

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.os.Build

/** Reads every installed app: permissions, category and known trackers. */
object Scanner {
    fun collect(context: Context, signatures: Map<String, List<String>>): List<Map<String, Any?>> {
        val pm = context.packageManager
        val flags = PackageManager.GET_PERMISSIONS or
            PackageManager.GET_ACTIVITIES or
            PackageManager.GET_SERVICES or
            PackageManager.GET_RECEIVERS or
            PackageManager.GET_PROVIDERS
        val out = ArrayList<Map<String, Any?>>()

        // Package details are read one app at a time. Reading everything in a
        // single call can fail with TransactionTooLargeException.
        for (name in installedNames(pm)) {
            val pkg = packageInfo(pm, name, flags) ?: continue
            val appInfo = pkg.applicationInfo ?: continue

            val isSystem = (appInfo.flags and ApplicationInfo.FLAG_SYSTEM) != 0 &&
                (appInfo.flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) == 0
            // Skip background-only system packages that have no launcher icon.
            if (isSystem && pm.getLaunchIntentForPackage(name) == null) continue

            val perms = ArrayList<Map<String, Any>>()
            val requested = pkg.requestedPermissions
            val requestedFlags = pkg.requestedPermissionsFlags
            if (requested != null) {
                for (i in requested.indices) {
                    val granted = requestedFlags != null &&
                        i < requestedFlags.size &&
                        (requestedFlags[i] and PackageInfo.REQUESTED_PERMISSION_GRANTED) != 0
                    perms.add(mapOf("name" to requested[i], "granted" to granted))
                }
            }

            val components = ArrayList<String>()
            pkg.activities?.forEach { components.add(it.name) }
            pkg.services?.forEach { components.add(it.name) }
            pkg.receivers?.forEach { components.add(it.name) }
            pkg.providers?.forEach { components.add(it.name) }

            val trackers = ArrayList<String>()
            for ((tracker, prefixes) in signatures) {
                if (components.any { component -> prefixes.any { prefix -> component.startsWith(prefix) } }) {
                    trackers.add(tracker)
                }
            }

            val category = if (Build.VERSION.SDK_INT >= 26) appInfo.category else -1

            out.add(
                mapOf(
                    "package" to name,
                    "name" to pm.getApplicationLabel(appInfo).toString(),
                    "system" to isSystem,
                    "version" to (pkg.versionName ?: ""),
                    "permissions" to perms,
                    "trackers" to trackers,
                    "category" to category,
                ),
            )
        }
        return out
    }

    @Suppress("DEPRECATION")
    private fun installedNames(pm: PackageManager): List<String> {
        val list: List<PackageInfo> = if (Build.VERSION.SDK_INT >= 33) {
            pm.getInstalledPackages(PackageManager.PackageInfoFlags.of(0L))
        } else {
            pm.getInstalledPackages(0)
        }
        return list.map { it.packageName }
    }

    @Suppress("DEPRECATION")
    private fun packageInfo(pm: PackageManager, name: String, flags: Int): PackageInfo? {
        return try {
            if (Build.VERSION.SDK_INT >= 33) {
                pm.getPackageInfo(name, PackageManager.PackageInfoFlags.of(flags.toLong()))
            } else {
                pm.getPackageInfo(name, flags)
            }
        } catch (e: Exception) {
            null
        }
    }
}
