package com.lumioapps.peekless

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.widget.RemoteViews

/** A small home screen widget with the privacy score. Tap it to open Peekless. */
class ScoreWidget : AppWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
    ) {
        for (id in appWidgetIds) {
            appWidgetManager.updateAppWidget(id, build(context))
        }
    }

    companion object {
        fun updateAll(context: Context) {
            val manager = AppWidgetManager.getInstance(context)
            val ids = manager.getAppWidgetIds(ComponentName(context, ScoreWidget::class.java))
            for (id in ids) {
                manager.updateAppWidget(id, build(context))
            }
        }

        private fun build(context: Context): RemoteViews {
            val views = RemoteViews(context.packageName, Glance.res(context, "layout", "widget_score"))
            val score = Glance.score(context)
            val name = when (Glance.level(context)) {
                "safe" -> "widget_bg_safe"
                "medium" -> "widget_bg_medium"
                "risky" -> "widget_bg_risky"
                else -> "widget_bg_none"
            }
            val root = Glance.res(context, "id", "widget_root")
            views.setInt(root, "setBackgroundResource", Glance.res(context, "drawable", name))
            views.setTextViewText(
                Glance.res(context, "id", "widget_score"),
                if (score >= 0) score.toString() else "–",
            )
            views.setTextViewText(Glance.res(context, "id", "widget_label"), Glance.label(context))

            val launch = context.packageManager.getLaunchIntentForPackage(context.packageName)
            if (launch != null) {
                val pending = PendingIntent.getActivity(
                    context,
                    0,
                    launch,
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
                )
                views.setOnClickPendingIntent(root, pending)
            }
            return views
        }
    }
}
