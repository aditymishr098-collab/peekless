import 'package:flutter/material.dart';

import '../controller.dart';
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
        final groups = controller.appsByPermissionGroup();

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Permissions', style: text.headlineMedium),
                  Text(
                    'Who can use what on this phone',
                    style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (groups.isEmpty)
              Text(
                controller.loading ? 'Scanning...' : 'No sensitive permissions found.',
                style: text.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
              ),
            for (final entry in groups.entries)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Material(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.antiAlias,
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Text(entry.key),
                      subtitle: Text(
                        '${entry.value.length} ${entry.value.length == 1 ? 'app' : 'apps'}',
                      ),
                      childrenPadding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      children: [
                        for (final report in entry.value)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: AppTile(report: report),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
