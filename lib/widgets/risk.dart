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

  /// A text colour that is readable on the page background.
  Color text(ColorScheme scheme) => switch (this) {
        RiskLevel.risky => scheme.brightness == Brightness.dark
            ? scheme.onErrorContainer
            : scheme.error,
        RiskLevel.medium => scheme.brightness == Brightness.dark
            ? scheme.tertiary
            : scheme.onTertiaryContainer,
        RiskLevel.safe => scheme.brightness == Brightness.dark
            ? scheme.onPrimaryContainer
            : scheme.primary,
      };

  IconData get icon => switch (this) {
        RiskLevel.risky => Icons.gpp_bad_outlined,
        RiskLevel.medium => Icons.warning_amber_rounded,
        RiskLevel.safe => Icons.verified_user_outlined,
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: level.container(scheme),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        score == null ? name : '$score · $name',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: level.onContainer(scheme),
        ),
      ),
    );
  }
}
