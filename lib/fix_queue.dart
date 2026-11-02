import 'security_checks.dart';
import 'l10n/app_localizations.dart';
import 'scoring.dart';
import 'texts.dart';

/// The apps the Fix wizard walks through: apps that can do something
/// sensitive, riskiest first. The list is already sorted by score.
List<AppReport> wizardQueue(List<AppReport> scored) =>
    scored.where((r) => !r.app.isSystem && hasSensitiveAccess(r)).toList();

/// Plain-language lines that explain why an app is in the wizard.
List<String> issuesFor(AppLocalizations l, AppReport report, {int? now}) {
  final time = now ?? DateTime.now().millisecondsSinceEpoch;
  final lines = <String>[];
  for (final id in report.app.special) {
    if (specialPoints.containsKey(id)) {
      lines.add('${specialLabel(l, id)}: ${specialWhy(l, id)}');
    }
  }
  for (final finding in report.findings.where((f) => f.sensitive)) {
    final note = finding.status == PermStatus.requested ? ' (${l.wizardRequested})' : '';
    lines.add('${ruleLabel(l, finding.rule)}: ${ruleWhy(l, finding.rule)}$note');
  }
  final days = report.app.daysUnused(time);
  if (days != null && days >= unusedDays) {
    lines.add(l.daysSince(days));
  }
  return lines;
}
