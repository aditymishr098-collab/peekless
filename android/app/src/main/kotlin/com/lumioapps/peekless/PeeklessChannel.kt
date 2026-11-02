package com.lumioapps.peekless

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/**
 * The channel between Dart and Android. The same class serves the app screen
 * (MainActivity) and the background job (AlertJobService).
 */
class PeeklessChannel(
    private val context: Context,
    messenger: BinaryMessenger,
    private val activity: Activity? = null,
    private val requestNotifications: ((MethodChannel.Result) -> Unit)? = null,
    private val onJobDone: (() -> Unit)? = null,
) : MethodChannel.MethodCallHandler {
    private val channel = MethodChannel(messenger, "app.peekless/scan")
    private val main = Handler(Looper.getMainLooper())

    init {
        channel.setMethodCallHandler(this)
    }

    fun dispose() {
        channel.setMethodCallHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "scanApps" -> scanApps(call, result)
            "openAppSettings" -> openAppSettings(call, result)
            "notificationsAllowed" -> result.success(Notifier.allowed(context))
            "requestNotifications" -> {
                val request = requestNotifications
                if (request != null) {
                    request(result)
                } else {
                    result.success(Notifier.allowed(context))
                }
            }
            "setAlerts" -> setAlerts(call, result)
            "notify" -> {
                val id = call.argument<Int>("id") ?: 0
                val title = call.argument<String>("title") ?: ""
                val text = call.argument<String>("text") ?: ""
                Notifier.show(context, id, title, text)
                result.success(true)
            }
            "jobDone" -> {
                result.success(null)
                // Stop the engine after the reply has been sent.
                main.post { onJobDone?.invoke() }
            }
            "shareText" -> shareText(call, result)
            "usageAccessGranted" -> result.success(UsageAccess.granted(context))
            "openUsageAccess" -> openUsageAccess(result)
            else -> result.notImplemented()
        }
    }

    private fun scanApps(call: MethodCall, result: MethodChannel.Result) {
        val raw = call.argument<Map<String, Any>>("trackers") ?: emptyMap()
        val signatures: Map<String, List<String>> = raw.mapValues { entry ->
            (entry.value as List<*>).map { it.toString() }
        }
        Thread {
            try {
                val apps = Scanner.collect(context, signatures)
                main.post { result.success(apps) }
            } catch (e: Exception) {
                main.post { result.error("scan_failed", e.message ?: "Scan failed", null) }
            }
        }.start()
    }

    private fun setAlerts(call: MethodCall, result: MethodChannel.Result) {
        val enabled = call.argument<Boolean>("enabled") ?: false
        try {
            AlertScheduler.set(context, enabled)
            result.success(null)
        } catch (e: Exception) {
            result.error("alerts_failed", e.message ?: "Could not change alerts", null)
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
            context.startActivity(intent)
            result.success(true)
        } catch (e: Exception) {
            result.error("open_failed", e.message ?: "Could not open settings", null)
        }
    }

    private fun openUsageAccess(result: MethodChannel.Result) {
        try {
            val intent = Intent(Settings.ACTION_USAGE_ACCESS_SETTINGS)
            if (activity == null) intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            (activity ?: context).startActivity(intent)
            result.success(true)
        } catch (e: Exception) {
            result.error("open_failed", e.message ?: "Could not open settings", null)
        }
    }

    private fun shareText(call: MethodCall, result: MethodChannel.Result) {
        val text = call.argument<String>("text")
        if (text == null) {
            result.error("bad_args", "Missing text", null)
            return
        }
        try {
            val send = Intent(Intent.ACTION_SEND)
            send.type = "text/plain"
            send.putExtra(Intent.EXTRA_TEXT, text)
            val chooser = Intent.createChooser(send, "Share report")
            if (activity == null) chooser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            (activity ?: context).startActivity(chooser)
            result.success(null)
        } catch (e: Exception) {
            result.error("share_failed", e.message ?: "Could not share", null)
        }
    }
}
