import 'package:shared_preferences/shared_preferences.dart';

import 'history.dart';
import 'native_bridge.dart';

/// The background check. Android starts it about every 6 hours when App
/// alerts are on. It scans, compares with the last snapshot and shows
/// notifications. Nothing leaves the phone.
Future<void> runBackgroundCheck() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    if (!(prefs.getBool('alerts_enabled') ?? false)) return;

    final reports = await NativeBridge.scan();
    final trusted = (prefs.getStringList('trusted_apps') ?? const <String>[]).toSet();
    final result = await HistoryStore.record(reports, trusted: trusted);

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
  } catch (_) {
    // A failed check is simply tried again at the next run.
  } finally {
    await NativeBridge.jobDone();
  }
}
