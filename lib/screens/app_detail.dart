import 'package:flutter/material.dart';

import '../checks.dart';
import '../controller.dart';
import '../install_source.dart';
import '../models.dart';
import '../scoring.dart';
import '../widgets/info_row.dart';
import '../widgets/risk.dart';
import 'score_explain.dart';

class AppDetailScreen extends StatelessWidget {
  const AppDetailScreen({super.key, required this.report});

  final AppReport report;

  Future<void> _openSettings(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    try {
      await controller.openAppSettings(report.app.packageName);
    } catch (_) {
      messenger.showSnackBar(
        const SnackBar(content: Text('Could not open app settings.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final app = report.app;

    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final trusted = controller.isTrusted(app.packageName);
        return Scaffold(
          appBar: AppBar(),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: scheme.secondaryContainer,
                    foregroundColor: scheme.onSecondaryContainer,
                    child: Text(
                      app.initial,
                      style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(app.name, style: text.headlineSmall),
                        Text(
                          app.packageName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '${report.score}',
                              style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.w500,
                                height: 1,
                                color: report.level.accent(scheme),
                              ),
                            ),
                            const SizedBox(height: 8),
                            RiskChip(level: report.level),
                          ],
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            report.summary,
                            style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => ScoreExplainScreen(report: report),
                            ),
                          );
                        },
                        icon: const Icon(Icons.help_outline),
                        label: const Text('How is this score calculated?'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(24),
                ),
                clipBehavior: Clip.antiAlias,
                child: SwitchListTile(
                  secondary: Icon(Icons.verified_outlined, color: scheme.onSurfaceVariant),
                  title: const Text('I trust this app'),
                  subtitle: const Text('Leave it out of the Risky count and alerts'),
                  value: trusted,
                  onChanged: (value) => controller.setTrusted(app.packageName, value),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Security',
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              ..._securityRows(app),
              const SizedBox(height: 12),
              Text(
                'Permissions',
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              if (report.findings.isEmpty)
                Text(
                  'This app does not ask for any sensitive permissions.',
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                )
              else
                for (final finding in report.findings)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: _PermissionRow(finding: finding),
                  ),
              const SizedBox(height: 12),
              Text(
                'Trackers found (${app.trackers.length})',
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              if (app.trackers.isEmpty)
                Text(
                  'No known trackers found.',
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                )
              else
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final tracker in app.trackers) Chip(label: Text(tracker)),
                  ],
                ),
              const SizedBox(height: 12),
              Text(
                'Peekless shows what an app is able to do, not what it is doing right now. '
                'Trackers are found from the app manifest, so some may be missed.',
                style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
              child: FilledButton.icon(
                onPressed: () => _openSettings(context),
                icon: const Icon(Icons.open_in_new),
                label: const Text('Open app settings'),
                style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// The "Security" section: where the app came from, whether it can go online,
/// special access and build flags.
List<Widget> _securityRows(AppInfo app) {
  final outside = installedOutsideStore(app.installer, isSystem: app.isSystem);
  final rows = <Widget>[
    InfoRow(
      icon: Icons.storefront_outlined,
      title: 'Source',
      subtitle: sourceLabel(app.installer, isSystem: app.isSystem),
      warn: outside,
    ),
    app.canUseInternet
        ? const InfoRow(
            icon: Icons.public,
            title: 'Internet',
            subtitle: 'Can use the internet',
          )
        : const InfoRow(
            icon: Icons.cloud_off_outlined,
            title: 'Offline',
            subtitle: 'No internet permission, so it cannot send data online',
            good: true,
          ),
    for (final id in app.special)
      if (specialPoints.containsKey(id))
        InfoRow(
          icon: Icons.admin_panel_settings_outlined,
          title: specialLabel(id),
          subtitle: specialWhy(id),
          warn: true,
        ),
    if (app.daysUnused(DateTime.now().millisecondsSinceEpoch) case final days?)
      InfoRow(
        icon: Icons.timer_outlined,
        title: 'Last opened',
        subtitle: days == 0
            ? 'Today'
            : days == 1
                ? 'Yesterday'
                : days >= unusedDays
                    ? 'Not opened for $days days'
                    : '$days days ago',
        warn: days >= unusedDays && !app.isSystem,
      ),
    if (app.debuggable)
      const InfoRow(
        icon: Icons.bug_report_outlined,
        title: 'Debuggable build',
        subtitle: 'A test version that can be inspected from a computer',
        warn: true,
      ),
    if (app.targetSdk > 0 && app.targetSdk < oldTargetBelow)
      InfoRow(
        icon: Icons.history,
        title: 'Built for very old Android',
        subtitle: 'API level ${app.targetSdk}, so newer privacy protections are skipped',
        warn: true,
      ),
  ];
  return [
    for (final row in rows)
      Padding(padding: const EdgeInsets.only(bottom: 8), child: row),
  ];
}

class _PermissionRow extends StatelessWidget {
  const _PermissionRow({required this.finding});

  final Finding finding;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final String note;
    final Color noteColor;
    if (finding.sensitive) {
      note = 'Sensitive: can ${finding.rule.why}';
      noteColor = scheme.error;
    } else if (finding.active) {
      note = 'Can ${finding.rule.why}';
      noteColor = scheme.onSurfaceVariant;
    } else {
      note = 'Not allowed';
      noteColor = scheme.onSurfaceVariant;
    }

    final String chipText;
    final Color chipBackground;
    final Color chipForeground;
    switch (finding.status) {
      case PermStatus.allowed:
        chipText = 'Allowed';
        chipBackground = finding.sensitive ? scheme.errorContainer : scheme.secondaryContainer;
        chipForeground = finding.sensitive ? scheme.onErrorContainer : scheme.onSecondaryContainer;
      case PermStatus.requested:
        chipText = 'Requested';
        chipBackground = scheme.tertiaryContainer;
        chipForeground = scheme.onTertiaryContainer;
      case PermStatus.notAllowed:
        chipText = 'Not allowed';
        chipBackground = scheme.primaryContainer;
        chipForeground = scheme.onPrimaryContainer;
    }

    return Container(
      constraints: const BoxConstraints(minHeight: 56),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(finding.rule.label, style: text.bodyLarge),
                Text(note, style: text.bodySmall?.copyWith(color: noteColor)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: chipBackground,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              chipText,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: chipForeground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
