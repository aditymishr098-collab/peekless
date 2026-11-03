/// True in the F-Droid build: flutter build apk --dart-define=FDROID=true
///
/// F-Droid delivers updates itself, so this build hides the in-app updater.
const bool kFDroid = bool.fromEnvironment('FDROID');
