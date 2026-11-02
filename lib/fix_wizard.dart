import 'checks.dart';
import 'scoring.dart';

/// The apps the Fix wizard walks through: apps that can do something
/// sensitive, riskiest first. The list is already sorted by score.
List<AppReport> wizardQueue(List<AppReport> scored) =>
    scored.where((r) => !r.app.isSystem && hasSensitiveAccess(r)).toList();

/// Plain-language lines that explain why an app is in the wizard.
List<String> issuesFor(AppReport report, {int? now}) {
  final time = now ?? DateTime.now().millisecondsSinceEpoch;
  final lines = <String>[];
  for (final id in report.app.special) {
    if (specialPoints.containsKey(id)) {
      lines.add('${specialLabel(id)}: ${specialWhy(id)}');
    }
  }
  for (final finding in report.findings.where((f) => f.sensitive)) {
    final note = finding.status == PermStatus.requested ? ' (asked for, not allowed yet)' : '';
    lines.add('${finding.rule.label}: can ${finding.rule.why}$note');
  }
  final days = report.app.daysUnused(time);
  if (days != null && days >= unusedDays) {
    lines.add('Not opened for $days days');
  }
  return lines;
}
