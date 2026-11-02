import 'history.dart';
import 'l10n/app_localizations.dart';
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

/// The text of the weekly notification: the score, how it moved, what changed
/// in the last 7 days and how many apps are Risky.
WeeklySummary buildWeeklySummary(
  AppLocalizations l, {
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
  var scoreText = l.weeklyScore(score);
  if (base != null) {
    final diff = score - base.score;
    if (diff > 0) {
      scoreText = l.weeklyUp(score, diff);
    } else if (diff < 0) {
      scoreText = l.weeklyDown(score, -diff);
    } else {
      scoreText = l.weeklySame(score);
    }
  }
  parts.add(scoreText);

  final recent = events.where((e) => e.time >= nowMillis - weekMillis).toList();
  int countOf(String type) => recent.where((e) => e.type == type).length;
  final bits = <String>[
    if (countOf('installed') > 0) l.weeklyNewApps(countOf('installed')),
    if (countOf('removed') > 0) l.weeklyRemoved(countOf('removed')),
    if (countOf('allowed') > 0) l.weeklyAllowed(countOf('allowed')),
    if (countOf('tracker') > 0) l.weeklyTrackers(countOf('tracker')),
  ];
  parts.add(bits.isEmpty ? l.weeklyNone : l.weeklyChanges(bits.join(', ')));

  if (risky > 0) parts.add(l.weeklyRisky(risky));
  return WeeklySummary(l.weeklyTitle, parts.join(' '));
}
