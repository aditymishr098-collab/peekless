import 'models.dart';

enum PermStatus { allowed, requested, notAllowed }

class PermissionRule {
  const PermissionRule(
    this.id,
    this.group,
    this.weight, {
    this.special = false,
  });

  /// Full Android permission name.
  final String id;

  /// Group id shown on the Permissions tab, for example "Location".
  /// It is an id, not display text. See texts.dart for the translated names.
  final String group;

  /// Points removed from the app score when the permission is allowed.
  final int weight;

  /// Special permissions are granted through a settings screen, so the
  /// "granted" flag from Android is not reliable. They count half when requested.
  final bool special;
}

const List<PermissionRule> permissionRules = [
  PermissionRule('android.permission.RECORD_AUDIO', 'Microphone', 12),
  PermissionRule('android.permission.CAMERA', 'Camera', 8),
  PermissionRule('android.permission.ACCESS_COARSE_LOCATION', 'Location', 4),
  PermissionRule('android.permission.ACCESS_FINE_LOCATION', 'Location', 8),
  PermissionRule('android.permission.ACCESS_BACKGROUND_LOCATION', 'Location', 22),
  PermissionRule('android.permission.READ_CONTACTS', 'Contacts', 10),
  PermissionRule('android.permission.GET_ACCOUNTS', 'Contacts', 3),
  PermissionRule('android.permission.READ_SMS', 'SMS', 14),
  PermissionRule('android.permission.RECEIVE_SMS', 'SMS', 10),
  PermissionRule('android.permission.SEND_SMS', 'SMS', 8),
  PermissionRule('android.permission.READ_CALL_LOG', 'Call log', 12),
  PermissionRule('android.permission.READ_PHONE_STATE', 'Phone', 4),
  PermissionRule('android.permission.CALL_PHONE', 'Phone', 4),
  PermissionRule('android.permission.READ_CALENDAR', 'Calendar', 6),
  PermissionRule('android.permission.BODY_SENSORS', 'Body sensors', 6),
  PermissionRule('android.permission.ACTIVITY_RECOGNITION', 'Activity', 3),
  PermissionRule('android.permission.MANAGE_EXTERNAL_STORAGE', 'Files', 12, special: true),
  PermissionRule('android.permission.READ_EXTERNAL_STORAGE', 'Files', 3),
  PermissionRule('android.permission.READ_MEDIA_IMAGES', 'Files', 3),
  PermissionRule('android.permission.READ_MEDIA_VIDEO', 'Files', 3),
  PermissionRule('android.permission.READ_MEDIA_AUDIO', 'Files', 2),
  PermissionRule('android.permission.SYSTEM_ALERT_WINDOW', 'Overlay', 8, special: true),
  PermissionRule('android.permission.REQUEST_INSTALL_PACKAGES', 'Installs', 4, special: true),
  PermissionRule('android.permission.QUERY_ALL_PACKAGES', 'App list', 3),
];

final Map<String, PermissionRule> ruleById = {
  for (final rule in permissionRules) rule.id: rule,
};

/// A permission weight at or above this value is shown as "sensitive".
const int sensitiveWeight = 10;

/// Extra points removed for each permission group that does not fit the kind
/// of app, and the most groups that are counted.
const int unusualPenalty = 20;
const int unusualMaxGroups = 2;

/// Most points the trackers can remove, and points per tracker.
const int trackerPoints = 6;
const int trackerMaxPoints = 30;

/// Points removed for special access that an app has turned on.
const int accessibilityPoints = 20;
const int deviceAdminPoints = 15;
const int notificationPoints = 10;

const Map<String, int> specialPoints = {
  accessibilityAccess: accessibilityPoints,
  deviceAdminAccess: deviceAdminPoints,
  notificationAccess: notificationPoints,
};

/// Points for a debuggable build, and for an app built for a very old Android
/// (below this API level, which is Android 8).
const int debuggablePoints = 8;
const int oldTargetPoints = 4;
const int oldTargetBelow = 26;

class Finding {
  const Finding(this.rule, this.status);

  final PermissionRule rule;
  final PermStatus status;

  bool get active => status != PermStatus.notAllowed;
  bool get sensitive => active && rule.weight >= sensitiveWeight;
}

/// What kind of app this seems to be. It decides which permissions look unusual.
enum AppKind { tool, game, media, other }

const List<String> _toolWords = [
  'calculator',
  'flashlight',
  'torch',
  'compass',
  'wallpaper',
  'notepad',
  'ringtone',
  'stopwatch',
];

/// Permission groups an app of this kind does not normally need.
const Map<AppKind, Set<String>> unexpectedGroups = {
  AppKind.tool: {'Microphone', 'Location', 'Contacts', 'SMS', 'Call log'},
  AppKind.game: {'Contacts', 'SMS', 'Call log'},
  AppKind.media: {'Contacts', 'SMS', 'Call log'},
};

AppKind kindFor(AppInfo app) {
  // Android categories: 0 game, 1 audio, 2 video, 3 image.
  switch (app.category) {
    case 0:
      return AppKind.game;
    case 1:
    case 2:
    case 3:
      return AppKind.media;
  }
  final text = '${app.name} ${app.packageName}'.toLowerCase();
  if (_toolWords.any(text.contains)) return AppKind.tool;
  return AppKind.other;
}

/// What a line of the score breakdown is about.
enum LineKind { permission, trackers, special, debuggable, oldTarget, unusual }

/// One line of the score breakdown, for example "Microphone: -12".
/// It holds data only. texts.dart turns it into translated text.
class ScoreLine {
  const ScoreLine(
    this.kind,
    this.points, {
    this.ref = '',
    this.number = 0,
    this.requested = false,
  });

  final LineKind kind;
  final int points;

  /// Permission id, special access id or permission group id.
  final String ref;

  /// Tracker count or API level.
  final int number;

  /// For a permission line: it is only requested, so it counts half.
  final bool requested;
}

class AppReport {
  const AppReport({
    required this.app,
    required this.score,
    required this.level,
    required this.findings,
    required this.unusualGroups,
    required this.kind,
    required this.breakdown,
  });

  final AppInfo app;
  final int score;
  final RiskLevel level;
  final List<Finding> findings;

  /// Permission groups that are unusual for this kind of app.
  final List<String> unusualGroups;
  final AppKind kind;
  final List<ScoreLine> breakdown;
}

/// The score of the whole phone: the average of the given apps, or 100 when
/// there are none. Pass only the apps that should count (not trusted ones).
int phoneScore(Iterable<AppReport> scored) {
  if (scored.isEmpty) return 100;
  final sum = scored.fold<int>(0, (total, r) => total + r.score);
  return (sum / scored.length).round();
}

RiskLevel levelForScore(int score) {
  if (score >= 70) return RiskLevel.safe;
  if (score >= 40) return RiskLevel.medium;
  return RiskLevel.risky;
}


AppReport buildReport(AppInfo app) {
  final findings = <Finding>[];
  for (final perm in app.permissions) {
    final rule = ruleById[perm.name];
    if (rule == null) continue;
    final status = perm.granted
        ? PermStatus.allowed
        : (rule.special ? PermStatus.requested : PermStatus.notAllowed);
    findings.add(Finding(rule, status));
  }
  findings.sort((a, b) => b.rule.weight.compareTo(a.rule.weight));

  // Only the heaviest permission of each group counts, so that precise and
  // approximate location are not double-penalised.
  final perGroup = <String, double>{};
  final groupFinding = <String, Finding>{};
  for (final f in findings) {
    final factor = switch (f.status) {
      PermStatus.allowed => 1.0,
      PermStatus.requested => 0.5,
      PermStatus.notAllowed => 0.0,
    };
    final penalty = f.rule.weight * factor;
    if (penalty > (perGroup[f.rule.group] ?? 0)) {
      perGroup[f.rule.group] = penalty;
      groupFinding[f.rule.group] = f;
    }
  }

  final lines = <ScoreLine>[];
  var total = 0.0;
  perGroup.forEach((group, penalty) {
    total += penalty;
    final f = groupFinding[group]!;
    lines.add(
      ScoreLine(
        LineKind.permission,
        penalty.round(),
        ref: f.rule.id,
        requested: f.status == PermStatus.requested,
      ),
    );
  });

  final trackerPenalty =
      (app.trackers.length * trackerPoints).clamp(0, trackerMaxPoints).toInt();
  if (trackerPenalty > 0) {
    total += trackerPenalty;
    lines.add(
      ScoreLine(LineKind.trackers, trackerPenalty, number: app.trackers.length),
    );
  }

  final specials = app.special.where(specialPoints.containsKey).toList();
  for (final id in specials) {
    final points = specialPoints[id]!;
    total += points;
    lines.add(ScoreLine(LineKind.special, points, ref: id));
  }
  if (app.debuggable) {
    total += debuggablePoints;
    lines.add(const ScoreLine(LineKind.debuggable, debuggablePoints));
  }
  if (app.targetSdk > 0 && app.targetSdk < oldTargetBelow) {
    total += oldTargetPoints;
    lines.add(ScoreLine(LineKind.oldTarget, oldTargetPoints, number: app.targetSdk));
  }

  final kind = kindFor(app);
  final unusual = <String>[];
  final unexpected = unexpectedGroups[kind];
  if (unexpected != null) {
    for (final group in perGroup.keys) {
      if (unexpected.contains(group) && unusual.length < unusualMaxGroups) {
        unusual.add(group);
      }
    }
  }
  for (final group in unusual) {
    total += unusualPenalty;
    lines.add(ScoreLine(LineKind.unusual, unusualPenalty, ref: group));
  }
  lines.sort((a, b) => b.points.compareTo(a.points));

  final score = (100 - total).round().clamp(0, 100).toInt();

  return AppReport(
    app: app,
    score: score,
    level: levelForScore(score),
    findings: findings,
    unusualGroups: unusual,
    kind: kind,
    breakdown: lines,
  );
}
