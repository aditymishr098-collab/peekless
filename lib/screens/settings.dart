import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller.dart';
import '../updater.dart';
import '../widgets/update_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<void> _checkForUpdates(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('Checking for updates...')));
    try {
      final info = await Updater.check();
      messenger.hideCurrentSnackBar();
      if (info == null) {
        messenger.showSnackBar(
          const SnackBar(content: Text('You have the latest version.')),
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
          const SnackBar(content: Text('Could not check for updates. Try again later.')),
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
        final iconColor = scheme.onSurfaceVariant;

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text('Settings', style: text.headlineMedium),
            ),
            const SizedBox(height: 8),
            const _SectionLabel('Appearance'),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.contrast, color: iconColor),
                  title: const Text('Theme'),
                  subtitle: const Text('Follows your phone by default'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: SegmentedButton<ThemeMode>(
                    segments: const [
                      ButtonSegment<ThemeMode>(value: ThemeMode.system, label: Text('System')),
                      ButtonSegment<ThemeMode>(value: ThemeMode.light, label: Text('Light')),
                      ButtonSegment<ThemeMode>(value: ThemeMode.dark, label: Text('Dark')),
                    ],
                    selected: {controller.themeMode},
                    onSelectionChanged: (selection) =>
                        controller.setThemeMode(selection.first),
                  ),
                ),
              ],
            ),
            const _SectionLabel('Scanning'),
            _Group(
              children: [
                SwitchListTile(
                  secondary: Icon(Icons.notifications_outlined, color: iconColor),
                  title: const Text('App alerts'),
                  subtitle: const Text(
                    'Notify about new apps and new permissions. Checks about every 6 hours.',
                  ),
                  value: controller.alertsEnabled,
                  onChanged: (value) => _toggleAlerts(context, value),
                ),
                SwitchListTile(
                  secondary: Icon(Icons.phone_android, color: iconColor),
                  title: const Text('Include system apps'),
                  subtitle: const Text('Also scan apps built into your phone'),
                  value: controller.includeSystem,
                  onChanged: controller.setIncludeSystem,
                ),
                ListTile(
                  leading: Icon(Icons.refresh, color: iconColor),
                  title: const Text('Rescan now'),
                  subtitle: const Text('Check all apps again'),
                  onTap: controller.scan,
                ),
              ],
            ),
            const _SectionLabel('Updates'),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.download, color: iconColor),
                  title: const Text('Check for updates'),
                  subtitle: FutureBuilder<String>(
                    future: Updater.currentVersion(),
                    builder: (context, snapshot) {
                      final version = snapshot.data ?? '';
                      return Text('Version $version · only when you tap');
                    },
                  ),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: () => _checkForUpdates(context),
                ),
              ],
            ),
            const _SectionLabel('About'),
            _Group(
              children: [
                ListTile(
                  leading: Icon(Icons.lock_outline, color: iconColor),
                  title: const Text('Privacy'),
                  subtitle: const Text('Everything stays on your phone'),
                ),
                ListTile(
                  leading: Icon(Icons.code, color: iconColor),
                  title: const Text('Open source'),
                  subtitle: const Text('View the code on GitHub'),
                  trailing: Icon(Icons.chevron_right, color: iconColor),
                  onTap: _openGithub,
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
