package com.lumioapps.peekless

import android.appwidget.AppWidgetManager
import android.content.ComponentName
import android.content.Context
import android.os.Build
import android.service.quicksettings.TileService

/**
 * The newest privacy score, kept for the home screen widget and the Quick
 * Settings tile. Dart sends it after every scan. It stays on the phone.
 */
object Glance {
    private const val PREFS = "peekless_glance"

    fun save(context: Context, score: Int, level: String, label: String) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
            .putInt("score", score)
            .putString("level", level)
            .putString("label", label)
            .apply()
        refresh(context)
    }

    /** The score, or -1 when no scan has finished yet. */
    fun score(context: Context): Int =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getInt("score", -1)

    /** safe, medium or risky. */
    fun level(context: Context): String =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("level", "") ?: ""

    /** The level in the user's language, written by Dart. */
    fun label(context: Context): String =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString("label", "") ?: ""

    /** Finds a resource by name, so the code does not depend on the R class. */
    fun res(context: Context, type: String, name: String): Int =
        context.resources.getIdentifier(name, type, context.packageName)

    fun refresh(context: Context) {
        ScoreWidget.updateAll(context)
        if (Build.VERSION.SDK_INT >= 24) {
            TileService.requestListeningState(
                context,
                ComponentName(context, ScoreTileService::class.java),
            )
        }
    }

    /** Asks the launcher to pin the widget. False when the launcher cannot do it. */
    fun requestPinWidget(context: Context): Boolean {
        if (Build.VERSION.SDK_INT < 26) return false
        val manager = AppWidgetManager.getInstance(context)
        if (!manager.isRequestPinAppWidgetSupported) return false
        return manager.requestPinAppWidget(
            ComponentName(context, ScoreWidget::class.java),
            null,
            null,
        )
    }
}
