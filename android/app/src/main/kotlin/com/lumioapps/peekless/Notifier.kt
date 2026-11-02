package com.lumioapps.peekless

import android.Manifest
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build

/** Shows the App alerts notifications. */
object Notifier {
    private const val CHANNEL_ID = "peekless_alerts"

    fun allowed(context: Context): Boolean {
        if (Build.VERSION.SDK_INT >= 33 &&
            context.checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) !=
            PackageManager.PERMISSION_GRANTED
        ) {
            return false
        }
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as? NotificationManager
            ?: return false
        return if (Build.VERSION.SDK_INT >= 24) manager.areNotificationsEnabled() else true
    }

    fun show(context: Context, id: Int, title: String, text: String) {
        if (!allowed(context)) return
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as? NotificationManager
            ?: return

        if (Build.VERSION.SDK_INT >= 26) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "App alerts",
                NotificationManager.IMPORTANCE_DEFAULT,
            )
            channel.description = "New apps and permission changes"
            manager.createNotificationChannel(channel)
        }

        val builder: Notification.Builder = if (Build.VERSION.SDK_INT >= 26) {
            Notification.Builder(context, CHANNEL_ID)
        } else {
            legacyBuilder(context)
        }

        val icon = context.resources.getIdentifier("ic_notification", "drawable", context.packageName)
        builder
            .setSmallIcon(if (icon != 0) icon else android.R.drawable.ic_dialog_info)
            .setContentTitle(title)
            .setContentText(text)
            .setStyle(Notification.BigTextStyle().bigText(text))
            .setAutoCancel(true)

        val launch = context.packageManager.getLaunchIntentForPackage(context.packageName)
        if (launch != null) {
            val pending = PendingIntent.getActivity(
                context,
                0,
                launch,
                PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT,
            )
            builder.setContentIntent(pending)
        }

        manager.notify(id, builder.build())
    }

    @Suppress("DEPRECATION")
    private fun legacyBuilder(context: Context): Notification.Builder = Notification.Builder(context)
}
