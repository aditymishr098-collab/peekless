// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get navHome => 'Home';

  @override
  String get navApps => 'Apps';

  @override
  String get navPermissions => 'Permissions';

  @override
  String get navChanges => 'Changes';

  @override
  String get navSettings => 'Settings';

  @override
  String get levelRisky => 'Risky';

  @override
  String get levelMedium => 'Medium';

  @override
  String get levelSafe => 'Safe';

  @override
  String get overallHigh => 'High risk';

  @override
  String get overallMedium => 'Medium risk';

  @override
  String get overallLow => 'Low risk';

  @override
  String get cancel => 'Cancel';

  @override
  String get clear => 'Clear';

  @override
  String get back => 'Back';

  @override
  String get later => 'Later';

  @override
  String get noneFound => 'None found';

  @override
  String get scanning => 'Scanning...';

  @override
  String get scanFailed => 'Scan failed';

  @override
  String get tryAgain => 'Try again';

  @override
  String get couldNotOpenSettings => 'Could not open app settings.';

  @override
  String get homeShare => 'Share report';

  @override
  String get homeRescan => 'Rescan apps';

  @override
  String homeAppsChecked(int count) {
    return 'Apps checked on this phone: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Apps counted: $counted, trusted: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Needs attention';

  @override
  String get homeSeeAll => 'See all';

  @override
  String get homeAllSafe => 'Nothing needs attention. All your apps look safe.';

  @override
  String get homeShareFailed => 'Could not share the report.';

  @override
  String get scoreOf100 => 'of 100';

  @override
  String scoreSemantics(int score) {
    return 'Privacy score $score out of 100';
  }

  @override
  String wizardCard(int count) {
    return 'Review apps with sensitive access: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Apps: $count, riskiest first';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Showing $shown of $total';
  }

  @override
  String get appsSearch => 'Search apps';

  @override
  String get appsNone => 'No apps found';

  @override
  String get chipMine => 'My apps';

  @override
  String get chipSystem => 'System';

  @override
  String get filterAll => 'All';

  @override
  String get filterTrackers => 'Has trackers';

  @override
  String get filterSpecial => 'Special access';

  @override
  String get filterNotStore => 'Not from a store';

  @override
  String get filterOffline => 'Offline';

  @override
  String get filterTrusted => 'Trusted';

  @override
  String get permSubtitle => 'Who can use what on this phone';

  @override
  String get trackersSubtitle => 'Which trackers sit in which apps';

  @override
  String get segTrackers => 'Trackers';

  @override
  String get noTrackers => 'No known trackers found.';

  @override
  String get noPerms => 'No sensitive permissions found.';

  @override
  String appsCount(int count) {
    return 'Apps: $count';
  }

  @override
  String get changesSubtitle => 'New apps and permission changes';

  @override
  String get clearTitle => 'Clear changes?';

  @override
  String get clearBody =>
      'The list of changes will be removed from this phone.';

  @override
  String get changesEmpty =>
      'No changes yet. Peekless will list new apps, removed apps, new permissions and new trackers here.';

  @override
  String evInstalled(int score, String level) {
    return 'Installed. Score $score ($level).';
  }

  @override
  String get evRemoved => 'Uninstalled.';

  @override
  String evAllowed(String label) {
    return 'Now allowed: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'No longer allowed: $label.';
  }

  @override
  String evTracker(String name) {
    return 'New tracker found: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label turned on.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label turned off.';
  }

  @override
  String get checksTitle => 'Security checks';

  @override
  String get checksIntro =>
      'Things that are worth a second look. Tap a check to see the apps.';

  @override
  String get checkUnusedTitle => 'Unused apps with sensitive access';

  @override
  String get checkDebuggableTitle => 'Debuggable builds';

  @override
  String get checkOfflineTitle => 'Offline apps';

  @override
  String get checkAccessibilityDesc =>
      'These apps can read your screen and tap for you.';

  @override
  String get checkAdminDesc =>
      'These apps can lock or wipe the phone and block uninstalling.';

  @override
  String get checkNotificationDesc =>
      'These apps can read all your notifications, including codes.';

  @override
  String checkUnusedDesc(int days) {
    return 'Not opened for $days days, but they can still use sensitive permissions. Consider removing them.';
  }

  @override
  String get checkNotStoreDesc =>
      'Installed from a file or a computer. Nobody checked these for you.';

  @override
  String get checkDebuggableDesc =>
      'Test versions that can be inspected from a computer.';

  @override
  String get checkOldDesc =>
      'These apps skip newer Android privacy protections.';

  @override
  String get checkOfflineDesc =>
      'No internet permission, so they cannot send data online.';

  @override
  String get usagePromptBody =>
      'Optional. Turn on Usage access to find apps you have not opened for a long time but that can still use your microphone, location or contacts. The data never leaves your phone.';

  @override
  String get usagePromptButton => 'Turn on Usage access';

  @override
  String get securityNone => 'No security flags found on this phone.';

  @override
  String securityOffline(int count) {
    return 'Apps that work fully offline: $count';
  }

  @override
  String get fixWizardTitle => 'Fix wizard';

  @override
  String wizardStep(int index, int total) {
    return 'App $index of $total';
  }

  @override
  String get wizardQuestion => 'Does this app really need these?';

  @override
  String get wizardHint =>
      'Tap “Open app settings”, then Permissions, and switch off what the app does not need.';

  @override
  String get openAppSettings => 'Open app settings';

  @override
  String get trustApp => 'I trust this app';

  @override
  String get nextApp => 'Next app';

  @override
  String get finish => 'Finish';

  @override
  String get wizardDone => 'All reviewed';

  @override
  String get wizardNothing => 'Nothing to review';

  @override
  String get wizardNothingBody => 'No app has sensitive access right now.';

  @override
  String get wizardRescanBody => 'Rescan to see your new score.';

  @override
  String get rescanFinish => 'Rescan and finish';

  @override
  String get wizardRequested => 'asked for, not allowed yet';

  @override
  String scoreTrackers(int count) {
    return 'Known trackers: $count';
  }

  @override
  String get scoreDebuggable => 'Debuggable build';

  @override
  String get scoreOldTarget => 'Built for very old Android';

  @override
  String unusualFor(String groups) {
    return 'Unusual for this type of app: $groups';
  }

  @override
  String get noteRequested => 'requested, counts half';

  @override
  String get noteAllowed => 'allowed';

  @override
  String noteTrackers(int points, int max) {
    return '$points points each, up to $max';
  }

  @override
  String get noteTurnedOn => 'turned on';

  @override
  String get noteDebuggable => 'can be inspected from a computer';

  @override
  String noteApi(int apiLevel) {
    return 'API level $apiLevel';
  }

  @override
  String get noteExtra => 'extra penalty';

  @override
  String get explainTitle => 'How the score works';

  @override
  String get explainIntro =>
      'Every app starts at 100. Points are removed for what the app can do.';

  @override
  String get explainStart => 'Start';

  @override
  String get explainNothing => 'Nothing removed';

  @override
  String get explainNothingNote =>
      'No sensitive permissions and no known trackers';

  @override
  String get explainScore => 'Score';

  @override
  String get explainRules => 'The rules';

  @override
  String get rule1 =>
      'Only the heaviest permission in each group counts. For example, precise location and approximate location are counted once.';

  @override
  String get rule2 =>
      'Special permissions (all files, draw over apps, install apps) count half when an app only requests them.';

  @override
  String rule3(int points, int max) {
    return 'Each known tracker removes $points points, up to $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Special access that is turned on removes points: accessibility $a, device admin $b, notification access $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'A debuggable build removes $a points. An app built for Android 7 or older removes $b points.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'If a permission is unusual for the kind of app (for example a microphone in a flashlight), $points extra points are removed, for up to $maxGroups permission groups.';
  }

  @override
  String get rule7 =>
      '70 or more is Safe. 40 to 69 is Medium. Below 40 is Risky.';

  @override
  String get explainFooter =>
      'The score shows what an app is able to do, not what it is doing right now.';

  @override
  String get howScore => 'How is this score calculated?';

  @override
  String summaryTrackers(int count) {
    return 'Known trackers: $count.';
  }

  @override
  String get summaryNone => 'No sensitive permissions and no known trackers.';

  @override
  String metaTrackers(int count) {
    return 'Trackers: $count';
  }

  @override
  String get metaNone => 'No sensitive permissions';

  @override
  String get detailSecurity => 'Security';

  @override
  String get detailSource => 'Source';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Can use the internet';

  @override
  String get detailOffline => 'Offline';

  @override
  String get detailOfflineBody =>
      'No internet permission, so it cannot send data online';

  @override
  String get detailLastOpened => 'Last opened';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String daysSince(int days) {
    return 'Days since last use: $days';
  }

  @override
  String get detailDebuggableBody =>
      'A test version that can be inspected from a computer';

  @override
  String detailOldBody(int apiLevel) {
    return 'API level $apiLevel, so newer privacy protections are skipped';
  }

  @override
  String get detailTrustBody => 'Leave it out of the Risky count and alerts';

  @override
  String get detailNoPerms =>
      'This app does not ask for any sensitive permissions.';

  @override
  String get chipAllowed => 'Allowed';

  @override
  String get chipRequested => 'Requested';

  @override
  String get chipNotAllowed => 'Not allowed';

  @override
  String sensitiveNote(String why) {
    return 'Sensitive: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Trackers found: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless shows what an app is able to do, not what it is doing right now. Trackers are found from the app manifest, so some may be missed.';

  @override
  String get srcBuiltIn => 'Built into your phone';

  @override
  String get srcUnknown => 'Unknown (installed from a file or a computer)';

  @override
  String get srcApk => 'An APK file you opened';

  @override
  String get srcAdb => 'A computer (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Installed by $name';
  }

  @override
  String get accessibilityLabel => 'Accessibility access';

  @override
  String get adminLabel => 'Device admin';

  @override
  String get notificationLabel => 'Notification access';

  @override
  String get accessibilityWhy =>
      'Turned on. It can read what is on your screen and act for you.';

  @override
  String get adminWhy =>
      'Turned on. It can lock the phone, wipe it and block uninstalling.';

  @override
  String get notificationWhy =>
      'Turned on. It can read all your notifications, including codes.';

  @override
  String get grpMicrophone => 'Microphone';

  @override
  String get grpCamera => 'Camera';

  @override
  String get grpLocation => 'Location';

  @override
  String get grpContacts => 'Contacts';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Call log';

  @override
  String get grpPhone => 'Phone';

  @override
  String get grpCalendar => 'Calendar';

  @override
  String get grpBodySensors => 'Body sensors';

  @override
  String get grpActivity => 'Activity';

  @override
  String get grpFiles => 'Files';

  @override
  String get grpOverlay => 'Overlay';

  @override
  String get grpInstalls => 'Installs';

  @override
  String get grpAppList => 'App list';

  @override
  String get lblCoarseLocation => 'Approximate location';

  @override
  String get lblFineLocation => 'Precise location';

  @override
  String get lblBackgroundLocation => 'Location all the time';

  @override
  String get lblAccounts => 'Accounts';

  @override
  String get lblReadSms => 'Read SMS';

  @override
  String get lblReceiveSms => 'Receive SMS';

  @override
  String get lblSendSms => 'Send SMS';

  @override
  String get lblPhoneState => 'Phone status';

  @override
  String get lblCallPhone => 'Make calls';

  @override
  String get lblActivity => 'Physical activity';

  @override
  String get lblAllFiles => 'All files';

  @override
  String get lblFilesMedia => 'Files and media';

  @override
  String get lblPhotos => 'Photos';

  @override
  String get lblVideos => 'Videos';

  @override
  String get lblAudioFiles => 'Audio files';

  @override
  String get lblOverlay => 'Draw over other apps';

  @override
  String get lblInstall => 'Install other apps';

  @override
  String get lblAppList => 'See all apps';

  @override
  String get whyMic => 'Can record audio.';

  @override
  String get whyCamera => 'Can use the camera.';

  @override
  String get whyCoarse => 'Can see your approximate location.';

  @override
  String get whyFine => 'Can see your precise location.';

  @override
  String get whyBackground => 'Can track your location all the time.';

  @override
  String get whyContacts => 'Can read your contacts.';

  @override
  String get whyAccounts => 'Can see the accounts on your phone.';

  @override
  String get whyReadSms => 'Can read your text messages.';

  @override
  String get whyReceiveSms => 'Can receive your text messages.';

  @override
  String get whySendSms => 'Can send text messages.';

  @override
  String get whyCallLog => 'Can read your call history.';

  @override
  String get whyPhoneState => 'Can see your phone status.';

  @override
  String get whyCallPhone => 'Can make phone calls.';

  @override
  String get whyCalendar => 'Can read your calendar.';

  @override
  String get whyBody => 'Can read body sensors.';

  @override
  String get whyActivity => 'Can see your physical activity.';

  @override
  String get whyAllFiles => 'Can access all files on your phone.';

  @override
  String get whyFilesMedia => 'Can read files and media.';

  @override
  String get whyPhotos => 'Can read your photos.';

  @override
  String get whyVideos => 'Can read your videos.';

  @override
  String get whyAudio => 'Can read your audio files.';

  @override
  String get whyOverlay => 'Can draw over other apps.';

  @override
  String get whyInstall => 'Can install other apps.';

  @override
  String get whyAppList => 'Can see all apps on your phone.';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeBody => 'Follows your phone by default';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsScanning => 'Scanning';

  @override
  String get settingsAlerts => 'App alerts';

  @override
  String get settingsAlertsBody =>
      'Notify about new apps and new permissions. Checks about every 6 hours.';

  @override
  String get settingsWeekly => 'Weekly summary';

  @override
  String get settingsWeeklyBody =>
      'One notification a week: your score and what changed';

  @override
  String get settingsUsage => 'Usage access';

  @override
  String get settingsUsageOn =>
      'On. Peekless can see when apps were last opened.';

  @override
  String get settingsUsageOff =>
      'Off. Optional. Lets Peekless find apps you no longer use. It stays on your phone.';

  @override
  String get settingsSystemApps => 'Include system apps';

  @override
  String get settingsSystemAppsBody => 'Also scan apps built into your phone';

  @override
  String get settingsRescan => 'Rescan now';

  @override
  String get settingsRescanBody => 'Check all apps again';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get settingsCheckUpdates => 'Check for updates';

  @override
  String settingsVersion(String version) {
    return 'Version $version · only when you tap';
  }

  @override
  String get settingsAbout => 'About';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacyBody => 'Everything stays on your phone';

  @override
  String get settingsOpenSource => 'Open source';

  @override
  String get settingsOpenSourceBody =>
      'GPL-3.0 license. View the code on GitHub';

  @override
  String get settingsDeveloped => 'Developed by Lumio Apps';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get languageSystem => 'Follow phone language';

  @override
  String get updChecking => 'Checking for updates...';

  @override
  String get updLatest => 'You have the latest version.';

  @override
  String get updFailed => 'Could not check for updates. Try again later.';

  @override
  String get updTitle => 'Update available';

  @override
  String updReady(String version) {
    return 'Version $version is ready to install.';
  }

  @override
  String get updDownloadFailed =>
      'Download failed. Check your connection and try again.';

  @override
  String get updInstall => 'Download and install';

  @override
  String get notifyDenied =>
      'Allow notifications for Peekless to turn this on.';

  @override
  String get settingChangeFailed => 'Could not change this setting.';

  @override
  String get usageOpenFailed => 'Could not open Usage access settings.';

  @override
  String alertNewTitle(String name) {
    return 'New app: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Score $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name changed';
  }

  @override
  String alertNowHas(String list) {
    return 'Now has: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Now allowed: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'New tracker: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Score $score ($level).';
  }

  @override
  String get alertMoreTitle => 'More changes';

  @override
  String alertMoreBody(int count) {
    return 'More changes: $count. Open Peekless to see them.';
  }

  @override
  String get weeklyTitle => 'Your weekly Peekless summary';

  @override
  String weeklyUp(int score, int diff) {
    return 'Score $score/100, up $diff since last week.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Score $score/100, down $diff since last week.';
  }

  @override
  String weeklySame(int score) {
    return 'Score $score/100, no change since last week.';
  }

  @override
  String weeklyScore(int score) {
    return 'Score $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'New apps: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Apps removed: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Permissions turned on: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'New trackers: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'This week: $list.';
  }

  @override
  String get weeklyNone => 'No changes this week.';

  @override
  String weeklyRisky(int count) {
    return 'Risky apps: $count.';
  }

  @override
  String get reportTitle => 'Peekless privacy report';

  @override
  String reportScore(int score, String level) {
    return 'Score: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Apps checked: $total. Risky: $risky, Medium: $medium, Safe: $safe';
  }

  @override
  String get reportAttention => 'Needs attention:';

  @override
  String get reportFooter =>
      'Checked on my phone with Peekless. Nothing was sent anywhere.';

  @override
  String get trendTitle => 'Score over time';

  @override
  String trendUp(int diff, int days) {
    return 'Up $diff points (days tracked: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Down $diff points (days tracked: $days)';
  }

  @override
  String trendSame(int days) {
    return 'No change (days tracked: $days)';
  }

  @override
  String get settingsQuick => 'Quick access';

  @override
  String get quickWidget => 'Home screen widget';

  @override
  String get quickWidgetBody => 'Show your privacy score on the home screen';

  @override
  String get quickTile => 'Quick Settings tile';

  @override
  String get quickTileBody => 'See your score in the quick settings panel';

  @override
  String get quickManual =>
      'Your phone could not add this automatically. Add it by hand: long-press the home screen (widget) or edit the quick settings panel (tile).';

  @override
  String get settingsExport => 'Export report';

  @override
  String get settingsExportBody =>
      'Save the report as a PDF or JSON file and share it';

  @override
  String get exportFailed => 'Could not create the report.';

  @override
  String get settingsTrackerList => 'Tracker list';

  @override
  String settingsTrackerListBody(int count) {
    return 'Tap to update. $count trackers known. Only when you tap.';
  }

  @override
  String get trackerListUpdating => 'Updating tracker list…';

  @override
  String trackerListUpdated(int count) {
    return 'Tracker list updated. $count trackers known.';
  }

  @override
  String get trackerListCurrent => 'Tracker list is already up to date.';

  @override
  String get trackerListFailed =>
      'Could not update the tracker list. Check your connection.';

  @override
  String get homeTagline => 'See who’s peeking at you.';

  @override
  String get homeOverviewBody => 'Share of your apps that can use each one';
}
