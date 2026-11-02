package com.lumioapps.peekless

import android.Manifest
import android.content.pm.PackageManager
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val notificationRequestCode = 4242
    private var channel: PeeklessChannel? = null
    private var pendingNotificationResult: MethodChannel.Result? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        channel = PeeklessChannel(
            context = applicationContext,
            messenger = flutterEngine.dartExecutor.binaryMessenger,
            activity = this,
            requestNotifications = { result -> askForNotifications(result) },
        )
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        channel?.dispose()
        channel = null
        super.cleanUpFlutterEngine(flutterEngine)
    }

    private fun askForNotifications(result: MethodChannel.Result) {
        if (Notifier.allowed(this)) {
            result.success(true)
            return
        }
        // Below Android 13 there is no permission to ask for. Notifications are
        // switched off in the phone settings, so there is nothing more to do here.
        if (Build.VERSION.SDK_INT < 33) {
            result.success(false)
            return
        }
        pendingNotificationResult?.success(false)
        pendingNotificationResult = result
        requestPermissions(arrayOf(Manifest.permission.POST_NOTIFICATIONS), notificationRequestCode)
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray,
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode == notificationRequestCode) {
            val granted = grantResults.isNotEmpty() &&
                grantResults[0] == PackageManager.PERMISSION_GRANTED
            pendingNotificationResult?.success(granted && Notifier.allowed(this))
            pendingNotificationResult = null
        }
    }
}
