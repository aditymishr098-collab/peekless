import 'l10n/app_localizations.dart';
import 'models.dart';
import 'scoring.dart';
import 'texts.dart';

/// Plain-text privacy report that can be shared from the Home screen.
String buildReportText(
  AppLocalizations l,
  List<AppReport> reports,
  int overallScore,
  RiskLevel overall,
) {
  final risky = reports.where((r) => r.level == RiskLevel.risky).length;
  final medium = reports.where((r) => r.level == RiskLevel.medium).length;
  final safe = reports.where((r) => r.level == RiskLevel.safe).length;

  final sorted = List<AppReport>.of(reports)..sort((a, b) => a.score.compareTo(b.score));
  final top = sorted.where((r) => r.level != RiskLevel.safe).take(5).toList();

  final out = StringBuffer()
    ..writeln(l.reportTitle)
    ..writeln(l.reportScore(overallScore, overallLabel(l, overall)))
    ..writeln(l.reportCounts(reports.length, risky, medium, safe));

  if (top.isNotEmpty) {
    out
      ..writeln()
      ..writeln(l.reportAttention);
    for (var i = 0; i < top.length; i++) {
      final r = top[i];
      out.writeln('${i + 1}. ${r.app.name}: ${r.score} (${metaFor(l, r)})');
    }
  }
  out
    ..writeln()
    ..write(l.reportFooter);
  return out.toString();
}
