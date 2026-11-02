import 'dart:math' as math;

import 'package:flutter/material.dart';

class ScoreRing extends StatelessWidget {
  const ScoreRing({
    super.key,
    required this.score,
    required this.color,
    this.size = 156,
  });

  final int score;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Semantics(
      label: 'Privacy score $score out of 100',
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: score / 100),
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeOutCubic,
              builder: (context, value, _) {
                return CustomPaint(
                  size: Size.square(size),
                  painter: _RingPainter(
                    fraction: value,
                    track: scheme.outlineVariant,
                    progress: color,
                    stroke: size * 0.08,
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$score',
                  style: TextStyle(
                    fontSize: size * 0.34,
                    fontWeight: FontWeight.w500,
                    color: scheme.onSurface,
                    height: 1.1,
                  ),
                ),
                Text(
                  'of 100',
                  style: TextStyle(fontSize: 14, color: scheme.onSurfaceVariant),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.fraction,
    required this.track,
    required this.progress,
    required this.stroke,
  });

  final double fraction;
  final Color track;
  final Color progress;
  final double stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset(stroke / 2, stroke / 2) &
        Size(size.width - stroke, size.height - stroke);
    final base = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..color = track;
    canvas.drawArc(rect, 0, 2 * math.pi, false, base);
    final arc = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round
      ..color = progress;
    canvas.drawArc(rect, -math.pi / 2, 2 * math.pi * fraction, false, arc);
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.fraction != fraction ||
      old.track != track ||
      old.progress != progress ||
      old.stroke != stroke;
}
