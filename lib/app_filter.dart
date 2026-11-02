import 'install_source.dart';
import 'l10n/app_localizations.dart';
import 'models.dart';
import 'scoring.dart';

/// The filters on the Apps tab.
enum AppFilter {
  all,
  risky,
  medium,
  safe,
  trackers,
  special,
  sideloaded,
  offline,
  trusted,
}

String filterLabel(AppLocalizations l, AppFilter filter) => switch (filter) {
      AppFilter.all => l.filterAll,
      AppFilter.risky => l.levelRisky,
      AppFilter.medium => l.levelMedium,
      AppFilter.safe => l.levelSafe,
      AppFilter.trackers => l.filterTrackers,
      AppFilter.special => l.filterSpecial,
      AppFilter.sideloaded => l.filterNotStore,
      AppFilter.offline => l.filterOffline,
      AppFilter.trusted => l.filterTrusted,
    };

bool filterMatches(AppFilter filter, AppReport report, Set<String> trusted) {
  final app = report.app;
  return switch (filter) {
    AppFilter.all => true,
    AppFilter.risky => report.level == RiskLevel.risky,
    AppFilter.medium => report.level == RiskLevel.medium,
    AppFilter.safe => report.level == RiskLevel.safe,
    AppFilter.trackers => app.trackers.isNotEmpty,
    AppFilter.special => app.special.isNotEmpty,
    AppFilter.sideloaded =>
      installedOutsideStore(app.installer, isSystem: app.isSystem),
    AppFilter.offline => !app.canUseInternet,
    AppFilter.trusted => trusted.contains(app.packageName),
  };
}
