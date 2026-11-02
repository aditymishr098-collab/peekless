import 'package:flutter/material.dart';

import '../controller.dart';
import '../history.dart';

const List<String> _months = [
  'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
];

String _formatTime(int millis) {
  final t = DateTime.fromMillisecondsSinceEpoch(millis);
  final hh = t.hour.toString().padLeft(2, '0');
  final mm = t.minute.toString().padLeft(2, '0');
  return '${t.day} ${_months[t.month - 1]}, $hh:$mm';
}

class ChangesScreen extends StatelessWidget {
  const ChangesScreen({super.key});

  Future<void> _confirmClear(BuildContext context) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear changes?'),
        content: const Text('The list of changes will be removed from this phone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Clear'),
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
                        Text('Changes', style: text.headlineMedium),
                        Text(
                          'New apps and permission changes',
                          style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                  ),
                  if (events.isNotEmpty)
                    TextButton(
                      onPressed: () => _confirmClear(context),
                      child: const Text('Clear'),
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
                  'No changes yet. Peekless will list new apps, removed apps, new '
                  'permissions and new trackers here.',
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
                  event.text,
                  style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(
            _formatTime(event.time),
            style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}
