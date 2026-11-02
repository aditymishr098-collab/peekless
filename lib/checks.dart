import 'install_source.dart';
import 'models.dart';
import 'scoring.dart';

/// One question Peekless asks about every app, for example
/// "Which apps were installed from outside a store?".
class SecurityCheck {
  const SecurityCheck({
    required this.id,
    required this.title,
    required this.description,
    required this.matches,
    this.good = false,
  });

  final String id;
  final String title;
  final String description;

  /// True for checks where a match is good news (apps that are offline).
  final bool good;
  final bool Function(AppInfo app) matches;
}

final List<SecurityCheck> securityChecks = [
  SecurityCheck(
    id: accessibilityAccess,
    title: 'Accessibility access',
    description: 'These apps can read your screen and tap for you.',
    matches: (app) => app.special.contains(accessibilityAccess),
  ),
  SecurityCheck(
    id: deviceAdminAccess,
    title: 'Device admin',
    description: 'These apps can lock or wipe the phone and block uninstalling.',
    matches: (app) => app.special.contains(deviceAdminAccess),
  ),
  SecurityCheck(
    id: notificationAccess,
    title: 'Notification access',
    description: 'These apps can read all your notifications, including codes.',
    matches: (app) => app.special.contains(notificationAccess),
  ),
  SecurityCheck(
    id: 'sideloaded',
    title: 'Not from a store',
    description: 'Installed from a file or a computer. Nobody checked these for you.',
    matches: (app) => installedOutsideStore(app.installer, isSystem: app.isSystem),
  ),
  SecurityCheck(
    id: 'debuggable',
    title: 'Debuggable builds',
    description: 'Test versions that can be inspected from a computer.',
    matches: (app) => app.debuggable,
  ),
  SecurityCheck(
    id: 'oldTarget',
    title: 'Built for very old Android',
    description: 'These apps skip newer Android privacy protections.',
    matches: (app) => app.targetSdk > 0 && app.targetSdk < oldTargetBelow,
  ),
  SecurityCheck(
    id: 'offline',
    title: 'Offline apps',
    description: 'No internet permission, so they cannot send data online.',
    good: true,
    matches: (app) => !app.canUseInternet,
  ),
];

/// The apps that match [check].
List<AppReport> appsFor(SecurityCheck check, List<AppReport> reports) =>
    reports.where((r) => check.matches(r.app)).toList();
