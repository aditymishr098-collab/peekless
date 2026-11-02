import 'package:flutter/material.dart';

import '../models.dart';

extension RiskStyle on RiskLevel {
  String get label => switch (this) {
        RiskLevel.risky => 'Risky',
        RiskLevel.medium => 'Medium',
        RiskLevel.safe => 'Safe',
      };

  String get overallLabel => switch (this) {
        RiskLevel.risky => 'High risk',
        RiskLevel.medium => 'Medium risk',
        RiskLevel.safe => 'Low risk',
      };

  Color container(ColorScheme scheme) => switch (this) {
        RiskLevel.risky => scheme.errorContainer,
        RiskLevel.medium => scheme.tertiaryContainer,
        RiskLevel.safe => scheme.primaryContainer,
      };

  Color onContainer(ColorScheme scheme) => switch (this) {
        RiskLevel.risky => scheme.onErrorContainer,
        RiskLevel.medium => scheme.onTertiaryContainer,
        RiskLevel.safe => scheme.onPrimaryContainer,
      };

  Color accent(ColorScheme scheme) => switch (this) {
        RiskLevel.risky => scheme.error,
        RiskLevel.medium => scheme.tertiary,
        RiskLevel.safe => scheme.primary,
      };
}

class RiskChip extends StatelessWidget {
  const RiskChip({super.key, required this.level, this.score});

  final RiskLevel level;
  final int? score;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: level.container(scheme),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        score == null ? level.label : '$score · ${level.label}',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: level.onContainer(scheme),
        ),
      ),
    );
  }
}
