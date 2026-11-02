import 'models.dart';

enum PermStatus { allowed, requested, notAllowed }

class PermissionRule {
  const PermissionRule(
    this.id,
    this.group,
    this.label,
    this.weight,
    this.why, {
    this.special = false,
  });

  /// Full Android permission name.
  final String id;

  /// Group shown on the Permissions tab, for example "Location".
  final String group;
  final String label;

  /// Points removed from the app score when the permission is allowed.
  final int weight;

  /// Verb phrase used in sentences: "Can <why>."
  final String why;

  /// Special permissions are granted through a settings screen, so the
  /// "granted" flag from Android is not reliable. They count half when requested.
  final bool special;
}

const List<PermissionRule> permissionRules = [
  PermissionRule('android.permission.RECORD_AUDIO', 'Microphone', 'Microphone', 12, 'record audio'),
  PermissionRule('android.permission.CAMERA', 'Camera', 'Camera', 8, 'use the camera'),
  PermissionRule('android.permission.ACCESS_COARSE_LOCATION', 'Location', 'Approximate location', 4, 'see your approximate location'),
  PermissionRule('android.permission.ACCESS_FINE_LOCATION', 'Location', 'Precise location', 8, 'see your precise location'),
  PermissionRule('android.permission.ACCESS_BACKGROUND_LOCATION', 'Location', 'Location all the time', 22, 'track your location all the time'),
  PermissionRule('android.permission.READ_CONTACTS', 'Contacts', 'Contacts', 10, 'read your contacts'),
  PermissionRule('android.permission.GET_ACCOUNTS', 'Contacts', 'Accounts', 3, 'see the accounts on your phone'),
  PermissionRule('android.permission.READ_SMS', 'SMS', 'Read SMS', 14, 'read your text messages'),
  PermissionRule('android.permission.RECEIVE_SMS', 'SMS', 'Receive SMS', 10, 'receive your text messages'),
  PermissionRule('android.permission.SEND_SMS', 'SMS', 'Send SMS', 8, 'send text messages'),
  PermissionRule('android.permission.READ_CALL_LOG', 'Call log', 'Call log', 12, 'read your call history'),
  PermissionRule('android.permission.READ_PHONE_STATE', 'Phone', 'Phone status', 4, 'see your phone status'),
  PermissionRule('android.permission.CALL_PHONE', 'Phone', 'Make calls', 4, 'make phone calls'),
  PermissionRule('android.permission.READ_CALENDAR', 'Calendar', 'Calendar', 6, 'read your calendar'),
  PermissionRule('android.permission.BODY_SENSORS', 'Body sensors', 'Body sensors', 6, 'read body sensors'),
  PermissionRule('android.permission.ACTIVITY_RECOGNITION', 'Activity', 'Physical activity', 3, 'see your physical activity'),
  PermissionRule('android.permission.MANAGE_EXTERNAL_STORAGE', 'Files', 'All files', 12, 'access all files on your phone', special: true),
  PermissionRule('android.permission.READ_EXTERNAL_STORAGE', 'Files', 'Files and media', 3, 'read files and media'),
  PermissionRule('android.permission.READ_MEDIA_IMAGES', 'Files', 'Photos', 3, 'read your photos'),
  PermissionRule('android.permission.READ_MEDIA_VIDEO', 'Files', 'Videos', 3, 'read your videos'),
  PermissionRule('android.permission.READ_MEDIA_AUDIO', 'Files', 'Audio files', 2, 'read your audio files'),
  PermissionRule('android.permission.SYSTEM_ALERT_WINDOW', 'Overlay', 'Draw over other apps', 8, 'draw over other apps', special: true),
  PermissionRule('android.permission.REQUEST_INSTALL_PACKAGES', 'Installs', 'Install other apps', 4, 'install other apps', special: true),
  PermissionRule('android.permission.QUERY_ALL_PACKAGES', 'App list', 'See all apps', 3, 'see all apps on your phone'),
];

final Map<String, PermissionRule> ruleById = {
  for (final rule in permissionRules) rule.id: rule,
};

/// A permission weight at or above this value is shown as "sensitive".
const int sensitiveWeight = 10;

class Finding {
  const Finding(this.rule, this.status);

  final PermissionRule rule;
  final PermStatus status;

  bool get active => status != PermStatus.notAllowed;
  bool get sensitive => active && rule.weight >= sensitiveWeight;
}

class AppReport {
  const AppReport({
    required this.app,
    required this.score,
    required this.level,
    required this.findings,
    required this.summary,
  });

  final AppInfo app;
  final int score;
  final RiskLevel level;
  final List<Finding> findings;
  final String summary;

  /// Short line for list rows, for example "Microphone · Location · 4 trackers".
  String get meta {
    final bits = findings.where((f) => f.active).take(2).map((f) => f.rule.label).toList();
    final count = app.trackers.length;
    if (count > 0) {
      bits.add(count == 1 ? '1 tracker' : '$count trackers');
    }
    return bits.isEmpty ? 'No sensitive permissions' : bits.join(' · ');
  }
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
  for (final f in findings) {
    final factor = switch (f.status) {
      PermStatus.allowed => 1.0,
      PermStatus.requested => 0.5,
      PermStatus.notAllowed => 0.0,
    };
    final penalty = f.rule.weight * factor;
    if (penalty > (perGroup[f.rule.group] ?? 0)) {
      perGroup[f.rule.group] = penalty;
    }
  }
  var total = perGroup.values.fold<double>(0, (sum, value) => sum + value);
  total += (app.trackers.length * 6).clamp(0, 30).toInt();

  final score = (100 - total).round().clamp(0, 100).toInt();

  final active = findings.where((f) => f.active).toList();
  final sentences = <String>[];
  if (active.isNotEmpty) {
    sentences.add('Can ${active.take(2).map((f) => f.rule.why).join(' and ')}.');
  }
  if (app.trackers.isNotEmpty) {
    sentences.add(
      app.trackers.length == 1
          ? 'Contains 1 known tracker.'
          : 'Contains ${app.trackers.length} known trackers.',
    );
  }
  if (sentences.isEmpty) {
    sentences.add('No sensitive permissions and no known trackers.');
  }

  return AppReport(
    app: app,
    score: score,
    level: levelForScore(score),
    findings: findings,
    summary: sentences.join(' '),
  );
}
