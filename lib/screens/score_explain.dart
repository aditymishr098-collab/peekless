import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../scoring.dart';
import '../texts.dart';

class ScoreExplainScreen extends StatelessWidget {
  const ScoreExplainScreen({super.key, required this.report});

  final AppReport report;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);
    final removed = report.breakdown.fold<int>(0, (sum, line) => sum + line.points);

    return Scaffold(
      appBar: AppBar(title: Text(l.explainTitle)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: [
          Text(report.app.name, style: text.titleLarge),
          const SizedBox(height: 4),
          Text(
            l.explainIntro,
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
                _Row(label: l.explainStart, value: '100', bold: true),
                if (report.breakdown.isEmpty)
                  _Row(
                    label: l.explainNothing,
                    note: l.explainNothingNote,
                    value: '0',
                  ),
                for (final line in report.breakdown)
                  _Row(
                    label: lineLabel(l, line),
                    note: lineNote(l, line),
                    value: '-${line.points}',
                    valueColor: scheme.error,
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(color: scheme.outlineVariant),
                ),
                _Row(label: l.explainScore, note: '100 - $removed', value: '${report.score}', bold: true),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(l.explainRules, style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          _Rule(l.rule1),
          _Rule(l.rule2),
          _Rule(l.rule3(trackerPoints, trackerMaxPoints)),
          _Rule(l.rule4(accessibilityPoints, deviceAdminPoints, notificationPoints)),
          _Rule(l.rule5(debuggablePoints, oldTargetPoints)),
          _Rule(l.rule6(unusualPenalty, unusualMaxGroups)),
          _Rule(l.rule7),
          const SizedBox(height: 8),
          Text(
            l.explainFooter,
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
