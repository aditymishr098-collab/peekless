package com.lumioapps.peekless

import android.app.job.JobParameters
import android.app.job.JobService
import android.os.Handler
import android.os.Looper
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugins.GeneratedPluginRegistrant

/**
 * Runs the background check. It starts a Flutter engine without a screen,
 * runs `backgroundMain` from lib/main.dart, and stops when Dart reports that
 * it is done.
 */
class AlertJobService : JobService() {
    private val handler = Handler(Looper.getMainLooper())
    private var engine: FlutterEngine? = null
    private var channel: PeeklessChannel? = null
    private var timeout: Runnable? = null

    override fun onStartJob(params: JobParameters?): Boolean {
        if (params == null) return false

        val flutterEngine = FlutterEngine(applicationContext)
        engine = flutterEngine
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        channel = PeeklessChannel(
            context = applicationContext,
            messenger = flutterEngine.dartExecutor.binaryMessenger,
            onJobDone = { finish(params) },
        )

        val bundlePath = FlutterInjector.instance().flutterLoader().findAppBundlePath()
        flutterEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(bundlePath, "backgroundMain"),
        )

        // Safety net: never keep the engine alive for more than two minutes.
        val stop = Runnable { finish(params) }
        timeout = stop
        handler.postDelayed(stop, 120_000L)
        return true
    }

    override fun onStopJob(params: JobParameters?): Boolean {
        teardown()
        return true
    }

    private fun finish(params: JobParameters) {
        if (engine == null) return
        teardown()
        jobFinished(params, false)
    }

    private fun teardown() {
        timeout?.let { handler.removeCallbacks(it) }
        timeout = null
        channel?.dispose()
        channel = null
        engine?.destroy()
        engine = null
    }
}
