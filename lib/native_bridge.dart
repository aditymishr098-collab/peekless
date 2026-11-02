import 'package:flutter/services.dart';

import 'models.dart';
import 'scoring.dart';
import 'tracker_db.dart';

/// All calls to the Android side. It is used by the app and also by the
/// background check, which runs in a second Flutter engine.
class NativeBridge {
  static const MethodChannel _channel = MethodChannel('app.peekless/scan');

  static Future<List<AppReport>> scan() async {
    final raw = await _channel.invokeListMethod<Map<Object?, Object?>>(
      'scanApps',
      <String, Object?>{'trackers': trackerSignatures},
    );
    return (raw ?? const <Map<Object?, Object?>>[])
        .map(AppInfo.fromMap)
        .map(buildReport)
        .toList();
  }

  static Future<void> openAppSettings(String packageName) async {
    await _channel.invokeMethod<bool>(
      'openAppSettings',
      <String, Object?>{'package': packageName},
    );
  }

  static Future<bool> notificationsAllowed() async {
    return (await _channel.invokeMethod<bool>('notificationsAllowed')) ?? false;
  }

  /// Asks for the notification permission when Android needs it.
  static Future<bool> requestNotifications() async {
    return (await _channel.invokeMethod<bool>('requestNotifications')) ?? false;
  }

  /// Starts or stops the background check (about every 6 hours).
  static Future<void> setAlerts(bool enabled) async {
    await _channel.invokeMethod<void>('setAlerts', <String, Object?>{'enabled': enabled});
  }

  static Future<void> notify(int id, String title, String text) async {
    await _channel.invokeMethod<bool>(
      'notify',
      <String, Object?>{'id': id, 'title': title, 'text': text},
    );
  }

  /// Tells the background job that the check is finished.
  static Future<void> jobDone() async {
    await _channel.invokeMethod<void>('jobDone');
  }

  /// True when the user has turned on Usage access for Peekless.
  static Future<bool> usageAccessGranted() async {
    return (await _channel.invokeMethod<bool>('usageAccessGranted')) ?? false;
  }

  static Future<void> openUsageAccess() async {
    await _channel.invokeMethod<bool>('openUsageAccess');
  }

  static Future<void> shareText(String text) async {
    await _channel.invokeMethod<void>('shareText', <String, Object?>{'text': text});
  }
}
