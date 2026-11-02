import 'history.dart';
import 'score_history.dart';

const int _msPerDay = 86400000;
const int weekMillis = 7 * _msPerDay;

/// True when a week has passed since the last weekly summary.
bool weeklyDue(int lastMillis, int nowMillis) => nowMillis - lastMillis >= weekMillis;

class WeeklySummary {
  const WeeklySummary(this.title, this.text);

  final String title;
  final String text;
}

String _count(int n, String one, String many) => '$n ${n == 1 ? one : many}';

/// The text of the weekly notification: the score, how it moved, what changed
/// in the last 7 days and how many apps are Risky.
WeeklySummary buildWeeklySummary({
  required int score,
  required List<ScorePoint> trend,
  required List<ChangeEvent> events,
  required int nowMillis,
  required int risky,
}) {
  final parts = <String>[];

  // Compare with the last point that is a week old or older.
  final weekAgoDay = nowMillis ~/ _msPerDay - 7;
  ScorePoint? base;
  for (final p in trend) {
    if (p.day <= weekAgoDay) base = p;
  }
  if (base == null && trend.length >= 2 && trend.first.day < nowMillis ~/ _msPerDay) {
    base = trend.first;
  }
  var scoreText = 'Score $score/100';
  if (base != null) {
    final diff = score - base.score;
    if (diff > 0) {
      scoreText += ', up $diff since last week';
    } else if (diff < 0) {
      scoreText += ', down ${-diff} since last week';
    } else {
      scoreText += ', no change since last week';
    }
  }
  parts.add('$scoreText.');

  final recent = events.where((e) => e.time >= nowMillis - weekMillis).toList();
  int countOf(String type) => recent.where((e) => e.type == type).length;
  final bits = <String>[
    if (countOf('installed') > 0) _count(countOf('installed'), 'new app', 'new apps'),
    if (countOf('removed') > 0) _count(countOf('removed'), 'app removed', 'apps removed'),
    if (countOf('allowed') > 0)
      _count(countOf('allowed'), 'permission turned on', 'permissions turned on'),
    if (countOf('tracker') > 0) _count(countOf('tracker'), 'new tracker', 'new trackers'),
  ];
  parts.add(bits.isEmpty ? 'No changes this week.' : '${bits.join(', ')}.');

  if (risky > 0) {
    parts.add(risky == 1 ? '1 app is Risky.' : '$risky apps are Risky.');
  }
  return WeeklySummary('Your weekly Peekless summary', parts.join(' '));
}
