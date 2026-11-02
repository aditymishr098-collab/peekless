import 'models.dart';
import 'scoring.dart';

/// Plain-text privacy report that can be shared from the Home screen.
String buildReportText(List<AppReport> reports, int overallScore, RiskLevel overall) {
  final risky = reports.where((r) => r.level == RiskLevel.risky).length;
  final medium = reports.where((r) => r.level == RiskLevel.medium).length;
  final safe = reports.where((r) => r.level == RiskLevel.safe).length;
  final overallName = switch (overall) {
    RiskLevel.risky => 'High risk',
    RiskLevel.medium => 'Medium risk',
    RiskLevel.safe => 'Low risk',
  };

  final sorted = List<AppReport>.of(reports)..sort((a, b) => a.score.compareTo(b.score));
  final top = sorted.where((r) => r.level != RiskLevel.safe).take(5).toList();

  final out = StringBuffer()
    ..writeln('Peekless privacy report')
    ..writeln('Score: $overallScore/100 ($overallName)')
    ..writeln('${reports.length} apps checked: $risky risky, $medium medium, $safe safe');

  if (top.isNotEmpty) {
    out
      ..writeln()
      ..writeln('Needs attention:');
    for (var i = 0; i < top.length; i++) {
      final r = top[i];
      out.writeln('${i + 1}. ${r.app.name}: ${r.score} (${r.meta})');
    }
  }
  out
    ..writeln()
    ..write('Checked on my phone with Peekless. Nothing was sent anywhere.');
  return out.toString();
}
