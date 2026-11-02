package com.lumioapps.peekless

import android.app.PendingIntent
import android.content.Intent
import android.graphics.drawable.Icon
import android.os.Build
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import android.annotation.TargetApi

/** The Quick Settings tile. It shows the score and opens Peekless when tapped. */
@TargetApi(Build.VERSION_CODES.N)
class ScoreTileService : TileService() {
    override fun onStartListening() {
        super.onStartListening()
        refreshTile()
    }

    override fun onClick() {
        super.onClick()
        openApp()
    }

    private fun refreshTile() {
        val tile = qsTile ?: return
        val score = Glance.score(this)
        tile.label = "Peekless"
        tile.icon = Icon.createWithResource(this, Glance.res(this, "drawable", "ic_notification"))
        if (score >= 0) {
            tile.state = Tile.STATE_ACTIVE
            if (Build.VERSION.SDK_INT >= 29) {
                val label = Glance.label(this)
                tile.subtitle = if (label.isEmpty()) "$score" else "$label · $score"
            }
        } else {
            tile.state = Tile.STATE_INACTIVE
        }
        tile.updateTile()
    }

    private fun openApp() {
        val intent = packageManager.getLaunchIntentForPackage(packageName) ?: return
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        if (Build.VERSION.SDK_INT >= 34) {
            val pending = PendingIntent.getActivity(
                this,
                0,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
            startActivityAndCollapse(pending)
        } else {
            @Suppress("DEPRECATION")
            startActivityAndCollapse(intent)
        }
    }
}
