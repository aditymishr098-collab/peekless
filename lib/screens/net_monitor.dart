import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../controller.dart';
import '../l10n/app_localizations.dart';
import '../native_bridge.dart';
import '../net_report.dart';
import '../tracker_domains.dart';

/// The network monitor: a local VPN that only reads DNS lookups, so Peekless
/// can show which apps ask for which domain names, and which are trackers.
class NetMonitorScreen extends StatefulWidget {
  const NetMonitorScreen({super.key});

  @override
  State<NetMonitorScreen> createState() => _NetMonitorScreenState();
}

class _NetMonitorScreenState extends State<NetMonitorScreen> {
  bool _running = false;
  bool _busy = false;
  bool _block = false;
  bool _blockSynced = false;
  NetReport _report = NetReport.empty;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _load();
    _timer = Timer.periodic(const Duration(seconds: 3), (_) => _load());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final running = await NativeBridge.netRunning();
      final raw = await NativeBridge.netReport();
      final block = await NativeBridge.netGetBlock();
      if (block && !_blockSynced) {
        // Hand over the newest list of names once per visit.
        _blockSynced = true;
        await NativeBridge.netSetBlock(true, blockableDomains());
      }
      if (!mounted) return;
      setState(() {
        _running = running;
        _block = block;
        _report = NetReport.parse(raw);
      });
    } catch (_) {
      // The monitor is a bonus. A failed read just keeps the old view.
    }
  }

  Future<void> _toggle(bool value) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    setState(() => _busy = true);
    try {
      if (value) {
        final started = await NativeBridge.netStart();
        if (!started) {
          messenger
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(l.netConsentDenied)));
        }
      } else {
        await NativeBridge.netStop();
      }
    } catch (_) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.netFailed)));
    }
    await Future<void>.delayed(const Duration(milliseconds: 500));
    if (!mounted) return;
    setState(() => _busy = false);
    await _load();
  }

  Future<void> _setBlock(bool value) async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    setState(() => _block = value);
    try {
      await NativeBridge.netSetBlock(value, blockableDomains());
    } catch (_) {
      if (!mounted) return;
      setState(() => _block = !value);
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.netFailed)));
    }
  }

  Future<void> _export() async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    final names = <String, String>{
      for (final r in controller.reports) r.app.packageName: r.app.name,
    };
    try {
      final dir = await NativeBridge.exportsDir();
      final day = DateTime.now().toIso8601String().substring(0, 10);
      final path = '$dir/peekless-network-$day.csv';
      await File(path).writeAsString(buildNetCsv(_report, names));
      await NativeBridge.shareFile(path, 'text/csv', l.netExport);
    } catch (_) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.exportFailed)));
    }
  }

  Future<void> _clear() async {
    final messenger = ScaffoldMessenger.of(context);
    final l = AppLocalizations.of(context);
    try {
      await NativeBridge.netClear();
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.netCleared)));
    } catch (_) {
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(l.netFailed)));
    }
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);

    // Package name -> app name, from the last scan.
    final names = <String, String>{
      for (final r in controller.reports) r.app.packageName: r.app.name,
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(l.netTitle),
        actions: [
          IconButton(
            tooltip: l.netExport,
            onPressed: _report.isEmpty ? null : _export,
            icon: const Icon(Icons.ios_share),
          ),
          IconButton(
            tooltip: l.netClear,
            onPressed: _report.isEmpty ? null : _clear,
            icon: const Icon(Icons.delete_outline),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            decoration: BoxDecoration(
              color: scheme.surfaceContainer,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: scheme.outlineVariant),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l.netIntro, style: text.bodyMedium),
                const SizedBox(height: 8),
                Text(
                  l.netLimits,
                  style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    l.netSwitch,
                    style: text.titleSmall?.copyWith(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(_running ? l.netOn : l.netOff),
                  value: _running,
                  onChanged: _busy ? null : _toggle,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    l.netBlockTitle,
                    style: text.titleSmall?.copyWith(fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    _report.totalBlocked > 0
                        ? '${l.netBlockBody}\n${l.netBlockedCount(_report.totalBlocked)}'
                        : l.netBlockBody,
                  ),
                  value: _block,
                  onChanged: _setBlock,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          if (_report.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
              child: Text(
                l.netEmpty,
                textAlign: TextAlign.center,
                style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
              ),
            )
          else
            for (final app in _report.apps)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _NetAppTile(
                  app: app,
                  title: app.isUnknown ? l.netUnknownApp : (names[app.package] ?? app.package),
                ),
              ),
        ],
      ),
    );
  }
}

class _NetAppTile extends StatelessWidget {
  const _NetAppTile({required this.app, required this.title});

  final NetApp app;
  final String title;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);
    final trackers = app.trackerHits.length;

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
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: text.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            [
              l.netLookups(app.lookups),
              if (trackers > 0) l.netTrackerCount(trackers),
              if (app.blocked > 0) l.netBlockedCount(app.blocked),
            ].join(' · '),
            style: text.bodySmall?.copyWith(
              color: trackers > 0 ? scheme.error : scheme.onSurfaceVariant,
            ),
          ),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final entry in app.sortedDomains)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      app.trackerHits.containsKey(entry.key)
                          ? Icons.gpp_maybe_outlined
                          : Icons.public,
                      size: 18,
                      color: app.trackerHits.containsKey(entry.key)
                          ? scheme.error
                          : scheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry.key,
                            style: text.bodyMedium?.copyWith(
                              color: app.trackerHits.containsKey(entry.key)
                                  ? scheme.error
                                  : scheme.onSurface,
                            ),
                          ),
                          if (app.trackerHits.containsKey(entry.key))
                            Text(
                              l.netTrackerTag(app.trackerHits[entry.key]!),
                              style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${entry.value}',
                      style: text.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
