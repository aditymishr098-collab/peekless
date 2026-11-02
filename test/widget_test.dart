import 'dart:ui' show Locale;

import 'package:flutter_test/flutter_test.dart';
import 'package:peekless/app_filter.dart';
import 'package:peekless/security_checks.dart';
import 'package:peekless/fix_queue.dart';
import 'package:peekless/history.dart';
import 'package:peekless/install_source.dart';
import 'package:peekless/l10n/app_localizations.dart';
import 'package:peekless/l10n_resolve.dart';
import 'package:peekless/models.dart';
import 'package:peekless/report_text.dart';
import 'package:peekless/score_history.dart';
import 'package:peekless/scoring.dart';
import 'package:peekless/texts.dart';
import 'package:peekless/updater.dart';
import 'package:peekless/weekly.dart';

AppInfo _app(
  List<PermissionEntry> permissions, {
  List<String> trackers = const [],
  String name = 'Example',
  String packageName = 'com.example.app',
  int category = -1,
  bool isSystem = false,
  String? installer = 'com.android.vending',
  List<String> special = const [],
  bool debuggable = false,
  int targetSdk = 34,
  int? lastUsed,
  int installedAt = 0,
}) {
  return AppInfo(
    packageName: packageName,
    name: name,
    isSystem: isSystem,
    versionName: '1.0',
    permissions: permissions,
    trackers: trackers,
    category: category,
    installer: installer,
    special: special,
    debuggable: debuggable,
    targetSdk: targetSdk,
    lastUsed: lastUsed,
    installedAt: installedAt,
  );
}

const PermissionEntry _micAllowed = PermissionEntry('android.permission.RECORD_AUDIO', true);
const PermissionEntry _micDenied = PermissionEntry('android.permission.RECORD_AUDIO', false);

void main() {
  final l = lookupAppLocalizations(const Locale('en'));

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
          trackers: const ['Google Ads', 'Firebase Analytics', 'Facebook SDK', 'AppsFlyer'],
        ),
      );
      // 12 + 8 + 22 (location counts once) + 24 trackers = 66 -> 34
      expect(report.score, 34);
      expect(report.level, RiskLevel.risky);
    });

    test('a denied normal permission does not lower the score', () {
      final report = buildReport(_app(const [_micDenied]));
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
        _app(const [], trackers: const ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']),
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

  group('app kind', () {
    test('a flashlight app with a microphone gets the extra penalty', () {
      final report = buildReport(_app(const [_micAllowed], name: 'Flashlight Pro'));
      expect(report.kind, AppKind.tool);
      // 12 (microphone) + 20 (unusual for a simple tool)
      expect(report.score, 68);
      expect(report.level, RiskLevel.medium);
      expect(report.unusualGroups, ['Microphone']);
      expect(summaryFor(l, report), contains('Unusual for this type of app: Microphone'));
    });

    test('the same permission in a normal app has no extra penalty', () {
      final report = buildReport(_app(const [_micAllowed], name: 'Voice Notes'));
      expect(report.kind, AppKind.other);
      expect(report.score, 88);
    });

    test('a game that reads SMS gets the extra penalty', () {
      final report = buildReport(
        _app(
          const [PermissionEntry('android.permission.READ_SMS', true)],
          category: 0,
        ),
      );
      expect(report.kind, AppKind.game);
      // 14 (read SMS) + 20
      expect(report.score, 66);
    });

    test('the breakdown adds up to the score', () {
      final report = buildReport(
        _app(const [_micAllowed], name: 'Flashlight Pro', trackers: const ['Google Ads']),
      );
      final removed = report.breakdown.fold<int>(0, (sum, line) => sum + line.points);
      expect(100 - removed, report.score);
    });
  });

  group('changes', () {
    test('a new app creates an installed event and an alert', () {
      final report = buildReport(_app(const [_micAllowed]));
      final result = diffSnapshots(
        l: l,
        previous: const <String, SnapApp>{},
        current: [report],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.single.type, 'installed');
      expect(result.alerts.single.title, 'New app: Example');
      expect(eventText(l, result.events.single), startsWith('Installed. Score'));
    });

    test('a newly allowed sensitive permission creates an event and an alert', () {
      final before = buildReport(_app(const [_micDenied]));
      final after = buildReport(_app(const [_micAllowed]));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([before]),
        current: [after],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.map((e) => e.type), contains('allowed'));
      expect(result.alerts, hasLength(1));
    });

    test('a revoked permission creates an event but no alert', () {
      final before = buildReport(_app(const [_micAllowed]));
      final after = buildReport(_app(const [_micDenied]));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([before]),
        current: [after],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.single.type, 'revoked');
      expect(result.alerts, isEmpty);
    });

    test('a new tracker creates an event and an alert', () {
      final before = buildReport(_app(const []));
      final after = buildReport(_app(const [], trackers: const ['Google Ads']));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([before]),
        current: [after],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.single.type, 'tracker');
      expect(result.alerts, hasLength(1));
    });

    test('a trusted app gets events but no alerts', () {
      final before = buildReport(_app(const [_micDenied]));
      final after = buildReport(_app(const [_micAllowed]));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([before]),
        current: [after],
        trusted: const {'com.example.app'},
        now: 1000,
      );
      expect(result.events, isNotEmpty);
      expect(result.alerts, isEmpty);
    });

    test('an uninstalled app creates a removed event', () {
      final report = buildReport(_app(const []));
      final other = buildReport(_app(const [], name: 'Other', packageName: 'com.example.other'));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([report, other]),
        current: [report],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.single.type, 'removed');
      expect(result.events.single.appName, 'Other');
    });

    test('an unchanged app creates nothing', () {
      final report = buildReport(_app(const [_micAllowed]));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([report]),
        current: [report],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events, isEmpty);
      expect(result.alerts, isEmpty);
    });

    test('system apps are not tracked', () {
      final system = buildReport(_app(const [], isSystem: true));
      expect(snapshotOf([system]), isEmpty);
    });
  });

  group('security checks', () {
    test('accessibility access removes 20 points', () {
      final report = buildReport(_app(const [], special: const [accessibilityAccess]));
      expect(report.score, 80);
      expect(summaryFor(l, report), contains('screen'));
    });

    test('device admin and notification access add up', () {
      final report = buildReport(
        _app(const [], special: const [deviceAdminAccess, notificationAccess]),
      );
      // 15 + 10
      expect(report.score, 75);
    });

    test('a debuggable build for very old Android loses 12 points', () {
      final report = buildReport(_app(const [], debuggable: true, targetSdk: 23));
      expect(report.score, 88);
    });

    test('a target of API 26 or newer has no old-target penalty', () {
      expect(buildReport(_app(const [], targetSdk: 26)).score, 100);
      expect(buildReport(_app(const [], targetSdk: -1)).score, 100);
      expect(buildReport(_app(const [], targetSdk: 25)).score, 96);
    });

    test('the breakdown still adds up to the score', () {
      final report = buildReport(
        _app(
          const [_micAllowed],
          special: const [accessibilityAccess],
          debuggable: true,
          targetSdk: 21,
        ),
      );
      final removed = report.breakdown.fold<int>(0, (sum, line) => sum + line.points);
      expect(100 - removed, report.score);
    });
  });

  group('install source', () {
    test('stores are named and not flagged', () {
      expect(sourceLabel(l, 'com.android.vending', isSystem: false), 'Google Play');
      expect(installedOutsideStore('com.android.vending', isSystem: false), isFalse);
      expect(installedOutsideStore('org.fdroid.fdroid', isSystem: false), isFalse);
    });

    test('files, computers and unknown sources are flagged', () {
      expect(installedOutsideStore(null, isSystem: false), isTrue);
      expect(installedOutsideStore('', isSystem: false), isTrue);
      expect(installedOutsideStore('com.google.android.packageinstaller', isSystem: false), isTrue);
      expect(installedOutsideStore('com.android.shell', isSystem: false), isTrue);
      expect(sourceLabel(l, 'com.android.shell', isSystem: false), 'A computer (adb)');
    });

    test('system apps are never flagged', () {
      expect(installedOutsideStore(null, isSystem: true), isFalse);
      expect(sourceLabel(l, null, isSystem: true), 'Built into your phone');
    });

    test('an unknown installer is shown by its package name', () {
      expect(sourceLabel(l, 'com.some.store', isSystem: false), 'Installed by com.some.store');
      expect(installedOutsideStore('com.some.store', isSystem: false), isFalse);
    });
  });

  group('checks list', () {
    final reports = [
      buildReport(
        _app(const [], name: 'Sideloaded', packageName: 'com.a', installer: null, special: const [accessibilityAccess]),
      ),
      buildReport(
        _app(
          const [PermissionEntry('android.permission.INTERNET', true)],
          name: 'Store app',
          packageName: 'com.b',
        ),
      ),
      buildReport(_app(const [], name: 'System', packageName: 'com.c', installer: null, isSystem: true)),
    ];

    int count(String id) =>
        appsFor(securityChecks.firstWhere((c) => c.id == id), reports).length;

    test('counts apps per check', () {
      expect(count(accessibilityAccess), 1);
      expect(count(deviceAdminAccess), 0);
      expect(count('sideloaded'), 1);
      expect(count('debuggable'), 0);
    });

    test('offline means no internet permission', () {
      // "Sideloaded" and "System" have no INTERNET permission, "Store app" has it.
      expect(count('offline'), 2);
    });

    test('canUseInternet follows the permission', () {
      expect(_app(const []).canUseInternet, isFalse);
      expect(
        _app(const [PermissionEntry('android.permission.INTERNET', true)]).canUseInternet,
        isTrue,
      );
    });
  });

  group('special access changes', () {
    test('turning on accessibility creates an event and an alert', () {
      final before = buildReport(_app(const []));
      final after = buildReport(_app(const [], special: const [accessibilityAccess]));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([before]),
        current: [after],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.single.type, 'allowed');
      expect(eventText(l, result.events.single), 'Accessibility access turned on.');
      expect(result.alerts.single.text, contains('Now has: Accessibility access.'));
    });

    test('turning it off creates an event but no alert', () {
      final before = buildReport(_app(const [], special: const [accessibilityAccess]));
      final after = buildReport(_app(const []));
      final result = diffSnapshots(
        l: l,
        previous: snapshotOf([before]),
        current: [after],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events.single.type, 'revoked');
      expect(result.alerts, isEmpty);
    });

    test('a snapshot from an older version reports no false changes', () {
      final after = buildReport(_app(const [], special: const [accessibilityAccess]));
      final result = diffSnapshots(
        l: l,
        previous: const {
          'com.example.app': SnapApp(name: 'Example', permissions: [], trackers: []),
        },
        current: [after],
        trusted: const <String>{},
        now: 1000,
      );
      expect(result.events, isEmpty);
      expect(result.alerts, isEmpty);
    });
  });

  group('score history', () {
    const day = 86400000;

    test('a second scan on the same day replaces the first', () {
      final first = mergeScore(const [], 80, 5 * day);
      final second = mergeScore(first, 70, 5 * day + 1000);
      expect(second, hasLength(1));
      expect(second.single.score, 70);
    });

    test('a new day adds a point', () {
      final first = mergeScore(const [], 80, 5 * day);
      final second = mergeScore(first, 75, 6 * day);
      expect(second.map((p) => p.score), [80, 75]);
      expect(second.last.day, 6);
    });

    test('only the last points are kept', () {
      var list = <ScorePoint>[];
      for (var i = 0; i < 5; i++) {
        list = mergeScore(list, 50 + i, i * day, max: 3);
      }
      expect(list.map((p) => p.score), [52, 53, 54]);
    });
  });

  group('unused apps', () {
    const day = 86400000;
    const now = 1000 * day;
    const mic = PermissionEntry('android.permission.RECORD_AUDIO', true);
    final unusedCheck = securityChecks.firstWhere((c) => c.id == 'unused');

    test('days unused counts from the last use', () {
      final app = _app(const [], lastUsed: now - 90 * day, installedAt: now - 200 * day);
      expect(app.daysUnused(now), 90);
    });

    test('an app never opened counts from its install date', () {
      final app = _app(const [], lastUsed: 0, installedAt: now - 70 * day);
      expect(app.daysUnused(now), 70);
    });

    test('days unused is unknown without Usage access', () {
      expect(_app(const [], installedAt: now - 70 * day).daysUnused(now), isNull);
    });

    test('an unused app with a sensitive permission is flagged', () {
      final report = buildReport(
        _app(const [mic], lastUsed: now - 90 * day, installedAt: now - 200 * day),
      );
      expect(appsFor(unusedCheck, [report], now: now), hasLength(1));
    });

    test('an unused app without sensitive access is not flagged', () {
      final report = buildReport(
        _app(const [], lastUsed: now - 90 * day, installedAt: now - 200 * day),
      );
      expect(appsFor(unusedCheck, [report], now: now), isEmpty);
    });

    test('a recently used app is not flagged', () {
      final report = buildReport(
        _app(const [mic], lastUsed: now - 3 * day, installedAt: now - 200 * day),
      );
      expect(appsFor(unusedCheck, [report], now: now), isEmpty);
    });

    test('without Usage access nothing is flagged', () {
      final report = buildReport(_app(const [mic], installedAt: now - 200 * day));
      expect(appsFor(unusedCheck, [report], now: now), isEmpty);
    });
  });

  group('fix wizard', () {
    test('the queue holds apps with sensitive access only', () {
      final risky = buildReport(
        _app(const [_micAllowed], name: 'Voice Notes', packageName: 'com.a'),
      );
      final quiet = buildReport(_app(const [], name: 'Quiet', packageName: 'com.b'));
      final special = buildReport(
        _app(const [], name: 'Helper', packageName: 'com.c', special: const [accessibilityAccess]),
      );
      final system = buildReport(
        _app(const [_micAllowed], name: 'Sys', packageName: 'com.d', isSystem: true),
      );
      final queue = wizardQueue([risky, quiet, special, system]);
      expect(queue.map((r) => r.app.packageName), ['com.a', 'com.c']);
    });

    test('issues explain what the app can do', () {
      final report = buildReport(
        _app(const [_micAllowed], special: const [notificationAccess]),
      );
      final issues = issuesFor(l, report, now: 1000);
      expect(issues.any((l) => l.startsWith('Notification access')), isTrue);
      expect(issues.any((l) => l.contains('record audio')), isTrue);
    });
  });

  group('app filters', () {
    final withTrackers = buildReport(
      _app(const [], trackers: const ['Google Ads'], packageName: 'com.t'),
    );
    final sideloaded = buildReport(_app(const [], installer: null, packageName: 'com.s'));
    final risky = buildReport(
      _app(
        const [
          PermissionEntry('android.permission.RECORD_AUDIO', true),
          PermissionEntry('android.permission.ACCESS_BACKGROUND_LOCATION', true),
          PermissionEntry('android.permission.READ_SMS', true),
        ],
        trackers: const ['a', 'b', 'c', 'd'],
        packageName: 'com.r',
      ),
    );

    test('risk filters follow the level', () {
      expect(filterMatches(AppFilter.risky, risky, const {}), isTrue);
      expect(filterMatches(AppFilter.safe, risky, const {}), isFalse);
      expect(filterMatches(AppFilter.safe, sideloaded, const {}), isTrue);
    });

    test('tracker, store and trusted filters', () {
      expect(filterMatches(AppFilter.trackers, withTrackers, const {}), isTrue);
      expect(filterMatches(AppFilter.trackers, sideloaded, const {}), isFalse);
      expect(filterMatches(AppFilter.sideloaded, sideloaded, const {}), isTrue);
      expect(filterMatches(AppFilter.sideloaded, withTrackers, const {}), isFalse);
      expect(filterMatches(AppFilter.trusted, withTrackers, const {'com.t'}), isTrue);
      expect(filterMatches(AppFilter.trusted, withTrackers, const {}), isFalse);
    });

    test('all matches everything', () {
      expect(filterMatches(AppFilter.all, risky, const {}), isTrue);
    });
  });

  group('weekly summary', () {
    const day = 86400000;
    const now = 100 * day;

    ChangeEvent event(String type, int daysAgo) => ChangeEvent(
          time: now - daysAgo * day,
          type: type,
          packageName: 'com.x',
          appName: 'X',
        );

    test('is due after seven days', () {
      expect(weeklyDue(now - 7 * day, now), isTrue);
      expect(weeklyDue(now - 6 * day, now), isFalse);
    });

    test('shows the score change and the changes of the week', () {
      final summary = buildWeeklySummary(
        l,
        score: 82,
        trend: const [ScorePoint(92, 79), ScorePoint(100, 82)],
        events: [event('installed', 1), event('installed', 2), event('tracker', 3), event('allowed', 30)],
        nowMillis: now,
        risky: 2,
      );
      expect(summary.text, contains('Score 82/100, up 3 since last week.'));
      expect(summary.text, contains('This week: New apps: 2, New trackers: 1.'));
      expect(summary.text, contains('Risky apps: 2.'));
    });

    test('says so when nothing changed', () {
      final summary = buildWeeklySummary(
        l,
        score: 90,
        trend: const [],
        events: const [],
        nowMillis: now,
        risky: 0,
      );
      expect(summary.text, 'Score 90/100. No changes this week.');
    });

    test('phoneScore averages the apps and is 100 for none', () {
      expect(phoneScore(const []), 100);
      final a = buildReport(_app(const []));
      final b = buildReport(_app(const [_micAllowed]));
      expect(phoneScore([a, b]), 94);
    });
  });

  group('languages', () {
    test('every language loads and fills in numbers', () {
      for (final locale in AppLocalizations.supportedLocales) {
        final t = lookupAppLocalizations(locale);
        expect(t.navHome, isNotEmpty, reason: '$locale');
        expect(t.homeAppsChecked(7), contains('7'), reason: '$locale');
        expect(t.weeklyUp(80, 3), allOf(contains('80'), contains('3')), reason: '$locale');
      }
    });

    test('there are at least 25 languages', () {
      expect(AppLocalizations.supportedLocales.length, greaterThanOrEqualTo(25));
    });

    test('a language code becomes a locale and back', () {
      expect(localeFromCode('de'), const Locale('de'));
      expect(localeFromCode('system'), isNull);
      final hant = localeFromCode('zh_Hant')!;
      expect(hant.languageCode, 'zh');
      expect(hant.scriptCode, 'Hant');
      expect(codeFromLocale(hant), 'zh_Hant');
    });

    test('an unknown language falls back to English', () {
      final picked = resolveLocales(
        const [Locale('sv')],
        AppLocalizations.supportedLocales,
      );
      expect(picked.languageCode, 'en');
    });

    test('events saved by older versions still show their English text', () {
      const old = ChangeEvent(
        time: 1,
        type: 'allowed',
        packageName: 'com.x',
        appName: 'X',
        legacyText: 'Now allowed: Microphone.',
      );
      expect(eventText(l, old), 'Now allowed: Microphone.');
      final round = ChangeEvent.fromJson(old.toJson());
      expect(round.legacyText, 'Now allowed: Microphone.');
    });

    test('permission names come from the translations', () {
      final report = buildReport(_app(const [_micAllowed]));
      expect(metaFor(l, report), 'Microphone');
      expect(
        lineLabel(l, report.breakdown.first),
        'Microphone',
      );
    });
  });

  group('report text', () {
    test('lists the score and the apps that need attention', () {
      final risky = buildReport(
        _app(
          const [
            PermissionEntry('android.permission.RECORD_AUDIO', true),
            PermissionEntry('android.permission.ACCESS_BACKGROUND_LOCATION', true),
          ],
          trackers: const ['Google Ads', 'Facebook SDK', 'AppsFlyer'],
          name: 'Flashlight Pro',
        ),
      );
      final text = buildReportText(l, [risky], 62, RiskLevel.medium);
      expect(text, contains('Score: 62/100 (Medium risk)'));
      expect(text, contains('Flashlight Pro'));
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
