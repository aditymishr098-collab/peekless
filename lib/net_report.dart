import 'dart:convert';

import 'tracker_domains.dart';

/// The domains one app has asked for, and how often.
class NetApp {
  NetApp(this.package, this.domains, {this.blocked = 0})
      : trackerHits = {
          for (final domain in domains.keys)
            if (trackerForDomain(domain) != null) domain: trackerForDomain(domain)!,
        };

  /// Package name, or "unknown" when Android could not tell which app it was.
  final String package;

  /// How many of this app's lookups were blocked.
  final int blocked;

  /// Domain name -> number of lookups.
  final Map<String, int> domains;

  /// Domain name -> tracker name, only for the domains that are trackers.
  final Map<String, String> trackerHits;

  bool get isUnknown => package == 'unknown';

  int get lookups => domains.values.fold(0, (sum, count) => sum + count);

  int get trackerLookups =>
      trackerHits.keys.fold(0, (sum, domain) => sum + (domains[domain] ?? 0));

  /// The domains, trackers first, then the most asked for.
  List<MapEntry<String, int>> get sortedDomains {
    final list = domains.entries.toList();
    list.sort((a, b) {
      final ta = trackerHits.containsKey(a.key) ? 0 : 1;
      final tb = trackerHits.containsKey(b.key) ? 0 : 1;
      if (ta != tb) return ta - tb;
      return b.value.compareTo(a.value);
    });
    return list;
  }
}

/// What the network monitor has seen so far.
class NetReport {
  const NetReport(this.apps);

  static const NetReport empty = NetReport(<NetApp>[]);

  final List<NetApp> apps;

  bool get isEmpty => apps.isEmpty;

  /// All blocked lookups, over all apps.
  int get totalBlocked => apps.fold(0, (sum, app) => sum + app.blocked);

  /// Reads the report from the Android side. A broken or empty text gives an
  /// empty report, never an error.
  factory NetReport.parse(String? raw) {
    if (raw == null || raw.isEmpty) return empty;
    try {
      final Object? json = jsonDecode(raw);
      if (json is! Map<String, dynamic>) return empty;
      final all = json['apps'];
      if (all is! Map<String, dynamic>) return empty;
      final blockedAll = json['blocked'];
      final blockedMap = blockedAll is Map<String, dynamic> ? blockedAll : const <String, dynamic>{};
      final apps = <NetApp>[];
      for (final entry in all.entries) {
        final value = entry.value;
        if (value is! Map<String, dynamic>) continue;
        final domains = <String, int>{};
        for (final d in value.entries) {
          final count = d.value;
          if (count is int && count > 0) domains[d.key] = count;
        }
        final blockedCount = blockedMap[entry.key];
        if (domains.isNotEmpty) {
          apps.add(NetApp(entry.key, domains, blocked: blockedCount is int && blockedCount > 0 ? blockedCount : 0));
        }
      }
      apps.sort((a, b) {
        final byTrackers = b.trackerHits.length.compareTo(a.trackerHits.length);
        if (byTrackers != 0) return byTrackers;
        return b.lookups.compareTo(a.lookups);
      });
      return NetReport(apps);
    } on FormatException {
      return empty;
    }
  }
}

/// The report as a CSV file: one line per app and domain. [names] maps a
/// package name to the app name. Fields with a comma, a quote or a line break
/// are put in quotes, so the file opens correctly in a spreadsheet.
String buildNetCsv(NetReport report, Map<String, String> names) {
  String field(String value) {
    if (value.contains(',') || value.contains('"') || value.contains('\n') || value.contains('\r')) {
      return '"${value.replaceAll('"', '""')}"';
    }
    return value;
  }

  final lines = <String>['app,package,domain,lookups,tracker'];
  for (final app in report.apps) {
    final name = names[app.package] ?? app.package;
    for (final entry in app.sortedDomains) {
      lines.add([
        field(name),
        field(app.package),
        field(entry.key),
        '${entry.value}',
        field(app.trackerHits[entry.key] ?? ''),
      ].join(','));
    }
  }
  return '${lines.join('\n')}\n';
}
