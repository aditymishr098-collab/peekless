import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/// The phone score on one day. [day] counts days since 1 Jan 1970 (UTC).
class ScorePoint {
  const ScorePoint(this.day, this.score);

  final int day;
  final int score;
}

const int _msPerDay = 86400000;

/// Adds today's score. A second scan on the same day replaces the first one.
/// Only the last [max] days are kept.
List<ScorePoint> mergeScore(
  List<ScorePoint> old,
  int score,
  int nowMillis, {
  int max = 90,
}) {
  final day = nowMillis ~/ _msPerDay;
  final list = List<ScorePoint>.of(old);
  if (list.isNotEmpty && list.last.day == day) {
    list[list.length - 1] = ScorePoint(day, score);
  } else {
    list.add(ScorePoint(day, score));
  }
  if (list.length > max) {
    return list.sublist(list.length - max);
  }
  return list;
}

/// Stores the daily phone score on the phone, for the trend chart.
class ScoreHistory {
  static const String _key = 'score_history_v1';

  static Future<List<ScorePoint>> load() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    return _decode(prefs.getString(_key));
  }

  static Future<List<ScorePoint>> record(int score) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    final merged = mergeScore(
      _decode(prefs.getString(_key)),
      score,
      DateTime.now().toUtc().millisecondsSinceEpoch,
    );
    await prefs.setString(
      _key,
      jsonEncode(merged.map((p) => [p.day, p.score]).toList()),
    );
    return merged;
  }

  static List<ScorePoint> _decode(String? raw) {
    if (raw == null) return const <ScorePoint>[];
    try {
      final list = jsonDecode(raw) as List<dynamic>;
      return list.map((e) {
        final pair = e as List<dynamic>;
        return ScorePoint(pair[0] as int, pair[1] as int);
      }).toList();
    } catch (_) {
      return const <ScorePoint>[];
    }
  }
}
