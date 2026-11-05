/// Domain names of known ad and analytics services. The network monitor uses
/// this list to mark lookups as trackers. A lookup matches when the name is the
/// same or ends with ".<domain>".
const Map<String, List<String>> trackerDomains = {
  'Google Ads': [
    'doubleclick.net',
    'googlesyndication.com',
    'googleadservices.com',
    'admob.com',
  ],
  'Google Analytics': [
    'google-analytics.com',
    'analytics.google.com',
    'googletagmanager.com',
    'app-measurement.com',
  ],
  'Crashlytics': ['crashlytics.com'],
  'Facebook': [
    'graph.facebook.com',
    'connect.facebook.net',
    'an.facebook.com',
    'pixel.facebook.com',
  ],
  'AppsFlyer': ['appsflyer.com', 'appsflyersdk.com'],
  'Adjust': ['adjust.com', 'adjust.io'],
  'Branch': ['branch.io', 'app.link'],
  'Kochava': ['kochava.com'],
  'Singular': ['singular.net'],
  'Mixpanel': ['mixpanel.com'],
  'Amplitude': ['amplitude.com'],
  'Segment': ['segment.io', 'segment.com'],
  'Flurry': ['flurry.com'],
  'AppLovin': ['applovin.com', 'applvn.com'],
  'Unity Ads': ['unityads.unity3d.com', 'ads.unity3d.com'],
  'Vungle': ['vungle.com'],
  'Chartboost': ['chartboost.com'],
  'ironSource': ['ironsrc.com', 'supersonicads.com'],
  'InMobi': ['inmobi.com'],
  'MoPub': ['mopub.com'],
  'StartApp': ['startapp.com'],
  'Tapjoy': ['tapjoy.com'],
  'Yandex Metrica': ['appmetrica.yandex.com', 'mc.yandex.ru'],
  'OneSignal': ['onesignal.com'],
  'TikTok': ['analytics.tiktok.com', 'ads.tiktok.com'],
  'Twitter Ads': ['ads-twitter.com'],
  'Snapchat': ['sc-analytics.appspot.com'],
};

/// The tracker a domain name belongs to, or null when it is not a known tracker.
String? trackerForDomain(String domain) {
  final name = domain.toLowerCase();
  for (final entry in trackerDomains.entries) {
    for (final suffix in entry.value) {
      if (name == suffix || name.endsWith('.$suffix')) return entry.key;
    }
  }
  return null;
}

/// Trackers that are left alone when blocking is on. Blocking OneSignal would
/// stop push notifications, and blocking Branch would break app links.
const Set<String> _neverBlock = {'OneSignal', 'Branch'};

/// The domain names the network monitor may block, all in lower case.
List<String> blockableDomains() {
  final out = <String>{};
  for (final entry in trackerDomains.entries) {
    if (_neverBlock.contains(entry.key)) continue;
    out.addAll(entry.value.map((d) => d.toLowerCase()));
  }
  return out.toList()..sort();
}
