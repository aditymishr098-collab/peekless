import 'install_source.dart';
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

String filterLabel(AppFilter filter) => switch (filter) {
      AppFilter.all => 'All',
      AppFilter.risky => 'Risky',
      AppFilter.medium => 'Medium',
      AppFilter.safe => 'Safe',
      AppFilter.trackers => 'Has trackers',
      AppFilter.special => 'Special access',
      AppFilter.sideloaded => 'Not from a store',
      AppFilter.offline => 'Offline',
      AppFilter.trusted => 'Trusted',
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
