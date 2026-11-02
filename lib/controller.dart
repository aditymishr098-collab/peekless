import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models.dart';
import 'scoring.dart';
import 'tracker_db.dart';

class AppController extends ChangeNotifier {
  static const MethodChannel _channel = MethodChannel('app.peekless/scan');

  ThemeMode themeMode = ThemeMode.system;
  bool includeSystem = false;
  bool loading = true;
  String? error;
  List<AppReport> _all = const [];

  /// Apps that are currently shown, riskiest first.
  List<AppReport> get reports =>
      includeSystem ? _all : _all.where((r) => !r.app.isSystem).toList();

  int get overallScore {
    final list = reports;
    if (list.isEmpty) return 100;
    final sum = list.fold<int>(0, (total, r) => total + r.score);
    return (sum / list.length).round();
  }

  RiskLevel get overallLevel => levelForScore(overallScore);

  int countOf(RiskLevel level) => reports.where((r) => r.level == level).length;

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
    }
    final entries = map.entries.toList()
      ..sort((a, b) => b.value.length.compareTo(a.value.length));
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

  Future<void> scan() async {
    loading = true;
    error = null;
    notifyListeners();
    try {
      final raw = await _channel.invokeListMethod<Map<Object?, Object?>>(
        'scanApps',
        <String, Object?>{'trackers': trackerSignatures},
      );
      final reports = (raw ?? const <Map<Object?, Object?>>[])
          .map(AppInfo.fromMap)
          .map(buildReport)
          .toList()
        ..sort((a, b) {
          final byScore = a.score.compareTo(b.score);
          if (byScore != 0) return byScore;
          return a.app.name.toLowerCase().compareTo(b.app.name.toLowerCase());
        });
      _all = reports;
    } on PlatformException catch (e) {
      error = e.message ?? 'Scan failed';
    } catch (_) {
      error = 'Scan failed';
    }
    loading = false;
    notifyListeners();
  }

  Future<void> openAppSettings(String packageName) async {
    await _channel.invokeMethod<bool>(
      'openAppSettings',
      <String, Object?>{'package': packageName},
    );
  }
}

final AppController controller = AppController();
