enum RiskLevel { safe, medium, risky }

/// Special access an app can have turned on. These are not normal permissions,
/// the user switches them on in the phone settings.
const String accessibilityAccess = 'accessibility';
const String deviceAdminAccess = 'deviceAdmin';
const String notificationAccess = 'notificationAccess';

class PermissionEntry {
  const PermissionEntry(this.name, this.granted);

  final String name;
  final bool granted;
}

class AppInfo {
  const AppInfo({
    required this.packageName,
    required this.name,
    required this.isSystem,
    required this.versionName,
    required this.permissions,
    required this.trackers,
    this.category = -1,
    this.installer,
    this.special = const <String>[],
    this.debuggable = false,
    this.targetSdk = -1,
    this.lastUsed,
    this.installedAt = 0,
  });

  factory AppInfo.fromMap(Map<Object?, Object?> map) {
    final rawPerms = (map['permissions'] as List<Object?>?) ?? const <Object?>[];
    final perms = rawPerms.map((item) {
      final entry = item! as Map<Object?, Object?>;
      return PermissionEntry(
        entry['name']! as String,
        (entry['granted'] as bool?) ?? false,
      );
    }).toList();
    final rawTrackers = (map['trackers'] as List<Object?>?) ?? const <Object?>[];
    final rawSpecial = (map['special'] as List<Object?>?) ?? const <Object?>[];
    return AppInfo(
      packageName: map['package']! as String,
      name: map['name']! as String,
      isSystem: (map['system'] as bool?) ?? false,
      versionName: (map['version'] as String?) ?? '',
      permissions: perms,
      trackers: rawTrackers.map((e) => e! as String).toList(),
      category: (map['category'] as int?) ?? -1,
      installer: map['installer'] as String?,
      special: rawSpecial.map((e) => e! as String).toList(),
      debuggable: (map['debuggable'] as bool?) ?? false,
      targetSdk: (map['targetSdk'] as int?) ?? -1,
      lastUsed: map['lastUsed'] as int?,
      installedAt: (map['installedAt'] as int?) ?? 0,
    );
  }

  final String packageName;
  final String name;
  final bool isSystem;
  final String versionName;
  final List<PermissionEntry> permissions;
  final List<String> trackers;

  /// Android app category (ApplicationInfo.category), or -1 when unknown.
  final int category;

  /// Package name of the app that installed this app, or null when unknown.
  final String? installer;

  /// Special access that is turned on: accessibility, deviceAdmin, notificationAccess.
  final List<String> special;
  final bool debuggable;

  /// The Android version (API level) the app was built for, or -1 when unknown.
  final int targetSdk;

  /// When the app was last opened (milliseconds), 0 when it was not opened in
  /// the last 180 days, or null when Usage access is off.
  final int? lastUsed;

  /// When the app was installed (milliseconds), 0 when unknown.
  final int installedAt;

  /// Days since the app was last opened, counted from the install date when
  /// it was never opened. Null when Usage access is off or nothing is known.
  int? daysUnused(int nowMillis) {
    final last = lastUsed;
    if (last == null) return null;
    final since = last > installedAt ? last : installedAt;
    if (since <= 0) return null;
    final days = (nowMillis - since) ~/ 86400000;
    return days < 0 ? 0 : days;
  }

  /// An app without the internet permission can never send data online by itself.
  bool get canUseInternet =>
      permissions.any((p) => p.name == 'android.permission.INTERNET');

  String get initial =>
      name.isEmpty ? '?' : String.fromCharCode(name.runes.first).toUpperCase();
}
