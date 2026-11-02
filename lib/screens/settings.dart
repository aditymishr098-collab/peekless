import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller.dart';
import '../l10n/app_localizations.dart';
import '../l10n_resolve.dart';
import '../language_names.dart';
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
              child: Text(l.navSettings, style: text.headlineMedium),
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
            _SectionLabel(l.settingsUpdates),
            _Group(
              children: [
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
      borderRadius: BorderRadius.circular(24),
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
