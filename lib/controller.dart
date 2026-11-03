import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'history.dart';
import 'l10n/app_localizations.dart';
import 'l10n_resolve.dart';
import 'models.dart';
import 'native_bridge.dart';
import 'score_history.dart';
import 'scoring.dart';
import 'texts.dart';
import 'tracker_store.dart';

class AppController extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  /// The language chosen in Settings, or null to follow the phone.
  Locale? locale;
  bool includeSystem = false;
  bool deepScan = false;
  bool alertsEnabled = false;
  bool weeklyEnabled = false;

  /// True when the user has turned on Usage access (optional).
  bool usageAccess = false;
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

  int get overallScore => phoneScore(scored);

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
        (map[id] ??= <AppReport>[]).add(report);
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
    deepScan = prefs.getBool('deep_scan') ?? false;
    locale = localeFromCode(prefs.getString('language'));
    alertsEnabled = prefs.getBool('alerts_enabled') ?? false;
    weeklyEnabled = prefs.getBool('weekly_summary') ?? false;
    trusted = (prefs.getStringList('trusted_apps') ?? const <String>[]).toSet();
    history = await HistoryStore.loadEvents();
    trend = await ScoreHistory.load();
    await TrackerStore.ensureLoaded();
  }

  /// Gives the home screen widget and the Quick Settings tile the newest
  /// score, in the language the app uses.
  void _publishGlance() {
    if (_all.isEmpty) return;
    final level = overallLevel;
    unawaited(
      NativeBridge.updateGlance(overallScore, level.name, overallLabel(l10n, level))
          .catchError((Object _) {}),
    );
  }

  /// Downloads the newest tracker list and scans again with it.
  Future<TrackerUpdate> updateTrackerList() async {
    final result = await TrackerStore.update();
    notifyListeners();
    if (result == TrackerUpdate.updated) await scan();
    return result;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    themeMode = mode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_mode', mode.name);
  }

  /// Saves the language. Pass null to follow the phone.
  Future<void> setLocale(Locale? value) async {
    locale = value;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', value == null ? 'system' : codeFromLocale(value));
    _publishGlance();
  }

  /// The translations for the current language. Works without a BuildContext.
  AppLocalizations get l10n => l10nFor(locale);

  Future<void> setIncludeSystem(bool value) async {
    includeSystem = value;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('include_system', value);
    _publishGlance();
  }

  /// Turns the deep scan (look inside the app code) on or off and scans again.
  Future<void> setDeepScan(bool value) async {
    deepScan = value;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('deep_scan', value);
    // The deep scan finds more trackers. Start a new baseline, so that is not
    // reported as "new trackers" in Changes and in alerts.
    await HistoryStore.resetBaseline();
    unawaited(scan());
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
    _publishGlance();
  }

  /// Turns App alerts on or off. Returns a message when it could not be done.
  Future<String?> setAlertsEnabled(bool value) => _setBackground(alerts: value);

  /// Turns the Weekly summary on or off. Returns a message when it failed.
  Future<String?> setWeeklyEnabled(bool value) => _setBackground(weekly: value);

  /// The background check runs when App alerts or the Weekly summary is on.
  Future<String?> _setBackground({bool? alerts, bool? weekly}) async {
    final nextAlerts = alerts ?? alertsEnabled;
    final nextWeekly = weekly ?? weeklyEnabled;
    try {
      if (alerts == true || weekly == true) {
        final allowed = await NativeBridge.requestNotifications();
        if (!allowed) {
          return l10n.notifyDenied;
        }
      }
      await NativeBridge.setAlerts(nextAlerts || nextWeekly);
    } on PlatformException catch (e) {
      return e.message ?? l10n.settingChangeFailed;
    }
    alertsEnabled = nextAlerts;
    weeklyEnabled = nextWeekly;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('alerts_enabled', nextAlerts);
    await prefs.setBool('weekly_summary', nextWeekly);
    if (weekly == true) {
      // The first summary comes a week from now.
      await prefs.setInt('last_weekly_v1', DateTime.now().millisecondsSinceEpoch);
    }
    return null;
  }

  /// Makes sure the background check is scheduled when it is needed.
  Future<void> restoreAlerts() async {
    if (!alertsEnabled && !weeklyEnabled) return;
    try {
      await NativeBridge.setAlerts(true);
    } on PlatformException {
      // The settings stay on; the next start tries again.
    }
  }

  Future<void> _refreshUsageAccess() async {
    try {
      usageAccess = await NativeBridge.usageAccessGranted();
    } catch (_) {
      usageAccess = false;
    }
  }

  /// Called when the app comes back to the front, for example from Android
  /// settings after the user turned Usage access on or off.
  Future<void> onResume() async {
    final before = usageAccess;
    await _refreshUsageAccess();
    if (usageAccess != before) {
      await scan();
    }
  }

  Future<void> openUsageAccess() => NativeBridge.openUsageAccess();

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
      await _refreshUsageAccess();
      final reports = await NativeBridge.scan();
      reports.sort((a, b) {
        final byScore = a.score.compareTo(b.score);
        if (byScore != 0) return byScore;
        return a.app.name.toLowerCase().compareTo(b.app.name.toLowerCase());
      });
      _all = reports;
      await HistoryStore.record(reports, trusted: trusted, l: l10n);
      history = await HistoryStore.loadEvents();
      if (reports.isNotEmpty) {
        trend = await ScoreHistory.record(overallScore);
      }
    } on PlatformException {
      error = l10n.scanFailed;
    } catch (_) {
      error = l10n.scanFailed;
    }
    loading = false;
    notifyListeners();
    _publishGlance();
  }

  Future<void> openAppSettings(String packageName) =>
      NativeBridge.openAppSettings(packageName);
}

final AppController controller = AppController();
