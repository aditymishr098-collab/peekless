import 'package:flutter/material.dart';

import '../controller.dart';
import '../history.dart';
import '../l10n/app_localizations.dart';

String _formatTime(BuildContext context, int millis) {
  final t = DateTime.fromMillisecondsSinceEpoch(millis);
  final material = MaterialLocalizations.of(context);
  return '${material.formatShortDate(t)}, ${material.formatTimeOfDay(TimeOfDay.fromDateTime(t))}';
}

class ChangesScreen extends StatelessWidget {
  const ChangesScreen({super.key});

  Future<void> _confirmClear(BuildContext context) async {
    final l = AppLocalizations.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l.clearTitle),
        content: Text(l.clearBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l.clear),
          ),
        ],
      ),
    );
    if (ok ?? false) await controller.clearHistory();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final l = AppLocalizations.of(context);
        final events = controller.history;

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l.navChanges, style: text.headlineMedium),
                        Text(
                          l.changesSubtitle,
                          style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                  ),
                  if (events.isNotEmpty)
                    TextButton(
                      onPressed: () => _confirmClear(context),
                      child: Text(l.clear),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (events.isEmpty)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  l.changesEmpty,
                  style: text.bodyMedium,
                ),
              )
            else
              for (final event in events)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: _EventTile(event: event),
                ),
          ],
        );
      },
    );
  }
}

class _EventTile extends StatelessWidget {
  const _EventTile({required this.event});

  final ChangeEvent event;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);

    final IconData icon;
    final Color color;
    switch (event.type) {
      case 'installed':
        icon = Icons.add_circle_outline;
        color = scheme.primary;
      case 'removed':
        icon = Icons.remove_circle_outline;
        color = scheme.onSurfaceVariant;
      case 'allowed':
        icon = Icons.lock_open;
        color = scheme.error;
      case 'revoked':
        icon = Icons.lock_outline;
        color = scheme.primary;
      case 'tracker':
        icon = Icons.track_changes;
        color = scheme.error;
      default:
        icon = Icons.info_outline;
        color = scheme.onSurfaceVariant;
    }

    return Container(
      constraints: const BoxConstraints(minHeight: 64),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: scheme.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.appName, style: text.bodyLarge),
                Text(
                  eventText(l, event),
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            _formatTime(context, event.time),
            style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
