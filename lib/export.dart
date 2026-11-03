import 'dart:convert';

import 'l10n/app_localizations.dart';
import 'models.dart';
import 'scoring.dart';
import 'texts.dart';

/// Colours used in the PDF, as ARGB numbers for the Android side.
int levelColor(RiskLevel level) => switch (level) {
      RiskLevel.safe => 0xFF00685A,
      RiskLevel.medium => 0xFFB26A00,
      RiskLevel.risky => 0xFFB3261E,
    };

String _day(DateTime time) {
  final t = time.toLocal();
  String two(int n) => n.toString().padLeft(2, '0');
  return '${t.year}-${two(t.month)}-${two(t.day)}';
}

/// The report as JSON, for people who want to keep it or process it. The keys
/// are always English so the file looks the same in every language.
String buildReportJson({
  required List<AppReport> reports,
  required int score,
  required RiskLevel level,
  required String version,
  required DateTime now,
  Set<String> trusted = const <String>{},
}) {
  final counted = reports.where((r) => !trusted.contains(r.app.packageName));
  final data = <String, Object?>{
    'generatedBy': 'Peekless',
    'version': version,
    'generated': now.toUtc().toIso8601String(),
    'score': score,
    'level': level.name,
    'counts': <String, Object?>{
      'total': reports.length,
      'risky': counted.where((r) => r.level == RiskLevel.risky).length,
      'medium': counted.where((r) => r.level == RiskLevel.medium).length,
      'safe': counted.where((r) => r.level == RiskLevel.safe).length,
    },
    'apps': [
      for (final r in reports)
        <String, Object?>{
          'name': r.app.name,
          'package': r.app.packageName,
          'version': r.app.versionName,
          'system': r.app.isSystem,
          'trusted': trusted.contains(r.app.packageName),
          'score': r.score,
          'level': r.level.name,
          'installer': r.app.installer,
          'targetSdk': r.app.targetSdk,
          'debuggable': r.app.debuggable,
          'internet': r.app.canUseInternet,
          'permissionsAllowed': [
            for (final f in r.findings)
              if (f.status == PermStatus.allowed) f.rule.id,
          ],
          'permissionsRequested': [
            for (final f in r.findings)
              if (f.status == PermStatus.requested) f.rule.id,
          ],
          'specialAccess': r.app.special,
          'trackers': r.app.trackers,
          'trackersFoundInCode': r.app.deepTrackers,
        },
    ],
  };
  return const JsonEncoder.withIndent('  ').convert(data);
}

/// What the Android side draws as a PDF. All texts are already translated.
Map<String, Object?> buildPdfDoc({
  required AppLocalizations l,
  required List<AppReport> reports,
  required Set<String> trusted,
  required int score,
  required RiskLevel level,
  required DateTime now,
}) {
  final counted = reports.where((r) => !trusted.contains(r.app.packageName)).toList();
  final risky = counted.where((r) => r.level == RiskLevel.risky).length;
  final medium = counted.where((r) => r.level == RiskLevel.medium).length;
  final safe = counted.where((r) => r.level == RiskLevel.safe).length;

  final apps = <Map<String, Object?>>[];
  for (final r in reports) {
    final allowed = [
      for (final f in r.findings)
        if (f.status == PermStatus.allowed) ruleLabel(l, f.rule),
    ];
    final requested = [
      for (final f in r.findings)
        if (f.status == PermStatus.requested) ruleLabel(l, f.rule),
    ];
    final special = [
      for (final id in r.app.special)
        if (specialPoints.containsKey(id)) specialLabel(l, id),
    ];
    final lines = <String>[
      if (allowed.isNotEmpty) '${l.chipAllowed}: ${allowed.join(', ')}',
      if (requested.isNotEmpty) '${l.chipRequested}: ${requested.join(', ')}',
      if (special.isNotEmpty) special.join(', '),
      if (r.app.trackers.isNotEmpty) '${l.segTrackers}: ${r.app.trackers.join(', ')}',
    ];
    if (lines.isEmpty) lines.add(metaFor(l, r));
    apps.add(<String, Object?>{
      'name': r.app.name,
      'package': r.app.packageName,
      'score': '${r.score}',
      'level': levelName(l, r.level),
      'color': levelColor(r.level),
      'lines': lines,
    });
  }

  return <String, Object?>{
    'fileName': 'peekless-report-${_day(now)}.pdf',
    'title': l.reportTitle,
    'subtitle': _day(now),
    'scoreLine': l.reportScore(score, overallLabel(l, level)),
    'scoreColor': levelColor(level),
    'countsLine': l.reportCounts(counted.length, risky, medium, safe),
    'footer': l.reportFooter,
    'apps': apps,
  };
}
