package com.lumioapps.peekless

import android.app.job.JobInfo
import android.app.job.JobScheduler
import android.content.ComponentName
import android.content.Context

/** Starts and stops the background check (about every 6 hours). */
object AlertScheduler {
    private const val JOB_ID = 4711
    private const val PERIOD_MS = 6L * 60 * 60 * 1000

    fun set(context: Context, enabled: Boolean) {
        val scheduler = context.getSystemService(Context.JOB_SCHEDULER_SERVICE) as? JobScheduler
            ?: return
        if (!enabled) {
            scheduler.cancel(JOB_ID)
            return
        }
        // Keep the existing job, so opening the app does not push its next run back.
        if (scheduler.allPendingJobs.any { it.id == JOB_ID }) return

        val job = JobInfo.Builder(JOB_ID, ComponentName(context, AlertJobService::class.java))
            .setPeriodic(PERIOD_MS)
            .setPersisted(true)
            .build()
        scheduler.schedule(job)
    }
}
