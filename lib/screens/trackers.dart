import 'package:flutter/material.dart';

import '../controller.dart';
import '../l10n/app_localizations.dart';
import 'permissions.dart' show GroupTile;

class TrackersScreen extends StatelessWidget {
  const TrackersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final l = AppLocalizations.of(context);
        final groups = controller.appsByTracker();

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.segTrackers, style: text.headlineMedium?.copyWith(fontWeight: FontWeight.w800, letterSpacing: -0.5)),
                  Text(
                    l.trackersSubtitle,
                    style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (groups.isEmpty)
              Text(
                controller.loading ? l.scanning : l.noTrackers,
                style: text.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
              ),
            for (final entry in groups.entries)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GroupTile(title: entry.key, apps: entry.value),
              ),
          ],
        );
      },
    );
  }
}
