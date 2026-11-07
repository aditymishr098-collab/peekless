import 'l10n/app_localizations.dart';

/// What a tracker is for. Used to explain a tracker in plain words.
enum TrackerKind { ads, analytics, attribution, crash, push, other }

const Set<String> _ads = {
  'Google Ads', 'Unity Ads', 'AppLovin', 'ironSource', 'Chartboost', 'Mintegral',
  'Vungle', 'InMobi', 'Tapjoy', 'Smaato', 'StartApp', 'Moloco', 'Fyber',
  'Pangle (TikTok Ads)', 'Yandex Ads', 'myTarget', 'Tencent Ads',
};
const Set<String> _analytics = {
  'Google Tag Manager', 'Firebase Analytics', 'Facebook SDK', 'Mixpanel',
  'Amplitude', 'Flurry', 'Segment', 'Yandex Metrica', 'Umeng', 'Baidu Mobstat',
};
const Set<String> _attribution = {
  'AppsFlyer', 'Adjust', 'Kochava', 'Singular', 'Branch',
};
const Set<String> _crash = {
  'Firebase Crashlytics', 'Sentry', 'Bugsnag', 'New Relic', 'Datadog',
  'Microsoft App Center',
};
const Set<String> _push = {
  'OneSignal', 'CleverTap', 'Braze', 'Airship', 'MoEngage', 'WebEngage',
};

/// The kind of a tracker by its display name. Names from a downloaded or
/// self-made list that are not known here are [TrackerKind.other].
TrackerKind trackerKind(String name) {
  if (_ads.contains(name)) return TrackerKind.ads;
  if (_analytics.contains(name)) return TrackerKind.analytics;
  if (_attribution.contains(name)) return TrackerKind.attribution;
  if (_crash.contains(name)) return TrackerKind.crash;
  if (_push.contains(name)) return TrackerKind.push;
  return TrackerKind.other;
}

String trackerKindTitle(AppLocalizations l, TrackerKind kind) => switch (kind) {
      TrackerKind.ads => l.trackerKindAds,
      TrackerKind.analytics => l.trackerKindAnalytics,
      TrackerKind.attribution => l.trackerKindAttribution,
      TrackerKind.crash => l.trackerKindCrash,
      TrackerKind.push => l.trackerKindPush,
      TrackerKind.other => l.trackerKindOther,
    };

String trackerKindBody(AppLocalizations l, TrackerKind kind) => switch (kind) {
      TrackerKind.ads => l.trackerKindAdsBody,
      TrackerKind.analytics => l.trackerKindAnalyticsBody,
      TrackerKind.attribution => l.trackerKindAttributionBody,
      TrackerKind.crash => l.trackerKindCrashBody,
      TrackerKind.push => l.trackerKindPushBody,
      TrackerKind.other => l.trackerKindOtherBody,
    };
