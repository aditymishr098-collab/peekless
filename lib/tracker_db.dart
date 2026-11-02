/// Known tracker SDKs. Each entry maps a display name to class-name prefixes.
/// The Android side checks these against the activities, services, receivers
/// and providers declared in every app's manifest.
const Map<String, List<String>> trackerSignatures = {
  'Google Ads': ['com.google.android.gms.ads'],
  'Firebase Analytics': [
    'com.google.firebase.analytics',
    'com.google.android.gms.measurement',
  ],
  'Firebase Crashlytics': ['com.google.firebase.crashlytics'],
  'Facebook SDK': ['com.facebook.'],
  'AppsFlyer': ['com.appsflyer'],
  'Adjust': ['com.adjust.sdk'],
  'Unity Ads': ['com.unity3d.ads', 'com.unity3d.services'],
  'AppLovin': ['com.applovin'],
  'ironSource': ['com.ironsource'],
  'Chartboost': ['com.chartboost'],
  'Mintegral': ['com.mbridge'],
  'Vungle': ['com.vungle'],
  'InMobi': ['com.inmobi'],
  'Mixpanel': ['com.mixpanel'],
  'Amplitude': ['com.amplitude'],
  'Flurry': ['com.flurry'],
  'OneSignal': ['com.onesignal'],
  'Branch': ['io.branch'],
  'Segment': ['com.segment.analytics'],
  'Sentry': ['io.sentry'],
  'Microsoft App Center': ['com.microsoft.appcenter'],
  'Yandex Metrica': ['com.yandex.metrica', 'io.appmetrica'],
};
