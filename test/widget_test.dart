import 'package:flutter_test/flutter_test.dart';
import 'package:peekless/models.dart';
import 'package:peekless/scoring.dart';
import 'package:peekless/updater.dart';

AppInfo _app(List<PermissionEntry> permissions, [List<String> trackers = const []]) {
  return AppInfo(
    packageName: 'com.example.app',
    name: 'Example',
    isSystem: false,
    versionName: '1.0',
    permissions: permissions,
    trackers: trackers,
  );
}

void main() {
  group('scoring', () {
    test('an app without sensitive permissions scores 100', () {
      final report = buildReport(_app(const []));
      expect(report.score, 100);
      expect(report.level, RiskLevel.safe);
    });

    test('allowed microphone, camera and background location with 4 trackers is risky', () {
      final report = buildReport(
        _app(
          const [
            PermissionEntry('android.permission.RECORD_AUDIO', true),
            PermissionEntry('android.permission.CAMERA', true),
            PermissionEntry('android.permission.ACCESS_BACKGROUND_LOCATION', true),
            PermissionEntry('android.permission.ACCESS_FINE_LOCATION', true),
          ],
          const ['Google Ads', 'Firebase Analytics', 'Facebook SDK', 'AppsFlyer'],
        ),
      );
      // 12 + 8 + 22 (location counts once) + 24 trackers = 66 -> 34
      expect(report.score, 34);
      expect(report.level, RiskLevel.risky);
    });

    test('a denied normal permission does not lower the score', () {
      final report = buildReport(
        _app(const [PermissionEntry('android.permission.RECORD_AUDIO', false)]),
      );
      expect(report.score, 100);
    });

    test('a requested special permission counts half', () {
      final report = buildReport(
        _app(const [PermissionEntry('android.permission.SYSTEM_ALERT_WINDOW', false)]),
      );
      expect(report.score, 96);
    });

    test('tracker penalty is capped at 30', () {
      final report = buildReport(
        _app(const [], const ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']),
      );
      expect(report.score, 70);
    });

    test('level thresholds', () {
      expect(levelForScore(70), RiskLevel.safe);
      expect(levelForScore(69), RiskLevel.medium);
      expect(levelForScore(40), RiskLevel.medium);
      expect(levelForScore(39), RiskLevel.risky);
    });
  });

  group('updater', () {
    test('compares versions', () {
      expect(Updater.isNewer('1.0.1', '1.0.0'), isTrue);
      expect(Updater.isNewer('1.1.0', '1.0.9'), isTrue);
      expect(Updater.isNewer('1.0.0', '1.0.0'), isFalse);
      expect(Updater.isNewer('1.0.0', '1.0.1'), isFalse);
      expect(Updater.isNewer('2.0', '1.9.9'), isTrue);
    });
  });
}
