import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller.dart';
import '../export.dart';
import '../l10n/app_localizations.dart';
import '../l10n_resolve.dart';
import '../language_names.dart';
import '../native_bridge.dart';
import '../tracker_store.dart';
import '../updater.dart';
import '../widgets/update_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _checkForUpdates(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l.updChecking)));
    try {
      final info = await Updater.check();
      messenger.hideCurrentSnackBar();
      if (info == null) {
        messenger.showSnackBar(
          SnackBar(content: Text(l.updLatest)),
        );
        return;
      }
      if (!context.mounted) return;
      await showDialog<void>(
        context: context,
        builder: (_) => UpdateDialog(info: info),
      );
    } catch (_) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text(l.updFailed)),
        );
    }
  }

  Future<void> _toggleAlerts(BuildContext context, bool value) async {
    final messenger = ScaffoldMessenger.of(context);
    final error = await controller.setAlertsEnabled(value);
    if (error != null) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(error)));
    }
  }

  Future<void> _toggleWeekly(BuildContext context, bool value) async {
    final messenger = ScaffoldMessenger.of(context);
    final error = await controller.setWeeklyEnabled(value);
    if (error != null) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(error)));
    }
  }

  Future<void> _openUsage(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    try {
      await controller.openUsageAccess();
    } catch (_) {
      messenger.showSnackBar(
        SnackBar(content: Text(l.usageOpenFailed)),
      );
    }
  }

  Future<void> _pickLanguage(BuildContext context) async {
    final l = AppLocalizations.of(context);
    final current = controller.locale == null ? 'system' : codeFromLocale(controller.locale!);
    final choice = await showDialog<String>(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(l.settingsLanguage),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop('system'),
            child: _LanguageRow(label: l.languageSystem, selected: current == 'system'),
          ),
          for (final entry in languageNames.entries)
            SimpleDialogOption(
              onPressed: () => Navigator.of(context).pop(entry.key),
              child: _LanguageRow(label: entry.value, selected: current == entry.key),
            ),
        ],
      ),
    );
    if (choice == null) return;
    await controller.setLocale(localeFromCode(choice));
  }

  Future<void> _updateTrackers(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l.trackerListUpdating)));
    try {
      final result = await controller.updateTrackerList();
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              result == TrackerUpdate.updated
                  ? l.trackerListUpdated(TrackerStore.current.length)
                  : l.trackerListCurrent,
            ),
          ),
        );
    } catch (_) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.trackerListFailed)));
    }
  }

  Future<void> _export(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    final kind = await showDialog<String>(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(l.settingsExport),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop('pdf'),
            child: const Text('PDF'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.of(context).pop('json'),
            child: const Text('JSON'),
          ),
        ],
      ),
    );
    if (kind == null) return;
    try {
      final now = DateTime.now();
      final dir = await NativeBridge.exportsDir();
      final String path;
      final String mime;
      if (kind == 'pdf') {
        path = await NativeBridge.buildPdf(
          buildPdfDoc(
            l: l,
            reports: controller.reports,
            trusted: controller.trusted,
            score: controller.overallScore,
            level: controller.overallLevel,
            now: now,
          ),
        );
        mime = 'application/pdf';
      } else {
        final version = await Updater.currentVersion();
        final day = now.toIso8601String().substring(0, 10);
        path = '$dir/peekless-report-$day.json';
        await File(path).writeAsString(
          buildReportJson(
            reports: controller.reports,
            score: controller.overallScore,
            level: controller.overallLevel,
            version: version,
            now: now,
            trusted: controller.trusted,
          ),
        );
        mime = 'application/json';
      }
      await NativeBridge.shareFile(path, mime, l.settingsExport);
    } catch (_) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.exportFailed)));
    }
  }

  Future<void> _addTile(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    var added = false;
    try {
      added = await NativeBridge.requestAddTile();
    } catch (_) {
      added = false;
    }
    if (!added) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.quickManual)));
    }
  }

  Future<void> _addWidget(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    var added = false;
    try {
      added = await NativeBridge.requestAddWidget();
    } catch (_) {
      added = false;
    }
    if (!added) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.quickManual)));
    }
  }

  Future<void> _openGithub() async {
    await launchUrl(
      Uri.parse('https://github.com/lumio-apps/peekless'),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final l = AppLocalizations.of(context);
        final iconColor = scheme.onSurfaceVariant;

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(l.navSettings, style: text.headlineMedium?.copyWith(fontWeight: FontWeight.w800, letterSpacing: -0.5)),
            ),
            const SizedBox(height: 8),
            _SectionLabel(l.settingsAppearance),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.contrast, color: iconColor),
                  title: Text(l.settingsTheme),
                  subtitle: Text(l.settingsThemeBody),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: SegmentedButton<ThemeMode>(
                    segments: [
                      ButtonSegment<ThemeMode>(value: ThemeMode.system, label: Text(l.themeSystem)),
                      ButtonSegment<ThemeMode>(value: ThemeMode.light, label: Text(l.themeLight)),
                      ButtonSegment<ThemeMode>(value: ThemeMode.dark, label: Text(l.themeDark)),
                    ],
                    selected: {controller.themeMode},
                    onSelectionChanged: (selection) =>
                        controller.setThemeMode(selection.first),
                  ),
                ),
              ],
            ),
            _SectionLabel(l.settingsScanning),
            _Group(
              children: [
                SwitchListTile(
                  secondary: Icon(Icons.notifications_outlined, color: iconColor),
                  title: Text(l.settingsAlerts),
                  subtitle: Text(l.settingsAlertsBody),
                  value: controller.alertsEnabled,
                  onChanged: (value) => _toggleAlerts(context, value),
                ),
                SwitchListTile(
                  secondary: Icon(Icons.event_note_outlined, color: iconColor),
                  title: Text(l.settingsWeekly),
                  subtitle: Text(l.settingsWeeklyBody),
                  value: controller.weeklyEnabled,
                  onChanged: (value) => _toggleWeekly(context, value),
                ),
                ListTile(
                  leading: Icon(Icons.timer_outlined, color: iconColor),
                  title: Text(l.settingsUsage),
                  subtitle: Text(
                    controller.usageAccess ? l.settingsUsageOn : l.settingsUsageOff,
                  ),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _openUsage(context),
                ),
                SwitchListTile(
                  secondary: Icon(Icons.phone_android, color: iconColor),
                  title: Text(l.settingsSystemApps),
                  subtitle: Text(l.settingsSystemAppsBody),
                  value: controller.includeSystem,
                  onChanged: controller.setIncludeSystem,
                ),
                ListTile(
                  leading: Icon(Icons.refresh, color: iconColor),
                  title: Text(l.settingsRescan),
                  subtitle: Text(l.settingsRescanBody),
                  onTap: controller.scan,
                ),
              ],
            ),
            _SectionLabel(l.settingsQuick),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.widgets_outlined, color: iconColor),
                  title: Text(l.quickWidget),
                  subtitle: Text(l.quickWidgetBody),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _addWidget(context),
                ),
                ListTile(
                  leading: Icon(Icons.dashboard_customize_outlined, color: iconColor),
                  title: Text(l.quickTile),
                  subtitle: Text(l.quickTileBody),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _addTile(context),
                ),
                ListTile(
                  leading: Icon(Icons.ios_share, color: iconColor),
                  title: Text(l.settingsExport),
                  subtitle: Text(l.settingsExportBody),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  enabled: controller.reports.isNotEmpty,
                  onTap: () => _export(context),
                ),
              ],
            ),
            _SectionLabel(l.settingsUpdates),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.track_changes, color: iconColor),
                  title: Text(l.settingsTrackerList),
                  subtitle: Text(l.settingsTrackerListBody(TrackerStore.current.length)),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _updateTrackers(context),
                ),
                ListTile(
                  leading: Icon(Icons.download, color: iconColor),
                  title: Text(l.settingsCheckUpdates),
                  subtitle: FutureBuilder<String>(
                    future: Updater.currentVersion(),
                    builder: (context, snapshot) {
                      final version = snapshot.data ?? '';
                      return Text(l.settingsVersion(version));
                    },
                  ),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _checkForUpdates(context),
                ),
              ],
            ),
            _SectionLabel(l.settingsAbout),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.language, color: iconColor),
                  title: Text(l.settingsLanguage),
                  subtitle: Text(
                    controller.locale == null
                        ? l.languageSystem
                        : (languageNames[codeFromLocale(controller.locale!)] ?? l.languageSystem),
                  ),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _pickLanguage(context),
                ),
                ListTile(
                  leading: Icon(Icons.lock_outline, color: iconColor),
                  title: Text(l.settingsPrivacy),
                  subtitle: Text(l.settingsPrivacyBody),
                ),
                ListTile(
                  leading: Icon(Icons.code, color: iconColor),
                  title: Text(l.settingsOpenSource),
                  subtitle: Text(l.settingsOpenSourceBody),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: _openGithub,
                ),
                ListTile(
                  leading: Icon(Icons.groups_outlined, color: iconColor),
                  title: Text(l.settingsDeveloped),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: scheme.primary),
      ),
    );
  }
}

class _Group extends StatelessWidget {
  const _Group({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: scheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: BorderSide(color: scheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(children: children),
    );
  }
}

class _LanguageRow extends StatelessWidget {
  const _LanguageRow({required this.label, required this.selected});

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Expanded(child: Text(label)),
        if (selected) Icon(Icons.check, color: scheme.primary),
      ],
    );
  }
}
