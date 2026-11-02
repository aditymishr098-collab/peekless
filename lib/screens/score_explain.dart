import 'package:flutter/material.dart';

import '../scoring.dart';

class ScoreExplainScreen extends StatelessWidget {
  const ScoreExplainScreen({super.key, required this.report});

  final AppReport report;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final removed = report.breakdown.fold<int>(0, (sum, line) => sum + line.points);

    return Scaffold(
      appBar: AppBar(title: const Text('How the score works')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: [
          Text(report.app.name, style: text.titleLarge),
          const SizedBox(height: 4),
          Text(
            'Every app starts at 100. Points are removed for what the app can do.',
            style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: scheme.surfaceContainer,
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                const _Row(label: 'Start', value: '100', bold: true),
                if (report.breakdown.isEmpty)
                  const _Row(
                    label: 'Nothing removed',
                    note: 'No sensitive permissions and no known trackers',
                    value: '0',
                  ),
                for (final line in report.breakdown)
                  _Row(
                    label: line.label,
                    note: line.note,
                    value: '-${line.points}',
                    valueColor: scheme.error,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(color: scheme.outlineVariant),
                ),
                _Row(label: 'Score', note: '100 - $removed', value: '${report.score}', bold: true),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text('The rules', style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          const _Rule(
            'Only the heaviest permission in each group counts. '
            'For example, precise location and approximate location are counted once.',
          ),
          const _Rule(
            'Special permissions (all files, draw over apps, install apps) '
            'count half when an app only requests them.',
          ),
          const _Rule(
            'Each known tracker removes $trackerPoints points, up to $trackerMaxPoints.',
          ),
          const _Rule(
            'If a permission is unusual for the kind of app (for example a microphone '
            'in a flashlight), $unusualPenalty extra points are removed, for up to '
            '$unusualMaxGroups permission groups.',
          ),
          const _Rule('70 or more is Safe. 40 to 69 is Medium. Below 40 is Risky.'),
          const SizedBox(height: 8),
          Text(
            'The score shows what an app is able to do, not what it is doing right now.',
            style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.label,
    required this.value,
    this.note = '',
    this.bold = false,
    this.valueColor,
  });

  final String label;
  final String note;
  final String value;
  final bool bold;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: text.bodyLarge?.copyWith(
                    fontWeight: bold ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
                if (note.isNotEmpty)
                  Text(
                    note,
                    style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(
            value,
            style: text.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _Rule extends StatelessWidget {
  const _Rule(this.textValue);

  final String textValue;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7, right: 10),
            child: Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(color: scheme.primary, shape: BoxShape.circle),
            ),
          ),
          Expanded(child: Text(textValue, style: text.bodyMedium)),
        ],
      ),
    );
  }
}
