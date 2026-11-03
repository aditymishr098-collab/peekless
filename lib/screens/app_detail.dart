import 'package:flutter/material.dart';

import '../security_checks.dart';
import '../controller.dart';
import '../install_source.dart';
import '../l10n/app_localizations.dart';
import '../models.dart';
import '../scoring.dart';
import '../texts.dart';
import '../widgets/info_row.dart';
import '../widgets/risk.dart';
import 'score_explain.dart';

class AppDetailScreen extends StatelessWidget {
  const AppDetailScreen({super.key, required this.report});

  final AppReport report;

  Future<void> _openSettings(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    try {
      await controller.openAppSettings(report.app.packageName);
    } catch (_) {
      messenger.showSnackBar(
        SnackBar(content: Text(l.couldNotOpenSettings)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);
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
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: scheme.outlineVariant),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: report.level.container(scheme),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        app.initial,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: report.level.onContainer(scheme),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            app.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: text.titleLarge?.copyWith(fontWeight: FontWeight.w800),
                          ),
                          Text(
                            app.packageName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: report.level.container(scheme),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: report.level.accent(scheme).withAlpha(110)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '${report.score}',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w800,
                              height: 1.05,
                              color: report.level.onContainer(scheme),
                            ),
                          ),
                          Text(
                            l.scoreOf100,
                            style: TextStyle(
                              fontSize: 11,
                              color: report.level.onContainer(scheme),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
                decoration: BoxDecoration(
                  color: report.level.container(scheme),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(report.level.icon, size: 32, color: report.level.onContainer(scheme)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                overallLabel(l, report.level),
                                style: text.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: report.level.onContainer(scheme),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                summaryFor(l, report),
                                style: text.bodyMedium?.copyWith(
                                  color: report.level.onContainer(scheme),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => ScoreExplainScreen(report: report),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: report.level.onContainer(scheme),
                        ),
                        icon: const Icon(Icons.help_outline),
                        label: Text(l.howScore),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: scheme.outlineVariant),
                ),
                clipBehavior: Clip.antiAlias,
                child: SwitchListTile(
                  secondary: Icon(Icons.verified_outlined, color: scheme.onSurfaceVariant),
                  title: Text(l.trustApp),
                  subtitle: Text(l.detailTrustBody),
                  value: trusted,
                  onChanged: (value) => controller.setTrusted(app.packageName, value),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                l.detailSecurity,
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              ..._securityRows(l, app),
              const SizedBox(height: 12),
              Text(
                l.navPermissions,
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              if (report.findings.isEmpty)
                Text(
                  l.detailNoPerms,
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
                l.detailTrackers(app.trackers.length),
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              if (app.trackers.isEmpty)
                Text(
                  l.noTrackers,
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                )
              else
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final tracker in app.trackers)
                      _TrackerPill(
                        name: tracker,
                        fromCode: app.deepTrackers.contains(tracker),
                      ),
                  ],
                ),
              if (app.deepTrackers.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  l.trackersFromCode(app.deepTrackers.length),
                  style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                ),
              ],
              const SizedBox(height: 12),
              Text(
                l.detailDisclaimer,
                style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
              ),
            ],
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
              child: OutlinedButton.icon(
                onPressed: () => _openSettings(context),
                icon: const Icon(Icons.shield_outlined),
                label: Text(l.openAppSettings),
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(54),
                  foregroundColor: scheme.primary,
                  side: BorderSide(color: scheme.primary, width: 1.5),
                ),
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
List<Widget> _securityRows(AppLocalizations l, AppInfo app) {
  final outside = installedOutsideStore(app.installer, isSystem: app.isSystem);
  final days = app.daysUnused(DateTime.now().millisecondsSinceEpoch);
  final rows = <Widget>[
    InfoRow(
      icon: Icons.storefront_outlined,
      title: l.detailSource,
      subtitle: sourceLabel(l, app.installer, isSystem: app.isSystem),
      warn: outside,
    ),
    app.canUseInternet
        ? InfoRow(
            icon: Icons.public,
            title: l.detailInternet,
            subtitle: l.detailInternetYes,
          )
        : InfoRow(
            icon: Icons.cloud_off_outlined,
            title: l.detailOffline,
            subtitle: l.detailOfflineBody,
            good: true,
          ),
    for (final id in app.special)
      if (specialPoints.containsKey(id))
        InfoRow(
          icon: Icons.admin_panel_settings_outlined,
          title: specialLabel(l, id),
          subtitle: specialWhy(l, id),
          warn: true,
        ),
    if (days != null)
      InfoRow(
        icon: Icons.timer_outlined,
        title: l.detailLastOpened,
        subtitle: days == 0
            ? l.today
            : days == 1
                ? l.yesterday
                : l.daysSince(days),
        warn: days >= unusedDays && !app.isSystem,
      ),
    if (app.debuggable)
      InfoRow(
        icon: Icons.bug_report_outlined,
        title: l.scoreDebuggable,
        subtitle: l.detailDebuggableBody,
        warn: true,
      ),
    if (app.targetSdk > 0 && app.targetSdk < oldTargetBelow)
      InfoRow(
        icon: Icons.history,
        title: l.scoreOldTarget,
        subtitle: l.detailOldBody(app.targetSdk),
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
    final l = AppLocalizations.of(context);

    final String note;
    final Color noteColor;
    if (finding.sensitive) {
      note = l.sensitiveNote(ruleWhy(l, finding.rule));
      noteColor = scheme.error;
    } else if (finding.active) {
      note = ruleWhy(l, finding.rule);
      noteColor = scheme.onSurfaceVariant;
    } else {
      note = l.chipNotAllowed;
      noteColor = scheme.onSurfaceVariant;
    }

    final String chipText;
    final Color chipBackground;
    final Color chipForeground;
    switch (finding.status) {
      case PermStatus.allowed:
        chipText = l.chipAllowed;
        chipBackground = finding.sensitive ? scheme.errorContainer : scheme.secondaryContainer;
        chipForeground = finding.sensitive ? scheme.onErrorContainer : scheme.onSecondaryContainer;
      case PermStatus.requested:
        chipText = l.chipRequested;
        chipBackground = scheme.tertiaryContainer;
        chipForeground = scheme.onTertiaryContainer;
      case PermStatus.notAllowed:
        chipText = l.chipNotAllowed;
        chipBackground = scheme.primaryContainer;
        chipForeground = scheme.onPrimaryContainer;
    }

    return Container(
      constraints: const BoxConstraints(minHeight: 56),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ruleLabel(l, finding.rule),
                  style: text.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(note, style: text.bodySmall?.copyWith(color: noteColor)),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: chipBackground,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Text(
              chipText,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: chipForeground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrackerPill extends StatelessWidget {
  const _TrackerPill({required this.name, this.fromCode = false});

  final String name;

  /// True when only the deep scan found this tracker.
  final bool fromCode;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final initial = name.isEmpty ? '?' : String.fromCharCode(name.runes.first).toUpperCase();
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(6, 6, 14, 6),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: scheme.errorContainer,
              shape: BoxShape.circle,
            ),
            child: Text(
              initial,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: scheme.onErrorContainer,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(name, style: text.bodyMedium?.copyWith(fontWeight: FontWeight.w600)),
          if (fromCode) ...[
            const SizedBox(width: 6),
            Icon(Icons.code, size: 16, color: scheme.onSurfaceVariant),
          ],
        ],
      ),
    );
  }
}
