import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models.dart';
import 'scoring.dart';
import 'tracker_store.dart';

/// All calls to the Android side. It is used by the app and also by the
/// background check, which runs in a second Flutter engine.
class NativeBridge {
  static const MethodChannel _channel = MethodChannel('app.peekless/scan');

  static Future<List<AppReport>> scan() async {
    await TrackerStore.ensureLoaded();
    // The deep scan setting is read here, so the background check always
    // scans the same way as the app. Otherwise trackers would seem to come and go.
    final prefs = await SharedPreferences.getInstance();
    final deep = prefs.getBool('deep_scan') ?? false;
    final raw = await _channel.invokeListMethod<Map<Object?, Object?>>(
      'scanApps',
      <String, Object?>{'trackers': TrackerStore.current, 'deep': deep},
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

  static Future<void> shareText(String text, String title) async {
    await _channel.invokeMethod<void>(
      'shareText',
      <String, Object?>{'text': text, 'title': title},
    );
  }

  /// Gives the widget and the Quick Settings tile the newest score.
  static Future<void> updateGlance(int score, String level, String label) async {
    await _channel.invokeMethod<void>(
      'updateGlance',
      <String, Object?>{'score': score, 'level': level, 'label': label},
    );
  }

  /// The folder for exported reports. Old exports in it are deleted first.
  static Future<String> exportsDir() async {
    return (await _channel.invokeMethod<String>('exportsDir'))!;
  }

  /// Draws the report as a PDF on the Android side, so every language and
  /// script is shown with the phone's own fonts. Returns the file path.
  static Future<String> buildPdf(Map<String, Object?> doc) async {
    return (await _channel.invokeMethod<String>('buildPdf', doc))!;
  }

  static Future<void> shareFile(String path, String mime, String title) async {
    await _channel.invokeMethod<void>(
      'shareFile',
      <String, Object?>{'path': path, 'mime': mime, 'title': title},
    );
  }

  /// Asks Android to add the Quick Settings tile. False when Android cannot ask.
  static Future<bool> requestAddTile() async {
    return (await _channel.invokeMethod<bool>('requestAddTile')) ?? false;
  }

  /// Asks Android to pin the widget to the home screen. False when it cannot.
  static Future<bool> requestAddWidget() async {
    return (await _channel.invokeMethod<bool>('requestAddWidget')) ?? false;
  }

  /// True while the network monitor (local VPN) is running.
  static Future<bool> netRunning() async {
    return (await _channel.invokeMethod<bool>('netRunning')) ?? false;
  }

  /// Starts the network monitor. Android shows its own VPN dialog the first
  /// time. False when the user said no or it could not start.
  static Future<bool> netStart() async {
    return (await _channel.invokeMethod<bool>('netStart')) ?? false;
  }

  static Future<void> netStop() async {
    await _channel.invokeMethod<void>('netStop');
  }

  /// What the monitor has seen, as JSON text. See [NetReport.parse].
  static Future<String> netReport() async {
    return (await _channel.invokeMethod<String>('netReport')) ?? '';
  }

  /// Switches blocking of tracker domains on or off. [domains] is the list to block.
  static Future<void> netSetBlock(bool enabled, List<String> domains) async {
    await _channel.invokeMethod<void>(
      'netSetBlock',
      <String, Object?>{'enabled': enabled, 'domains': domains},
    );
  }

  static Future<bool> netGetBlock() async {
    return (await _channel.invokeMethod<bool>('netGetBlock')) ?? false;
  }

  static Future<void> netClear() async {
    await _channel.invokeMethod<void>('netClear');
  }
}
