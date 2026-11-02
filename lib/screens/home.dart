import 'package:flutter/material.dart';

import '../controller.dart';
import '../models.dart';
import '../native_bridge.dart';
import '../report_text.dart';
import '../widgets/app_tile.dart';
import '../widgets/risk.dart';
import '../widgets/score_ring.dart';
import '../widgets/security_card.dart';
import '../widgets/trend_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onSeeAll});

  final VoidCallback onSeeAll;

  Future<void> _share(BuildContext context) async {
    final messenger = ScaffoldMessenger.of(context);
    try {
      await NativeBridge.shareText(
        buildReportText(
          controller.scored,
          controller.overallScore,
          controller.overallLevel,
        ),
      );
    } catch (_) {
      messenger.showSnackBar(
        const SnackBar(content: Text('Could not share the report.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        final scheme = Theme.of(context).colorScheme;
        final text = Theme.of(context).textTheme;
        final level = controller.overallLevel;
        final scored = controller.scored;
        final attention = scored.where((r) => r.level != RiskLevel.safe).take(3).toList();
        final hasData = controller.reports.isNotEmpty;

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          children: [
            SizedBox(
              height: 64,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/icon/icon.png',
                      width: 36,
                      height: 36,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Peekless',
                    style: text.titleLarge?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  if (hasData)
                    IconButton(
                      tooltip: 'Share report',
                      onPressed: () => _share(context),
                      icon: const Icon(Icons.ios_share),
                    ),
                  IconButton(
                    tooltip: 'Rescan apps',
                    onPressed: controller.scan,
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ),
            if (controller.loading) const LinearProgressIndicator(),
            if (controller.error != null && !hasData)
              _ErrorBox(message: controller.error!),
            if (hasData) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [
                    ScoreRing(
                      score: controller.overallScore,
                      color: level.accent(scheme),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: level.container(scheme),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        level.overallLabel,
                        style: text.labelLarge?.copyWith(color: level.onContainer(scheme)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      controller.trusted.isEmpty
                          ? '${controller.reports.length} apps checked on this phone'
                          : '${scored.length} apps counted, ${controller.reports.length - scored.length} trusted',
                      style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _CountCard(
                      count: controller.countOf(RiskLevel.risky),
                      label: 'Risky',
                      background: scheme.errorContainer,
                      foreground: scheme.onErrorContainer,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _CountCard(
                      count: controller.countOf(RiskLevel.medium),
                      label: 'Medium',
                      background: scheme.tertiaryContainer,
                      foreground: scheme.onTertiaryContainer,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _CountCard(
                      count: controller.countOf(RiskLevel.safe),
                      label: 'Safe',
                      background: scheme.primaryContainer,
                      foreground: scheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const SecurityCard(),
              const SizedBox(height: 8),
              Row(
                children: [
                  const SizedBox(width: 4),
                  Text(
                    'Needs attention',
                    style: text.titleMedium?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  TextButton(onPressed: onSeeAll, child: const Text('See all')),
                ],
              ),
              if (attention.isEmpty)
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: scheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Nothing needs attention. All your apps look safe.',
                    style: text.bodyMedium,
                  ),
                )
              else
                for (final report in attention)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: AppTile(report: report),
                  ),
              if (controller.trend.length >= 2) ...[
                const SizedBox(height: 8),
                TrendCard(points: controller.trend),
              ],
            ],
          ],
        );
      },
    );
  }
}

class _CountCard extends StatelessWidget {
  const _CountCard({
    required this.count,
    required this.label,
    required this.background,
    required this.foreground,
  });

  final int count;
  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$count',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: foreground),
          ),
          Text(label, style: TextStyle(fontSize: 14, color: foreground)),
        ],
      ),
    );
  }
}

class _ErrorBox extends StatelessWidget {
  const _ErrorBox({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: Column(
        children: [
          Text(message, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          FilledButton.tonal(
            onPressed: controller.scan,
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}
