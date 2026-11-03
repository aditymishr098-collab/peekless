import 'package:flutter/material.dart';

import '../controller.dart';
import '../l10n/app_localizations.dart';
import '../scoring.dart';
import '../texts.dart';
import '../widgets/app_tile.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final l = AppLocalizations.of(context);
        final groups = controller.appsByPermissionGroup();

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.navPermissions, style: text.headlineMedium?.copyWith(fontWeight: FontWeight.w800, letterSpacing: -0.5)),
                  Text(
                    l.permSubtitle,
                    style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (groups.isEmpty)
              Text(
                controller.loading ? l.scanning : l.noPerms,
                style: text.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
              ),
            for (final entry in groups.entries)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GroupTile(
                  title: groupName(l, entry.key),
                  apps: entry.value,
                ),
              ),
          ],
        );
      },
    );
  }
}

class GroupTile extends StatelessWidget {
  const GroupTile({super.key, required this.title, required this.apps});

  final String title;
  final List<AppReport> apps;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: scheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: scheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(title),
          subtitle: Text(AppLocalizations.of(context).appsCount(apps.length)),
          childrenPadding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          children: [
            for (final report in apps)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: AppTile(report: report),
              ),
          ],
        ),
      ),
    );
  }
}
