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
    required this.title,
    required this.description,
    required this.matches,
    this.good = false,
    this.needsUsage = false,
  });

  final String id;
  final String title;
  final String description;

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
    title: 'Accessibility access',
    description: 'These apps can read your screen and tap for you.',
    matches: (r, now) => r.app.special.contains(accessibilityAccess),
  ),
  SecurityCheck(
    id: deviceAdminAccess,
    title: 'Device admin',
    description: 'These apps can lock or wipe the phone and block uninstalling.',
    matches: (r, now) => r.app.special.contains(deviceAdminAccess),
  ),
  SecurityCheck(
    id: notificationAccess,
    title: 'Notification access',
    description: 'These apps can read all your notifications, including codes.',
    matches: (r, now) => r.app.special.contains(notificationAccess),
  ),
  SecurityCheck(
    id: 'unused',
    title: 'Unused apps with sensitive access',
    description:
        'Not opened for $unusedDays days, but they can still use sensitive permissions. '
        'Consider removing them.',
    needsUsage: true,
    matches: (r, now) {
      if (r.app.isSystem) return false;
      final days = r.app.daysUnused(now);
      return days != null && days >= unusedDays && hasSensitiveAccess(r);
    },
  ),
  SecurityCheck(
    id: 'sideloaded',
    title: 'Not from a store',
    description: 'Installed from a file or a computer. Nobody checked these for you.',
    matches: (r, now) =>
        installedOutsideStore(r.app.installer, isSystem: r.app.isSystem),
  ),
  SecurityCheck(
    id: 'debuggable',
    title: 'Debuggable builds',
    description: 'Test versions that can be inspected from a computer.',
    matches: (r, now) => r.app.debuggable,
  ),
  SecurityCheck(
    id: 'oldTarget',
    title: 'Built for very old Android',
    description: 'These apps skip newer Android privacy protections.',
    matches: (r, now) => r.app.targetSdk > 0 && r.app.targetSdk < oldTargetBelow,
  ),
  SecurityCheck(
    id: 'offline',
    title: 'Offline apps',
    description: 'No internet permission, so they cannot send data online.',
    good: true,
    matches: (r, now) => !r.app.canUseInternet,
  ),
];

/// The apps that match [check]. [now] is for tests; it defaults to the clock.
List<AppReport> appsFor(SecurityCheck check, List<AppReport> reports, {int? now}) {
  final time = now ?? DateTime.now().millisecondsSinceEpoch;
  return reports.where((r) => check.matches(r, time)).toList();
}
