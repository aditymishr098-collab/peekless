import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models.dart';
import '../texts.dart';

extension RiskStyle on RiskLevel {
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
    final name = levelName(AppLocalizations.of(context), level);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: level.container(scheme),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        score == null ? name : '$score · $name',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: level.onContainer(scheme),
        ),
      ),
    );
  }
}
