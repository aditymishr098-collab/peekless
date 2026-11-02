import 'package:flutter/material.dart';

import '../checks.dart';
import '../controller.dart';
import '../screens/checks.dart';

/// The "Security checks" card on Home. It shows the checks that found
/// something, and how many apps are offline.
class SecurityCard extends StatelessWidget {
  const SecurityCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final reports = controller.reports;

    final flagged = <MapEntry<SecurityCheck, int>>[];
    var offline = 0;
    for (final check in securityChecks) {
      final count = appsFor(check, reports).length;
      if (check.good) {
        offline = count;
      } else if (count > 0) {
        flagged.add(MapEntry(check, count));
      }
    }
    final shown = flagged.take(4).toList();

    return Material(
      color: scheme.surfaceContainer,
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(builder: (_) => const ChecksScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 8, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.shield_outlined, color: scheme.primary),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Security checks',
                      style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Icon(Icons.chevron_right, color: scheme.onSurfaceVariant),
                ],
              ),
              const SizedBox(height: 8),
              if (shown.isEmpty)
                Text(
                  'No security flags found on this phone.',
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                )
              else
                for (final entry in shown)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6, right: 8),
                    child: Row(
                      children: [
                        Icon(Icons.warning_amber_rounded, size: 18, color: scheme.error),
                        const SizedBox(width: 8),
                        Expanded(child: Text(entry.key.title, style: text.bodyMedium)),
                        Text(
                          '${entry.value}',
                          style: text.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: scheme.error,
                          ),
                        ),
                      ],
                    ),
                  ),
              if (offline > 0)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Row(
                    children: [
                      Icon(Icons.cloud_off_outlined, size: 18, color: scheme.primary),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          offline == 1
                              ? '1 app works fully offline'
                              : '$offline apps work fully offline',
                          style: text.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
