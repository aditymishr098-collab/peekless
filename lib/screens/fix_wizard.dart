import 'package:flutter/material.dart';

import '../controller.dart';
import '../fix_queue.dart';
import '../l10n/app_localizations.dart';
import '../scoring.dart';
import '../widgets/risk.dart';

/// Walks through the apps that can do something sensitive, one at a time.
/// For each app: open its settings to remove access, trust it, or skip it.
class FixWizardScreen extends StatefulWidget {
  const FixWizardScreen({super.key});

  @override
  State<FixWizardScreen> createState() => _FixWizardScreenState();
}

class _FixWizardScreenState extends State<FixWizardScreen> {
  late final List<AppReport> _queue = wizardQueue(controller.scored);
  int _index = 0;

  void _next() => setState(() => _index++);

  Future<void> _openSettings(AppReport report) async {
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

  Future<void> _trust(AppReport report) async {
    await controller.setTrusted(report.app.packageName, true);
    if (mounted) _next();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);
    final done = _index >= _queue.length;

    return Scaffold(
      appBar: AppBar(title: Text(l.fixWizardTitle)),
      body: done ? _Done(reviewed: _queue.length) : _step(l, scheme, text),
    );
  }

  Widget _step(AppLocalizations l, ColorScheme scheme, TextTheme text) {
    final report = _queue[_index];
    final issues = issuesFor(l, report);

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
      children: [
        Text(
          l.wizardStep(_index + 1, _queue.length),
          style: text.labelLarge?.copyWith(color: scheme.primary),
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(value: _index / _queue.length),
        const SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: scheme.secondaryContainer,
              foregroundColor: scheme.onSecondaryContainer,
              child: Text(
                report.app.initial,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(child: Text(report.app.name, style: text.headlineSmall)),
            RiskChip(level: report.level, score: report.score),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          l.wizardQuestion,
          style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        for (final line in issues)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: scheme.surfaceContainer,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: scheme.outlineVariant),
              ),
              child: Text(line, style: text.bodyMedium),
            ),
          ),
        const SizedBox(height: 8),
        Text(
          l.wizardHint,
          style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: 20),
        FilledButton.icon(
          onPressed: () => _openSettings(report),
          icon: const Icon(Icons.open_in_new),
          label: Text(l.openAppSettings),
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
        ),
        const SizedBox(height: 8),
        FilledButton.tonalIcon(
          onPressed: () => _trust(report),
          icon: const Icon(Icons.verified_outlined),
          label: Text(l.trustApp),
          style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: _next,
          style: TextButton.styleFrom(minimumSize: const Size.fromHeight(48)),
          child: Text(_index == _queue.length - 1 ? l.finish : l.nextApp),
        ),
      ],
    );
  }
}

class _Done extends StatelessWidget {
  const _Done({required this.reviewed});

  final int reviewed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle_outline, size: 64, color: scheme.primary),
            const SizedBox(height: 16),
            Text(
              reviewed == 0 ? l.wizardNothing : l.wizardDone,
              style: text.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              reviewed == 0
                  ? l.wizardNothingBody
                  : l.wizardRescanBody,
              textAlign: TextAlign.center,
              style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                controller.scan();
                Navigator.of(context).pop();
              },
              child: Text(reviewed == 0 ? l.back : l.rescanFinish),
            ),
          ],
        ),
      ),
    );
  }
}
