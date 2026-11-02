import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'tracker_db.dart';

/// Where the newest tracker list is published. It is only contacted when the
/// user taps "Tracker list" in Settings.
const String trackerListUrl =
    'https://raw.githubusercontent.com/lumio-apps/peekless/main/data/trackers.json';

/// Version of the list that ships inside the app.
const int builtInTrackerVersion = 1;

/// A downloaded tracker list: a version number and name -> class-name prefixes.
class TrackerList {
  const TrackerList(this.version, this.trackers);

  final int version;
  final Map<String, List<String>> trackers;
}

const int _maxBytes = 256 * 1024;
const int _maxTrackers = 600;
const int _maxPrefixes = 20;

final RegExp _prefixShape = RegExp(r'^[A-Za-z][A-Za-z0-9_$]*(\.[A-Za-z0-9_$]+)+\.?$');

/// Prefixes that would match half of the phone. They are never accepted.
const List<String> _blockedStarts = [
  'android.',
  'androidx.',
  'java.',
  'javax.',
  'kotlin.',
];
const List<String> _blockedExact = [
  'com.google',
  'com.google.',
  'com.google.android',
  'com.google.android.',
  'com.android',
  'com.android.',
];

bool _goodPrefix(String prefix) {
  if (prefix.length < 6 || prefix.length > 120) return false;
  if (!_prefixShape.hasMatch(prefix)) return false;
  if (_blockedExact.contains(prefix)) return false;
  return !_blockedStarts.any(prefix.startsWith);
}

/// Reads and checks a tracker list. Throws [FormatException] when the file is
/// not a valid list, so a broken or hostile file can never be used.
TrackerList parseTrackerList(String body) {
  if (body.length > _maxBytes) {
    throw const FormatException('The tracker list is too large.');
  }
  final Object? json = jsonDecode(body);
  if (json is! Map<String, dynamic>) {
    throw const FormatException('The tracker list must be an object.');
  }
  final version = json['version'];
  if (version is! int || version < 1) {
    throw const FormatException('The tracker list has no version.');
  }
  final raw = json['trackers'];
  if (raw is! Map<String, dynamic> || raw.isEmpty || raw.length > _maxTrackers) {
    throw const FormatException('The tracker list has a wrong number of trackers.');
  }
  final out = <String, List<String>>{};
  for (final entry in raw.entries) {
    final name = entry.key.trim();
    final prefixes = entry.value;
    if (name.isEmpty || name.length > 60) {
      throw FormatException('Bad tracker name: ${entry.key}');
    }
    if (prefixes is! List<dynamic> || prefixes.isEmpty || prefixes.length > _maxPrefixes) {
      throw FormatException('Bad prefixes for $name');
    }
    final clean = <String>[];
    for (final prefix in prefixes) {
      if (prefix is! String || !_goodPrefix(prefix)) {
        throw FormatException('Bad prefix for $name: $prefix');
      }
      clean.add(prefix);
    }
    out[name] = clean;
  }
  return TrackerList(version, out);
}

/// The built-in list plus the downloaded one. A downloaded list can add
/// trackers and prefixes, it can never remove built-in ones.
Map<String, List<String>> mergeTrackers(
  Map<String, List<String>> base,
  Map<String, List<String>> extra,
) {
  final out = <String, List<String>>{
    for (final entry in base.entries) entry.key: List<String>.of(entry.value),
  };
  for (final entry in extra.entries) {
    final list = out.putIfAbsent(entry.key, () => <String>[]);
    for (final prefix in entry.value) {
      if (!list.contains(prefix)) list.add(prefix);
    }
  }
  return out;
}

enum TrackerUpdate { updated, upToDate }

/// The tracker list the scanner uses: the built-in one, extended by the last
/// list the user downloaded.
class TrackerStore {
  static const String _key = 'tracker_list_v1';

  static Map<String, List<String>> current = builtInTrackers;
  static int version = builtInTrackerVersion;
  static bool _loaded = false;

  /// Loads the saved list once. Safe to call again.
  static Future<void> ensureLoaded() async {
    if (_loaded) return;
    await load();
  }

  static Future<void> load() async {
    current = builtInTrackers;
    version = builtInTrackerVersion;
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(_key);
    if (saved != null) {
      try {
        _apply(parseTrackerList(saved));
      } on FormatException {
        // A damaged file is ignored. The built-in list keeps working.
      }
    }
    _loaded = true;
  }

  static void _apply(TrackerList list) {
    current = mergeTrackers(builtInTrackers, list.trackers);
    version = list.version > builtInTrackerVersion ? list.version : builtInTrackerVersion;
  }

  /// Downloads the newest list. Only called when the user asks for it.
  static Future<TrackerUpdate> update({http.Client? client}) async {
    await ensureLoaded();
    final web = client ?? http.Client();
    try {
      final response = await web
          .get(Uri.parse(trackerListUrl))
          .timeout(const Duration(seconds: 15));
      if (response.statusCode != 200) {
        throw HttpException('GitHub returned ${response.statusCode}');
      }
      final list = parseTrackerList(response.body);
      if (list.version <= version) return TrackerUpdate.upToDate;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_key, response.body);
      _apply(list);
      return TrackerUpdate.updated;
    } finally {
      if (client == null) web.close();
    }
  }
}
