import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'scoring.dart';

/// One entry in the Changes list.
class ChangeEvent {
  const ChangeEvent({
    required this.time,
    required this.type,
    required this.packageName,
    required this.appName,
    required this.text,
  });

  factory ChangeEvent.fromJson(Map<String, dynamic> json) {
    return ChangeEvent(
      time: json['t'] as int,
      type: json['y'] as String,
      packageName: json['p'] as String,
      appName: json['n'] as String,
      text: json['x'] as String,
    );
  }

  /// Milliseconds since epoch.
  final int time;

  /// One of: installed, removed, allowed, revoked, tracker.
  final String type;
  final String packageName;
  final String appName;
  final String text;

  Map<String, Object?> toJson() => {
        't': time,
        'y': type,
        'p': packageName,
        'n': appName,
        'x': text,
      };
}

/// A notification that the background check wants to show.
class AlertItem {
  const AlertItem(this.id, this.title, this.text);

  final int id;
  final String title;
  final String text;
}

/// What Peekless remembers about an app between two scans.
class SnapApp {
  const SnapApp({
    required this.name,
    required this.permissions,
    required this.trackers,
  });

  final String name;

  /// Ids of the permissions that were active (allowed, or special and requested).
  final List<String> permissions;
  final List<String> trackers;
}

class DiffResult {
  const DiffResult(this.events, this.alerts);

  static const DiffResult empty = DiffResult(<ChangeEvent>[], <AlertItem>[]);

  final List<ChangeEvent> events;
  final List<AlertItem> alerts;
}

/// Only apps the user installed are tracked. System apps change too often.
Map<String, SnapApp> snapshotOf(List<AppReport> reports) {
  final map = <String, SnapApp>{};
  for (final report in reports) {
    if (report.app.isSystem) continue;
    final perms = report.findings
        .where((f) => f.active)
        .map((f) => f.rule.id)
        .toList()
      ..sort();
    final trackers = List<String>.of(report.app.trackers)..sort();
    map[report.app.packageName] = SnapApp(
      name: report.app.name,
      permissions: perms,
      trackers: trackers,
    );
  }
  return map;
}

/// Compares the last saved snapshot with a fresh scan.
DiffResult diffSnapshots({
  required Map<String, SnapApp> previous,
  required List<AppReport> current,
  required Set<String> trusted,
  required int now,
}) {
  final events = <ChangeEvent>[];
  final alerts = <AlertItem>[];
  final seen = <String>{};

  for (final report in current) {
    final app = report.app;
    if (app.isSystem) continue;
    seen.add(app.packageName);
    final prev = previous[app.packageName];
    final isTrusted = trusted.contains(app.packageName);
    final id = app.packageName.hashCode & 0x7fffffff;

    if (prev == null) {
      events.add(
        ChangeEvent(
          time: now,
          type: 'installed',
          packageName: app.packageName,
          appName: app.name,
          text: 'Installed. Score ${report.score} (${levelName(report.level)}).',
        ),
      );
      if (!isTrusted) {
        alerts.add(
          AlertItem(
            id,
            'New app: ${app.name}',
            'Score ${report.score} (${levelName(report.level)}). ${report.summary}',
          ),
        );
      }
      continue;
    }

    final before = prev.permissions.toSet();
    final active = report.findings.where((f) => f.active).toList();
    final nowIds = active.map((f) => f.rule.id).toSet();

    final newlyAllowed = active.where((f) => !before.contains(f.rule.id)).toList();
    for (final f in newlyAllowed) {
      events.add(
        ChangeEvent(
          time: now,
          type: 'allowed',
          packageName: app.packageName,
          appName: app.name,
          text: 'Now allowed: ${f.rule.label}.',
        ),
      );
    }

    final revoked = before.difference(nowIds).toList()..sort();
    for (final permissionId in revoked) {
      final label = ruleById[permissionId]?.label ?? permissionId;
      events.add(
        ChangeEvent(
          time: now,
          type: 'revoked',
          packageName: app.packageName,
          appName: app.name,
          text: 'No longer allowed: $label.',
        ),
      );
    }

    final newTrackers =
        app.trackers.where((t) => !prev.trackers.contains(t)).toList();
    for (final tracker in newTrackers) {
      events.add(
        ChangeEvent(
          time: now,
          type: 'tracker',
          packageName: app.packageName,
          appName: app.name,
          text: 'New tracker found: $tracker.',
        ),
      );
    }

    final sensitiveNew = newlyAllowed.where((f) => f.sensitive).toList();
    if (!isTrusted && (sensitiveNew.isNotEmpty || newTrackers.isNotEmpty)) {
      final parts = <String>[];
      if (sensitiveNew.isNotEmpty) {
        parts.add('Now allowed: ${sensitiveNew.map((f) => f.rule.label).join(', ')}.');
      }
      if (newTrackers.isNotEmpty) {
        parts.add('New tracker: ${newTrackers.join(', ')}.');
      }
      parts.add('Score ${report.score} (${levelName(report.level)}).');
      alerts.add(AlertItem(id, '${app.name} changed', parts.join(' ')));
    }
  }

  for (final entry in previous.entries) {
    if (seen.contains(entry.key)) continue;
    events.add(
      ChangeEvent(
        time: now,
        type: 'removed',
        packageName: entry.key,
        appName: entry.value.name,
        text: 'Uninstalled.',
      ),
    );
  }

  return DiffResult(events, alerts);
}

/// Saves the snapshot and the change list on the phone (SharedPreferences).
class HistoryStore {
  static const String _snapshotKey = 'history_snapshot_v1';
  static const String _eventsKey = 'history_events_v1';
  static const int maxEvents = 200;

  /// Compares a fresh scan with the saved snapshot, stores new events and the
  /// new snapshot, and returns what changed. The first scan only sets the
  /// baseline, so it creates no events.
  static Future<DiffResult> record(
    List<AppReport> reports, {
    required Set<String> trusted,
  }) async {
    final current = snapshotOf(reports);
    // An empty scan usually means the scan failed. Do not treat it as
    // "everything was uninstalled".
    if (current.isEmpty) return DiffResult.empty;

    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();

    var result = DiffResult.empty;
    final raw = prefs.getString(_snapshotKey);
    final previous = raw == null ? null : _decodeSnapshot(raw);
    if (previous != null) {
      result = diffSnapshots(
        previous: previous,
        current: reports,
        trusted: trusted,
        now: DateTime.now().millisecondsSinceEpoch,
      );
      if (result.events.isNotEmpty) {
        final old = _decodeEvents(prefs.getString(_eventsKey));
        final merged = [...result.events, ...old].take(maxEvents).toList();
        await prefs.setString(
          _eventsKey,
          jsonEncode(merged.map((e) => e.toJson()).toList()),
        );
      }
    }
    await prefs.setString(_snapshotKey, _encodeSnapshot(current));
    return result;
  }

  static Future<List<ChangeEvent>> loadEvents() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    return _decodeEvents(prefs.getString(_eventsKey));
  }

  static Future<void> clearEvents() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_eventsKey);
  }

  static String _encodeSnapshot(Map<String, SnapApp> snapshot) {
    return jsonEncode({
      for (final entry in snapshot.entries)
        entry.key: {
          'n': entry.value.name,
          'p': entry.value.permissions,
          't': entry.value.trackers,
        },
    });
  }

  static Map<String, SnapApp>? _decodeSnapshot(String raw) {
    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      return decoded.map((pkg, value) {
        final m = value as Map<String, dynamic>;
        return MapEntry(
          pkg,
          SnapApp(
            name: m['n'] as String,
            permissions: (m['p'] as List<dynamic>).cast<String>(),
            trackers: (m['t'] as List<dynamic>).cast<String>(),
          ),
        );
      });
    } catch (_) {
      return null;
    }
  }

  static List<ChangeEvent> _decodeEvents(String? raw) {
    if (raw == null) return const <ChangeEvent>[];
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      return list
          .map((e) => ChangeEvent.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (_) {
      return const <ChangeEvent>[];
    }
  }
}
