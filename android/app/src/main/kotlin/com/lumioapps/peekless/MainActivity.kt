package com.lumioapps.peekless

import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val channelName = "app.peekless/scan"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "scanApps" -> scanApps(call, result)
                    "openAppSettings" -> openAppSettings(call, result)
                    else -> result.notImplemented()
                }
            }
    }

    private fun scanApps(call: MethodCall, result: MethodChannel.Result) {
        val raw = call.argument<Map<String, Any>>("trackers") ?: emptyMap()
        val signatures: Map<String, List<String>> = raw.mapValues { entry ->
            (entry.value as List<*>).map { it.toString() }
        }
        Thread {
            try {
                val apps = collectApps(signatures)
                runOnUiThread { result.success(apps) }
            } catch (e: Exception) {
                runOnUiThread { result.error("scan_failed", e.message ?: "Scan failed", null) }
            }
        }.start()
    }

    private fun collectApps(signatures: Map<String, List<String>>): List<Map<String, Any?>> {
        val pm = packageManager
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

            out.add(
                mapOf(
                    "package" to name,
                    "name" to pm.getApplicationLabel(appInfo).toString(),
                    "system" to isSystem,
                    "version" to (pkg.versionName ?: ""),
                    "permissions" to perms,
                    "trackers" to trackers,
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

    private fun openAppSettings(call: MethodCall, result: MethodChannel.Result) {
        val pkg = call.argument<String>("package")
        if (pkg == null) {
            result.error("bad_args", "Missing package name", null)
            return
        }
        try {
            val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:$pkg"))
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            startActivity(intent)
            result.success(true)
        } catch (e: Exception) {
            result.error("open_failed", e.message ?: "Could not open settings", null)
        }
    }
}
