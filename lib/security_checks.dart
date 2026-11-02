import 'install_source.dart';
import 'models.dart';
import 'scoring.dart';

/// An app that was not opened for this many days counts as unused.
const int unusedDays = 60;

/// True when the app can do something sensitive: a sensitive permission, or
/// special access such as accessibility.
bool hasSensitiveAccess(AppReport report) =>
    report.findings.any((f) => f.sensitive) ||
    report.app.special.any(specialPoints.containsKey);

/// One question Peekless asks about every app, for example
/// "Which apps were installed from outside a store?".
class SecurityCheck {
  const SecurityCheck({
    required this.id,
    required this.matches,
    this.good = false,
    this.needsUsage = false,
  });

  final String id;

  /// True for checks where a match is good news (apps that are offline).
  final bool good;

  /// True for checks that only work when Usage access is on.
  final bool needsUsage;

  /// [now] is the current time in milliseconds.
  final bool Function(AppReport report, int now) matches;
}

final List<SecurityCheck> securityChecks = [
  SecurityCheck(
    id: accessibilityAccess,
    matches: (r, now) => r.app.special.contains(accessibilityAccess),
  ),
  SecurityCheck(
    id: deviceAdminAccess,
    matches: (r, now) => r.app.special.contains(deviceAdminAccess),
  ),
  SecurityCheck(
    id: notificationAccess,
    matches: (r, now) => r.app.special.contains(notificationAccess),
  ),
  SecurityCheck(
    id: 'unused',
    needsUsage: true,
    matches: (r, now) {
      if (r.app.isSystem) return false;
      final days = r.app.daysUnused(now);
      return days != null && days >= unusedDays && hasSensitiveAccess(r);
    },
  ),
  SecurityCheck(
    id: 'sideloaded',
    matches: (r, now) =>
        installedOutsideStore(r.app.installer, isSystem: r.app.isSystem),
  ),
  SecurityCheck(
    id: 'debuggable',
    matches: (r, now) => r.app.debuggable,
  ),
  SecurityCheck(
    id: 'oldTarget',
    matches: (r, now) => r.app.targetSdk > 0 && r.app.targetSdk < oldTargetBelow,
  ),
  SecurityCheck(
    id: 'offline',
    good: true,
    matches: (r, now) => !r.app.canUseInternet,
  ),
];

/// The apps that match [check]. [now] is for tests; it defaults to the clock.
List<AppReport> appsFor(SecurityCheck check, List<AppReport> reports, {int? now}) {
  final time = now ?? DateTime.now().millisecondsSinceEpoch;
  return reports.where((r) => check.matches(r, time)).toList();
}
