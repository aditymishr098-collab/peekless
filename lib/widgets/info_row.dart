import 'package:flutter/material.dart';

/// A row with an icon, a title and one line of detail. Used for the
/// "Security" section on the app screen.
class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.warn = false,
    this.good = false,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool warn;
  final bool good;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final Color iconColor = warn
        ? scheme.error
        : good
            ? scheme.primary
            : scheme.onSurfaceVariant;

    return Container(
      constraints: const BoxConstraints(minHeight: 56),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: text.bodyLarge),
                Text(
                  subtitle,
                  style: text.bodySmall?.copyWith(
                    color: warn ? scheme.error : scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
