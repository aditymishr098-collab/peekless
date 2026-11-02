enum RiskLevel { safe, medium, risky }

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
    return AppInfo(
      packageName: map['package']! as String,
      name: map['name']! as String,
      isSystem: (map['system'] as bool?) ?? false,
      versionName: (map['version'] as String?) ?? '',
      permissions: perms,
      trackers: rawTrackers.map((e) => e! as String).toList(),
      category: (map['category'] as int?) ?? -1,
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

  String get initial =>
      name.isEmpty ? '?' : String.fromCharCode(name.runes.first).toUpperCase();
}
