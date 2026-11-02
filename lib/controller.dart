import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'history.dart';
import 'models.dart';
import 'native_bridge.dart';
import 'score_history.dart';
import 'scoring.dart';

class AppController extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool includeSystem = false;
  bool alertsEnabled = false;
  Set<String> trusted = <String>{};
  List<ChangeEvent> history = const <ChangeEvent>[];

  /// The phone score, one point per day, for the trend chart.
  List<ScorePoint> trend = const <ScorePoint>[];
  bool loading = true;
  String? error;
  List<AppReport> _all = const [];

  /// Apps that are currently shown, riskiest first.
  List<AppReport> get reports =>
      includeSystem ? _all : _all.where((r) => !r.app.isSystem).toList();

  /// Apps that count for the score and the Risky/Medium/Safe numbers.
  /// Trusted apps are left out.
  List<AppReport> get scored =>
      reports.where((r) => !trusted.contains(r.app.packageName)).toList();

  int get overallScore {
    final list = scored;
    if (list.isEmpty) return 100;
    final sum = list.fold<int>(0, (total, r) => total + r.score);
    return (sum / list.length).round();
  }

  RiskLevel get overallLevel => levelForScore(overallScore);

  int countOf(RiskLevel level) => scored.where((r) => r.level == level).length;

  bool isTrusted(String packageName) => trusted.contains(packageName);

  /// Permission group -> apps that can use it, largest group first.
  Map<String, List<AppReport>> appsByPermissionGroup() {
    final map = <String, List<AppReport>>{};
    for (final report in reports) {
      final seen = <String>{};
      for (final finding in report.findings) {
        if (finding.active && seen.add(finding.rule.group)) {
          (map[finding.rule.group] ??= <AppReport>[]).add(report);
        }
      }
      for (final id in report.app.special) {
        if (!specialPoints.containsKey(id)) continue;
        (map[specialLabel(id)] ??= <AppReport>[]).add(report);
      }
    }
    final entries = map.entries.toList()
      ..sort((a, b) => b.value.length.compareTo(a.value.length));
    return Map<String, List<AppReport>>.fromEntries(entries);
  }

  /// Tracker name -> apps that contain it, most common tracker first.
  Map<String, List<AppReport>> appsByTracker() {
    final map = <String, List<AppReport>>{};
    for (final report in reports) {
      for (final tracker in report.app.trackers) {
        (map[tracker] ??= <AppReport>[]).add(report);
      }
    }
    final entries = map.entries.toList()
      ..sort((a, b) {
        final byCount = b.value.length.compareTo(a.value.length);
        if (byCount != 0) return byCount;
        return a.key.toLowerCase().compareTo(b.key.toLowerCase());
      });
    return Map<String, List<AppReport>>.fromEntries(entries);
  }

  Future<void> loadPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    themeMode = switch (prefs.getString('theme_mode')) {
      'light' => ThemeMode.light,
      'dark' => ThemeMode.dark,
      _ => ThemeMode.system,
    };
    includeSystem = prefs.getBool('include_system') ?? false;
    alertsEnabled = prefs.getBool('alerts_enabled') ?? false;
    trusted = (prefs.getStringList('trusted_apps') ?? const <String>[]).toSet();
    history = await HistoryStore.loadEvents();
    trend = await ScoreHistory.load();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    themeMode = mode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_mode', mode.name);
  }

  Future<void> setIncludeSystem(bool value) async {
    includeSystem = value;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('include_system', value);
  }

  Future<void> setTrusted(String packageName, bool value) async {
    final next = Set<String>.of(trusted);
    if (value) {
      next.add(packageName);
    } else {
      next.remove(packageName);
    }
    trusted = next;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('trusted_apps', trusted.toList());
  }

  /// Turns App alerts on or off. Returns a message when it could not be done.
  Future<String?> setAlertsEnabled(bool value) async {
    try {
      if (value) {
        final allowed = await NativeBridge.requestNotifications();
        if (!allowed) {
          return 'Allow notifications for Peekless to turn on alerts.';
        }
        await NativeBridge.setAlerts(true);
      } else {
        await NativeBridge.setAlerts(false);
      }
    } on PlatformException catch (e) {
      return e.message ?? 'Could not change alerts.';
    }
    alertsEnabled = value;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('alerts_enabled', value);
    return null;
  }

  /// Makes sure the background check is scheduled when alerts are on.
  Future<void> restoreAlerts() async {
    if (!alertsEnabled) return;
    try {
      await NativeBridge.setAlerts(true);
    } on PlatformException {
      // Alerts stay on in settings; the next start tries again.
    }
  }

  Future<void> clearHistory() async {
    await HistoryStore.clearEvents();
    history = const <ChangeEvent>[];
    notifyListeners();
  }

  Future<void> scan() async {
    loading = true;
    error = null;
    notifyListeners();
    try {
      final reports = await NativeBridge.scan();
      reports.sort((a, b) {
        final byScore = a.score.compareTo(b.score);
        if (byScore != 0) return byScore;
        return a.app.name.toLowerCase().compareTo(b.app.name.toLowerCase());
      });
      _all = reports;
      await HistoryStore.record(reports, trusted: trusted);
      history = await HistoryStore.loadEvents();
      if (reports.isNotEmpty) {
        trend = await ScoreHistory.record(overallScore);
      }
    } on PlatformException catch (e) {
      error = e.message ?? 'Scan failed';
    } catch (_) {
      error = 'Scan failed';
    }
    loading = false;
    notifyListeners();
  }

  Future<void> openAppSettings(String packageName) =>
      NativeBridge.openAppSettings(packageName);
}

final AppController controller = AppController();
