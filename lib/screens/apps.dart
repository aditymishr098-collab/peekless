import 'package:flutter/material.dart';

import '../app_filter.dart';
import '../controller.dart';
import '../l10n/app_localizations.dart';
import '../widgets/app_tile.dart';

enum _Filter { all, mine, system }

class AppsScreen extends StatefulWidget {
  const AppsScreen({super.key});

  @override
  State<AppsScreen> createState() => _AppsScreenState();
}

class _AppsScreenState extends State<AppsScreen> {
  String _query = '';
  _Filter _filter = _Filter.all;
  AppFilter _appFilter = AppFilter.all;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final l = AppLocalizations.of(context);
        final filter = controller.includeSystem ? _filter : _Filter.all;

        var items = controller.reports;
        if (filter == _Filter.mine) {
          items = items.where((r) => !r.app.isSystem).toList();
        } else if (filter == _Filter.system) {
          items = items.where((r) => r.app.isSystem).toList();
        }
        if (_appFilter != AppFilter.all) {
          items = items
              .where((r) => filterMatches(_appFilter, r, controller.trusted))
              .toList();
        }
        final query = _query.trim().toLowerCase();
        if (query.isNotEmpty) {
          items = items
              .where(
                (r) =>
                    r.app.name.toLowerCase().contains(query) ||
                    r.app.packageName.toLowerCase().contains(query),
              )
              .toList();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.navApps, style: text.headlineMedium),
                  Text(
                    _appFilter == AppFilter.all
                        ? l.appsSubtitleAll(controller.reports.length)
                        : l.appsSubtitleFiltered(items.length, controller.reports.length),
                    style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SearchBar(
                hintText: l.appsSearch,
                leading: const Icon(Icons.search),
                elevation: const WidgetStatePropertyAll<double>(0),
                backgroundColor: WidgetStatePropertyAll<Color>(scheme.surfaceContainer),
                onChanged: (value) => setState(() => _query = value),
              ),
            ),
            SizedBox(
              height: 56,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
                children: [
                  for (final f in AppFilter.values)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(filterLabel(l, f)),
                        selected: _appFilter == f,
                        onSelected: (_) => setState(() => _appFilter = f),
                      ),
                    ),
                ],
              ),
            ),
            if (controller.includeSystem)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                child: Wrap(
                  spacing: 8,
                  children: [
                    ChoiceChip(
                      label: Text(l.filterAll),
                      selected: filter == _Filter.all,
                      onSelected: (_) => setState(() => _filter = _Filter.all),
                    ),
                    ChoiceChip(
                      label: Text(l.chipMine),
                      selected: filter == _Filter.mine,
                      onSelected: (_) => setState(() => _filter = _Filter.mine),
                    ),
                    ChoiceChip(
                      label: Text(l.chipSystem),
                      selected: filter == _Filter.system,
                      onSelected: (_) => setState(() => _filter = _Filter.system),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 12),
            Expanded(
              child: controller.loading && controller.reports.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : items.isEmpty
                      ? Center(
                          child: Text(
                            l.appsNone,
                            style: text.bodyLarge?.copyWith(color: scheme.onSurfaceVariant),
                          ),
                        )
                      : ListView.separated(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                          itemCount: items.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 4),
                          itemBuilder: (context, index) => AppTile(report: items[index]),
                        ),
            ),
          ],
        );
      },
    );
  }
}
