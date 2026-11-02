import 'package:shared_preferences/shared_preferences.dart';

import 'history.dart';
import 'native_bridge.dart';
import 'score_history.dart';
import 'scoring.dart';
import 'models.dart';
import 'weekly.dart';

/// The background check. Android starts it about every 6 hours when App
/// alerts or the Weekly summary are on. It scans, compares with the last
/// snapshot and shows notifications. Nothing leaves the phone.
Future<void> runBackgroundCheck() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final alertsOn = prefs.getBool('alerts_enabled') ?? false;
    final weeklyOn = prefs.getBool('weekly_summary') ?? false;
    if (!alertsOn && !weeklyOn) return;

    final reports = await NativeBridge.scan();
    final trusted = (prefs.getStringList('trusted_apps') ?? const <String>[]).toSet();
    final result = await HistoryStore.record(reports, trusted: trusted);

    // Keep the score trend up to date, even when the app is not opened.
    final includeSystem = prefs.getBool('include_system') ?? false;
    final scored = reports
        .where((r) => (includeSystem || !r.app.isSystem) && !trusted.contains(r.app.packageName))
        .toList();
    final score = phoneScore(scored);
    var trend = const <ScorePoint>[];
    if (reports.isNotEmpty) {
      trend = await ScoreHistory.record(score);
    }

    if (alertsOn) {
      final alerts = result.alerts;
      for (final alert in alerts.take(3)) {
        await NativeBridge.notify(alert.id, alert.title, alert.text);
      }
      if (alerts.length > 3) {
        await NativeBridge.notify(
          1,
          'More changes',
          '${alerts.length - 3} more changes. Open Peekless to see them.',
        );
      }
    }

    if (weeklyOn && reports.isNotEmpty) {
      await prefs.reload();
      final now = DateTime.now().millisecondsSinceEpoch;
      final last = prefs.getInt('last_weekly_v1');
      if (last == null) {
        await prefs.setInt('last_weekly_v1', now);
      } else if (weeklyDue(last, now)) {
        final events = await HistoryStore.loadEvents();
        final summary = buildWeeklySummary(
          score: score,
          trend: trend,
          events: events,
          nowMillis: now,
          risky: scored.where((r) => r.level == RiskLevel.risky).length,
        );
        await NativeBridge.notify(2, summary.title, summary.text);
        await prefs.setInt('last_weekly_v1', now);
      }
    }
  } catch (_) {
    // A failed check is simply tried again at the next run.
  } finally {
    await NativeBridge.jobDone();
  }
}
