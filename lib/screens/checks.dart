import 'package:flutter/material.dart';

import '../checks.dart';
import '../controller.dart';
import '../scoring.dart';
import '../widgets/app_tile.dart';

/// Every security check with the apps that match it.
class ChecksScreen extends StatelessWidget {
  const ChecksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final reports = controller.reports;

        return Scaffold(
          appBar: AppBar(title: const Text('Security checks')),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 12),
                child: Text(
                  'Things that are worth a second look. Tap a check to see the apps.',
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                ),
              ),
              for (final check in securityChecks)
                if (check.needsUsage && !controller.usageAccess)
                  const _UsagePrompt()
                else
                  _CheckTile(check: check, apps: appsFor(check, reports)),
            ],
          ),
        );
      },
    );
  }
}

class _CheckTile extends StatelessWidget {
  const _CheckTile({required this.check, required this.apps});

  final SecurityCheck check;
  final List<AppReport> apps;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final count = apps.length;
    final flagged = count > 0 && !check.good;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            leading: Icon(
              flagged
                  ? Icons.warning_amber_rounded
                  : check.good
                      ? Icons.cloud_off_outlined
                      : Icons.check_circle_outline,
              color: flagged ? scheme.error : scheme.primary,
            ),
            title: Text(check.title),
            subtitle: Text(
              count == 0
                  ? 'None found'
                  : '$count ${count == 1 ? 'app' : 'apps'}',
            ),
            childrenPadding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    check.description,
                    style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ),
              ),
              if (count == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('None found.', style: text.bodyMedium),
                  ),
                )
              else
                for (final report in apps)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: AppTile(report: report),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Shown instead of the "unused apps" check while Usage access is off.
class _UsagePrompt extends StatelessWidget {
  const _UsagePrompt();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: scheme.surfaceContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.timer_outlined, color: scheme.onSurfaceVariant),
                const SizedBox(width: 12),
                Expanded(
                  child: Text('Unused apps with sensitive access', style: text.bodyLarge),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Optional. Turn on Usage access to find apps you have not opened for a '
              'long time but that can still use your microphone, location or contacts. '
              'The data never leaves your phone.',
              style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: FilledButton.tonal(
                onPressed: controller.openUsageAccess,
                child: const Text('Turn on Usage access'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
