import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../score_history.dart';

/// A small line chart of the phone score over the last days.
/// It needs at least two days of data.
class TrendCard extends StatelessWidget {
  const TrendCard({super.key, required this.points});

  final List<ScorePoint> points;

  @override
  Widget build(BuildContext context) {
    if (points.length < 2) return const SizedBox.shrink();
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);

    final first = points.first.score;
    final last = points.last.score;
    final diff = last - first;
    final days = points.length;
    final caption = diff == 0
        ? l.trendSame(days)
        : diff > 0
            ? l.trendUp(diff, days)
            : l.trendDown(-diff, days);

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l.trendTitle,
            style: text.titleMedium?.copyWith(fontWeight: FontWeight.w800),
          ),
          Text(
            caption,
            style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 96,
            width: double.infinity,
            child: CustomPaint(
              painter: _TrendPainter(
                points: points,
                line: scheme.primary,
                grid: scheme.outlineVariant,
                fill: scheme.primary.withAlpha(31),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrendPainter extends CustomPainter {
  _TrendPainter({
    required this.points,
    required this.line,
    required this.grid,
    required this.fill,
  });

  final List<ScorePoint> points;
  final Color line;
  final Color grid;
  final Color fill;

  @override
  void paint(Canvas canvas, Size size) {
    final gridPaint = Paint()
      ..color = grid
      ..strokeWidth = 1;
    // Guide lines at 100, 50 and 0.
    for (final value in const [100, 50, 0]) {
      final y = _y(value, size.height);
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }

    final firstDay = points.first.day;
    final span = (points.last.day - firstDay).clamp(1, 1 << 30);
    final offsets = [
      for (final p in points)
        Offset(
          (p.day - firstDay) / span * size.width,
          _y(p.score, size.height),
        ),
    ];

    final path = Path()..moveTo(offsets.first.dx, offsets.first.dy);
    for (final o in offsets.skip(1)) {
      path.lineTo(o.dx, o.dy);
    }

    final area = Path.from(path)
      ..lineTo(offsets.last.dx, size.height)
      ..lineTo(offsets.first.dx, size.height)
      ..close();
    canvas.drawPath(area, Paint()..color = fill);

    canvas.drawPath(
      path,
      Paint()
        ..color = line
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.5
        ..strokeJoin = StrokeJoin.round
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawCircle(offsets.last, 4, Paint()..color = line);
  }

  double _y(num score, double height) {
    final clamped = score.clamp(0, 100);
    return height - (clamped / 100) * height;
  }

  @override
  bool shouldRepaint(_TrendPainter old) =>
      old.points != points || old.line != line || old.grid != grid || old.fill != fill;
}
