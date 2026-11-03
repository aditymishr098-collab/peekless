import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../access_share.dart';
import '../controller.dart';
import '../fix_queue.dart';
import '../l10n/app_localizations.dart';
import '../models.dart';
import '../native_bridge.dart';
import '../report_text.dart';
import '../texts.dart';
import 'fix_wizard.dart';
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
    final l = AppLocalizations.of(context);
    try {
      await NativeBridge.shareText(
        buildReportText(
          l,
          controller.scored,
          controller.overallScore,
          controller.overallLevel,
        ),
        l.homeShare,
      );
    } catch (_) {
      messenger.showSnackBar(
        SnackBar(content: Text(l.homeShareFailed)),
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
        final l = AppLocalizations.of(context);
        final level = controller.overallLevel;
        final scored = controller.scored;
        final attention = scored.where((r) => r.level != RiskLevel.safe).take(3).toList();
        final hasData = controller.reports.isNotEmpty;
        final share = accessShare(controller.reports);

        return ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
          children: [
            SizedBox(
              height: 72,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/icon/icon.png',
                      width: 44,
                      height: 44,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Peekless',
                          style: text.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.5,
                          ),
                        ),
                        Text(
                          l.homeTagline,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                  ),
                  if (hasData)
                    IconButton.filledTonal(
                      tooltip: l.homeShare,
                      onPressed: () => _share(context),
                      icon: const Icon(Icons.ios_share),
                    ),
                ],
              ),
            ),
            if (controller.loading) const LinearProgressIndicator(),
            if (controller.error != null && !hasData)
              _ErrorBox(message: controller.error!),
            if (hasData) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: scheme.outlineVariant),
                  gradient: RadialGradient(
                    center: const Alignment(0, -0.4),
                    radius: 1.1,
                    colors: [
                      level.accent(scheme).withAlpha(36),
                      scheme.surfaceContainer,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    ScoreRing(
                      score: controller.overallScore,
                      color: level.accent(scheme),
                      size: 220,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                      decoration: BoxDecoration(
                        color: level.container(scheme),
                        borderRadius: BorderRadius.circular(999),
                        border: Border.all(color: level.accent(scheme).withAlpha(90)),
                      ),
                      child: Text(
                        overallLabel(l, level),
                        style: text.labelLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: level.onContainer(scheme),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      controller.trusted.isEmpty
                          ? l.homeAppsChecked(controller.reports.length)
                          : l.homeAppsCounted(
                              scored.length,
                              controller.reports.length - scored.length,
                            ),
                      textAlign: TextAlign.center,
                      style: text.bodyMedium?.copyWith(color: scheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: scheme.outlineVariant),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      _Stat(
                        icon: Icons.apps_rounded,
                        color: scheme.primary,
                        count: controller.reports.length,
                        label: l.navApps,
                      ),
                      _StatDivider(color: scheme.outlineVariant),
                      _Stat(
                        icon: Icons.gpp_bad_outlined,
                        color: scheme.error,
                        count: controller.countOf(RiskLevel.risky),
                        label: l.levelRisky,
                      ),
                      _StatDivider(color: scheme.outlineVariant),
                      _Stat(
                        icon: Icons.warning_amber_rounded,
                        color: scheme.tertiary,
                        count: controller.countOf(RiskLevel.medium),
                        label: l.levelMedium,
                      ),
                      _StatDivider(color: scheme.outlineVariant),
                      _Stat(
                        icon: Icons.verified_user_outlined,
                        color: scheme.primary,
                        count: controller.countOf(RiskLevel.safe),
                        label: l.levelSafe,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              _ScanButton(loading: controller.loading),
              const SizedBox(height: 20),
              Text(
                l.navPermissions,
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              Text(
                l.homeOverviewBody,
                style: text.bodySmall?.copyWith(color: scheme.onSurfaceVariant),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _MiniRing(
                      fraction: share.fraction(share.camera),
                      label: l.grpCamera,
                      color: scheme.primary,
                    ),
                  ),
                  Expanded(
                    child: _MiniRing(
                      fraction: share.fraction(share.microphone),
                      label: l.grpMicrophone,
                      color: scheme.primary,
                    ),
                  ),
                  Expanded(
                    child: _MiniRing(
                      fraction: share.fraction(share.location),
                      label: l.grpLocation,
                      color: scheme.tertiary,
                    ),
                  ),
                  Expanded(
                    child: _MiniRing(
                      fraction: share.fraction(share.trackers),
                      label: l.segTrackers,
                      color: scheme.error,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const SecurityCard(),
              if (wizardQueue(scored).isNotEmpty) ...[
                const SizedBox(height: 8),
                _WizardCard(count: wizardQueue(scored).length),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  const SizedBox(width: 4),
                  Text(
                    l.homeNeedsAttention,
                    style: text.titleMedium?.copyWith(fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  TextButton(onPressed: onSeeAll, child: Text(l.homeSeeAll)),
                ],
              ),
              if (attention.isEmpty)
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: scheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: scheme.outlineVariant),
                  ),
                  child: Text(
                    l.homeAllSafe,
                    style: text.bodyMedium,
                  ),
                )
              else
                for (final report in attention)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
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

class _Stat extends StatelessWidget {
  const _Stat({
    required this.icon,
    required this.color,
    required this.count,
    required this.label,
  });

  final IconData icon;
  final Color color;
  final int count;
  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 22, color: color),
          const SizedBox(height: 4),
          Text(
            '$count',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, height: 1.1),
          ),
          Text(
            label,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 11, color: scheme.onSurfaceVariant, height: 1.2),
          ),
        ],
      ),
    );
  }
}

class _StatDivider extends StatelessWidget {
  const _StatDivider({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(width: 1, thickness: 1, color: color);
  }
}

class _ScanButton extends StatelessWidget {
  const _ScanButton({required this.loading});

  final bool loading;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final l = AppLocalizations.of(context);
    final light = Color.lerp(scheme.primary, Colors.white, 0.25)!;
    return Semantics(
      button: true,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            gradient: LinearGradient(colors: [scheme.primary, light]),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(26),
            onTap: loading ? null : controller.scan,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 68),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    Icon(Icons.search_rounded, size: 28, color: scheme.onPrimary),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l.settingsRescan,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: scheme.onPrimary,
                            ),
                          ),
                          Text(
                            l.settingsRescanBody,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: scheme.onPrimary.withAlpha(220),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (loading)
                      SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: scheme.onPrimary,
                        ),
                      )
                    else
                      Icon(Icons.chevron_right_rounded, size: 28, color: scheme.onPrimary),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MiniRing extends StatelessWidget {
  const _MiniRing({
    required this.fraction,
    required this.label,
    required this.color,
  });

  final double fraction;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final percent = (fraction * 100).round();
    return Semantics(
      label: '$label $percent%',
      child: ExcludeSemantics(
        child: Column(
          children: [
            SizedBox(
              width: 66,
              height: 66,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size.square(66),
                    painter: _MiniRingPainter(
                      fraction: fraction,
                      track: scheme.secondaryContainer,
                      color: color,
                    ),
                  ),
                  Text(
                    '$percent%',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MiniRingPainter extends CustomPainter {
  _MiniRingPainter({
    required this.fraction,
    required this.track,
    required this.color,
  });

  final double fraction;
  final Color track;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    const stroke = 6.0;
    final rect = const Offset(stroke / 2, stroke / 2) &
        Size(size.width - stroke, size.height - stroke);
    canvas.drawArc(
      rect,
      0,
      2 * math.pi,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke
        ..color = track,
    );
    if (fraction <= 0) return;
    canvas.drawArc(
      rect,
      -math.pi / 2,
      2 * math.pi * fraction.clamp(0.0, 1.0),
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke
        ..strokeCap = StrokeCap.round
        ..color = color,
    );
  }

  @override
  bool shouldRepaint(_MiniRingPainter old) =>
      old.fraction != fraction || old.track != track || old.color != color;
}

class _WizardCard extends StatelessWidget {
  const _WizardCard({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final l = AppLocalizations.of(context);
    return Material(
      color: scheme.primaryContainer,
      borderRadius: BorderRadius.circular(22),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(builder: (_) => const FixWizardScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 8, 14),
          child: Row(
            children: [
              Icon(Icons.auto_fix_high, color: scheme.onPrimaryContainer),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l.fixWizardTitle,
                      style: text.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: scheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      l.wizardCard(count),
                      style: text.bodyMedium?.copyWith(color: scheme.onPrimaryContainer),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: scheme.onPrimaryContainer),
            ],
          ),
        ),
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
            child: Text(AppLocalizations.of(context).tryAgain),
          ),
        ],
      ),
    );
  }
}
