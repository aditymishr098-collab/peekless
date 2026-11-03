import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('he'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
  ];

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navApps.
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get navApps;

  /// No description provided for @navPermissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get navPermissions;

  /// No description provided for @navChanges.
  ///
  /// In en, this message translates to:
  /// **'Changes'**
  String get navChanges;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @levelRisky.
  ///
  /// In en, this message translates to:
  /// **'Risky'**
  String get levelRisky;

  /// No description provided for @levelMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get levelMedium;

  /// No description provided for @levelSafe.
  ///
  /// In en, this message translates to:
  /// **'Safe'**
  String get levelSafe;

  /// No description provided for @overallHigh.
  ///
  /// In en, this message translates to:
  /// **'High risk'**
  String get overallHigh;

  /// No description provided for @overallMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium risk'**
  String get overallMedium;

  /// No description provided for @overallLow.
  ///
  /// In en, this message translates to:
  /// **'Low risk'**
  String get overallLow;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @noneFound.
  ///
  /// In en, this message translates to:
  /// **'None found'**
  String get noneFound;

  /// No description provided for @scanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning...'**
  String get scanning;

  /// No description provided for @scanFailed.
  ///
  /// In en, this message translates to:
  /// **'Scan failed'**
  String get scanFailed;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @couldNotOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Could not open app settings.'**
  String get couldNotOpenSettings;

  /// No description provided for @homeShare.
  ///
  /// In en, this message translates to:
  /// **'Share report'**
  String get homeShare;

  /// No description provided for @homeRescan.
  ///
  /// In en, this message translates to:
  /// **'Rescan apps'**
  String get homeRescan;

  /// No description provided for @homeAppsChecked.
  ///
  /// In en, this message translates to:
  /// **'Apps checked on this phone: {count}'**
  String homeAppsChecked(int count);

  /// No description provided for @homeAppsCounted.
  ///
  /// In en, this message translates to:
  /// **'Apps counted: {counted}, trusted: {trusted}'**
  String homeAppsCounted(int counted, int trusted);

  /// No description provided for @homeNeedsAttention.
  ///
  /// In en, this message translates to:
  /// **'Needs attention'**
  String get homeNeedsAttention;

  /// No description provided for @homeSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get homeSeeAll;

  /// No description provided for @homeAllSafe.
  ///
  /// In en, this message translates to:
  /// **'Nothing needs attention. All your apps look safe.'**
  String get homeAllSafe;

  /// No description provided for @homeShareFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not share the report.'**
  String get homeShareFailed;

  /// No description provided for @scoreOf100.
  ///
  /// In en, this message translates to:
  /// **'of 100'**
  String get scoreOf100;

  /// No description provided for @scoreSemantics.
  ///
  /// In en, this message translates to:
  /// **'Privacy score {score} out of 100'**
  String scoreSemantics(int score);

  /// No description provided for @wizardCard.
  ///
  /// In en, this message translates to:
  /// **'Review apps with sensitive access: {count}'**
  String wizardCard(int count);

  /// No description provided for @appsSubtitleAll.
  ///
  /// In en, this message translates to:
  /// **'Apps: {count}, riskiest first'**
  String appsSubtitleAll(int count);

  /// No description provided for @appsSubtitleFiltered.
  ///
  /// In en, this message translates to:
  /// **'Showing {shown} of {total}'**
  String appsSubtitleFiltered(int shown, int total);

  /// No description provided for @appsSearch.
  ///
  /// In en, this message translates to:
  /// **'Search apps'**
  String get appsSearch;

  /// No description provided for @appsNone.
  ///
  /// In en, this message translates to:
  /// **'No apps found'**
  String get appsNone;

  /// No description provided for @chipMine.
  ///
  /// In en, this message translates to:
  /// **'My apps'**
  String get chipMine;

  /// No description provided for @chipSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get chipSystem;

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterTrackers.
  ///
  /// In en, this message translates to:
  /// **'Has trackers'**
  String get filterTrackers;

  /// No description provided for @filterSpecial.
  ///
  /// In en, this message translates to:
  /// **'Special access'**
  String get filterSpecial;

  /// No description provided for @filterNotStore.
  ///
  /// In en, this message translates to:
  /// **'Not from a store'**
  String get filterNotStore;

  /// No description provided for @filterOffline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get filterOffline;

  /// No description provided for @filterTrusted.
  ///
  /// In en, this message translates to:
  /// **'Trusted'**
  String get filterTrusted;

  /// No description provided for @permSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Who can use what on this phone'**
  String get permSubtitle;

  /// No description provided for @trackersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Which trackers sit in which apps'**
  String get trackersSubtitle;

  /// No description provided for @segTrackers.
  ///
  /// In en, this message translates to:
  /// **'Trackers'**
  String get segTrackers;

  /// No description provided for @noTrackers.
  ///
  /// In en, this message translates to:
  /// **'No known trackers found.'**
  String get noTrackers;

  /// No description provided for @noPerms.
  ///
  /// In en, this message translates to:
  /// **'No sensitive permissions found.'**
  String get noPerms;

  /// No description provided for @appsCount.
  ///
  /// In en, this message translates to:
  /// **'Apps: {count}'**
  String appsCount(int count);

  /// No description provided for @changesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'New apps and permission changes'**
  String get changesSubtitle;

  /// No description provided for @clearTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear changes?'**
  String get clearTitle;

  /// No description provided for @clearBody.
  ///
  /// In en, this message translates to:
  /// **'The list of changes will be removed from this phone.'**
  String get clearBody;

  /// No description provided for @changesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No changes yet. Peekless will list new apps, removed apps, new permissions and new trackers here.'**
  String get changesEmpty;

  /// No description provided for @evInstalled.
  ///
  /// In en, this message translates to:
  /// **'Installed. Score {score} ({level}).'**
  String evInstalled(int score, String level);

  /// No description provided for @evRemoved.
  ///
  /// In en, this message translates to:
  /// **'Uninstalled.'**
  String get evRemoved;

  /// No description provided for @evAllowed.
  ///
  /// In en, this message translates to:
  /// **'Now allowed: {label}.'**
  String evAllowed(String label);

  /// No description provided for @evRevoked.
  ///
  /// In en, this message translates to:
  /// **'No longer allowed: {label}.'**
  String evRevoked(String label);

  /// No description provided for @evTracker.
  ///
  /// In en, this message translates to:
  /// **'New tracker found: {name}.'**
  String evTracker(String name);

  /// No description provided for @evSpecialOn.
  ///
  /// In en, this message translates to:
  /// **'{label} turned on.'**
  String evSpecialOn(String label);

  /// No description provided for @evSpecialOff.
  ///
  /// In en, this message translates to:
  /// **'{label} turned off.'**
  String evSpecialOff(String label);

  /// No description provided for @checksTitle.
  ///
  /// In en, this message translates to:
  /// **'Security checks'**
  String get checksTitle;

  /// No description provided for @checksIntro.
  ///
  /// In en, this message translates to:
  /// **'Things that are worth a second look. Tap a check to see the apps.'**
  String get checksIntro;

  /// No description provided for @checkUnusedTitle.
  ///
  /// In en, this message translates to:
  /// **'Unused apps with sensitive access'**
  String get checkUnusedTitle;

  /// No description provided for @checkDebuggableTitle.
  ///
  /// In en, this message translates to:
  /// **'Debuggable builds'**
  String get checkDebuggableTitle;

  /// No description provided for @checkOfflineTitle.
  ///
  /// In en, this message translates to:
  /// **'Offline apps'**
  String get checkOfflineTitle;

  /// No description provided for @checkAccessibilityDesc.
  ///
  /// In en, this message translates to:
  /// **'These apps can read your screen and tap for you.'**
  String get checkAccessibilityDesc;

  /// No description provided for @checkAdminDesc.
  ///
  /// In en, this message translates to:
  /// **'These apps can lock or wipe the phone and block uninstalling.'**
  String get checkAdminDesc;

  /// No description provided for @checkNotificationDesc.
  ///
  /// In en, this message translates to:
  /// **'These apps can read all your notifications, including codes.'**
  String get checkNotificationDesc;

  /// No description provided for @checkUnusedDesc.
  ///
  /// In en, this message translates to:
  /// **'Not opened for {days} days, but they can still use sensitive permissions. Consider removing them.'**
  String checkUnusedDesc(int days);

  /// No description provided for @checkNotStoreDesc.
  ///
  /// In en, this message translates to:
  /// **'Installed from a file or a computer. Nobody checked these for you.'**
  String get checkNotStoreDesc;

  /// No description provided for @checkDebuggableDesc.
  ///
  /// In en, this message translates to:
  /// **'Test versions that can be inspected from a computer.'**
  String get checkDebuggableDesc;

  /// No description provided for @checkOldDesc.
  ///
  /// In en, this message translates to:
  /// **'These apps skip newer Android privacy protections.'**
  String get checkOldDesc;

  /// No description provided for @checkOfflineDesc.
  ///
  /// In en, this message translates to:
  /// **'No internet permission, so they cannot send data online.'**
  String get checkOfflineDesc;

  /// No description provided for @usagePromptBody.
  ///
  /// In en, this message translates to:
  /// **'Optional. Turn on Usage access to find apps you have not opened for a long time but that can still use your microphone, location or contacts. The data never leaves your phone.'**
  String get usagePromptBody;

  /// No description provided for @usagePromptButton.
  ///
  /// In en, this message translates to:
  /// **'Turn on Usage access'**
  String get usagePromptButton;

  /// No description provided for @securityNone.
  ///
  /// In en, this message translates to:
  /// **'No security flags found on this phone.'**
  String get securityNone;

  /// No description provided for @securityOffline.
  ///
  /// In en, this message translates to:
  /// **'Apps that work fully offline: {count}'**
  String securityOffline(int count);

  /// No description provided for @fixWizardTitle.
  ///
  /// In en, this message translates to:
  /// **'Fix wizard'**
  String get fixWizardTitle;

  /// No description provided for @wizardStep.
  ///
  /// In en, this message translates to:
  /// **'App {index} of {total}'**
  String wizardStep(int index, int total);

  /// No description provided for @wizardQuestion.
  ///
  /// In en, this message translates to:
  /// **'Does this app really need these?'**
  String get wizardQuestion;

  /// No description provided for @wizardHint.
  ///
  /// In en, this message translates to:
  /// **'Tap “Open app settings”, then Permissions, and switch off what the app does not need.'**
  String get wizardHint;

  /// No description provided for @openAppSettings.
  ///
  /// In en, this message translates to:
  /// **'Open app settings'**
  String get openAppSettings;

  /// No description provided for @trustApp.
  ///
  /// In en, this message translates to:
  /// **'I trust this app'**
  String get trustApp;

  /// No description provided for @nextApp.
  ///
  /// In en, this message translates to:
  /// **'Next app'**
  String get nextApp;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @wizardDone.
  ///
  /// In en, this message translates to:
  /// **'All reviewed'**
  String get wizardDone;

  /// No description provided for @wizardNothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing to review'**
  String get wizardNothing;

  /// No description provided for @wizardNothingBody.
  ///
  /// In en, this message translates to:
  /// **'No app has sensitive access right now.'**
  String get wizardNothingBody;

  /// No description provided for @wizardRescanBody.
  ///
  /// In en, this message translates to:
  /// **'Rescan to see your new score.'**
  String get wizardRescanBody;

  /// No description provided for @rescanFinish.
  ///
  /// In en, this message translates to:
  /// **'Rescan and finish'**
  String get rescanFinish;

  /// No description provided for @wizardRequested.
  ///
  /// In en, this message translates to:
  /// **'asked for, not allowed yet'**
  String get wizardRequested;

  /// No description provided for @scoreTrackers.
  ///
  /// In en, this message translates to:
  /// **'Known trackers: {count}'**
  String scoreTrackers(int count);

  /// No description provided for @scoreDebuggable.
  ///
  /// In en, this message translates to:
  /// **'Debuggable build'**
  String get scoreDebuggable;

  /// No description provided for @scoreOldTarget.
  ///
  /// In en, this message translates to:
  /// **'Built for very old Android'**
  String get scoreOldTarget;

  /// No description provided for @unusualFor.
  ///
  /// In en, this message translates to:
  /// **'Unusual for this type of app: {groups}'**
  String unusualFor(String groups);

  /// No description provided for @noteRequested.
  ///
  /// In en, this message translates to:
  /// **'requested, counts half'**
  String get noteRequested;

  /// No description provided for @noteAllowed.
  ///
  /// In en, this message translates to:
  /// **'allowed'**
  String get noteAllowed;

  /// No description provided for @noteTrackers.
  ///
  /// In en, this message translates to:
  /// **'{points} points each, up to {max}'**
  String noteTrackers(int points, int max);

  /// No description provided for @noteTurnedOn.
  ///
  /// In en, this message translates to:
  /// **'turned on'**
  String get noteTurnedOn;

  /// No description provided for @noteDebuggable.
  ///
  /// In en, this message translates to:
  /// **'can be inspected from a computer'**
  String get noteDebuggable;

  /// No description provided for @noteApi.
  ///
  /// In en, this message translates to:
  /// **'API level {apiLevel}'**
  String noteApi(int apiLevel);

  /// No description provided for @noteExtra.
  ///
  /// In en, this message translates to:
  /// **'extra penalty'**
  String get noteExtra;

  /// No description provided for @explainTitle.
  ///
  /// In en, this message translates to:
  /// **'How the score works'**
  String get explainTitle;

  /// No description provided for @explainIntro.
  ///
  /// In en, this message translates to:
  /// **'Every app starts at 100. Points are removed for what the app can do.'**
  String get explainIntro;

  /// No description provided for @explainStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get explainStart;

  /// No description provided for @explainNothing.
  ///
  /// In en, this message translates to:
  /// **'Nothing removed'**
  String get explainNothing;

  /// No description provided for @explainNothingNote.
  ///
  /// In en, this message translates to:
  /// **'No sensitive permissions and no known trackers'**
  String get explainNothingNote;

  /// No description provided for @explainScore.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get explainScore;

  /// No description provided for @explainRules.
  ///
  /// In en, this message translates to:
  /// **'The rules'**
  String get explainRules;

  /// No description provided for @rule1.
  ///
  /// In en, this message translates to:
  /// **'Only the heaviest permission in each group counts. For example, precise location and approximate location are counted once.'**
  String get rule1;

  /// No description provided for @rule2.
  ///
  /// In en, this message translates to:
  /// **'Special permissions (all files, draw over apps, install apps) count half when an app only requests them.'**
  String get rule2;

  /// No description provided for @rule3.
  ///
  /// In en, this message translates to:
  /// **'Each known tracker removes {points} points, up to {max}.'**
  String rule3(int points, int max);

  /// No description provided for @rule4.
  ///
  /// In en, this message translates to:
  /// **'Special access that is turned on removes points: accessibility {a}, device admin {b}, notification access {c}.'**
  String rule4(int a, int b, int c);

  /// No description provided for @rule5.
  ///
  /// In en, this message translates to:
  /// **'A debuggable build removes {a} points. An app built for Android 7 or older removes {b} points.'**
  String rule5(int a, int b);

  /// No description provided for @rule6.
  ///
  /// In en, this message translates to:
  /// **'If a permission is unusual for the kind of app (for example a microphone in a flashlight), {points} extra points are removed, for up to {maxGroups} permission groups.'**
  String rule6(int points, int maxGroups);

  /// No description provided for @rule7.
  ///
  /// In en, this message translates to:
  /// **'70 or more is Safe. 40 to 69 is Medium. Below 40 is Risky.'**
  String get rule7;

  /// No description provided for @explainFooter.
  ///
  /// In en, this message translates to:
  /// **'The score shows what an app is able to do, not what it is doing right now.'**
  String get explainFooter;

  /// No description provided for @howScore.
  ///
  /// In en, this message translates to:
  /// **'How is this score calculated?'**
  String get howScore;

  /// No description provided for @summaryTrackers.
  ///
  /// In en, this message translates to:
  /// **'Known trackers: {count}.'**
  String summaryTrackers(int count);

  /// No description provided for @summaryNone.
  ///
  /// In en, this message translates to:
  /// **'No sensitive permissions and no known trackers.'**
  String get summaryNone;

  /// No description provided for @metaTrackers.
  ///
  /// In en, this message translates to:
  /// **'Trackers: {count}'**
  String metaTrackers(int count);

  /// No description provided for @metaNone.
  ///
  /// In en, this message translates to:
  /// **'No sensitive permissions'**
  String get metaNone;

  /// No description provided for @detailSecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get detailSecurity;

  /// No description provided for @detailSource.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get detailSource;

  /// No description provided for @detailInternet.
  ///
  /// In en, this message translates to:
  /// **'Internet'**
  String get detailInternet;

  /// No description provided for @detailInternetYes.
  ///
  /// In en, this message translates to:
  /// **'Can use the internet'**
  String get detailInternetYes;

  /// No description provided for @detailOffline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get detailOffline;

  /// No description provided for @detailOfflineBody.
  ///
  /// In en, this message translates to:
  /// **'No internet permission, so it cannot send data online'**
  String get detailOfflineBody;

  /// No description provided for @detailLastOpened.
  ///
  /// In en, this message translates to:
  /// **'Last opened'**
  String get detailLastOpened;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @daysSince.
  ///
  /// In en, this message translates to:
  /// **'Days since last use: {days}'**
  String daysSince(int days);

  /// No description provided for @detailDebuggableBody.
  ///
  /// In en, this message translates to:
  /// **'A test version that can be inspected from a computer'**
  String get detailDebuggableBody;

  /// No description provided for @detailOldBody.
  ///
  /// In en, this message translates to:
  /// **'API level {apiLevel}, so newer privacy protections are skipped'**
  String detailOldBody(int apiLevel);

  /// No description provided for @detailTrustBody.
  ///
  /// In en, this message translates to:
  /// **'Leave it out of the Risky count and alerts'**
  String get detailTrustBody;

  /// No description provided for @detailNoPerms.
  ///
  /// In en, this message translates to:
  /// **'This app does not ask for any sensitive permissions.'**
  String get detailNoPerms;

  /// No description provided for @chipAllowed.
  ///
  /// In en, this message translates to:
  /// **'Allowed'**
  String get chipAllowed;

  /// No description provided for @chipRequested.
  ///
  /// In en, this message translates to:
  /// **'Requested'**
  String get chipRequested;

  /// No description provided for @chipNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Not allowed'**
  String get chipNotAllowed;

  /// No description provided for @sensitiveNote.
  ///
  /// In en, this message translates to:
  /// **'Sensitive: {why}'**
  String sensitiveNote(String why);

  /// No description provided for @detailTrackers.
  ///
  /// In en, this message translates to:
  /// **'Trackers found: {count}'**
  String detailTrackers(int count);

  /// No description provided for @detailDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Peekless shows what an app is able to do, not what it is doing right now. Trackers are found from the app manifest, so some may be missed.'**
  String get detailDisclaimer;

  /// No description provided for @srcBuiltIn.
  ///
  /// In en, this message translates to:
  /// **'Built into your phone'**
  String get srcBuiltIn;

  /// No description provided for @srcUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown (installed from a file or a computer)'**
  String get srcUnknown;

  /// No description provided for @srcApk.
  ///
  /// In en, this message translates to:
  /// **'An APK file you opened'**
  String get srcApk;

  /// No description provided for @srcAdb.
  ///
  /// In en, this message translates to:
  /// **'A computer (adb)'**
  String get srcAdb;

  /// No description provided for @srcInstalledBy.
  ///
  /// In en, this message translates to:
  /// **'Installed by {name}'**
  String srcInstalledBy(String name);

  /// No description provided for @accessibilityLabel.
  ///
  /// In en, this message translates to:
  /// **'Accessibility access'**
  String get accessibilityLabel;

  /// No description provided for @adminLabel.
  ///
  /// In en, this message translates to:
  /// **'Device admin'**
  String get adminLabel;

  /// No description provided for @notificationLabel.
  ///
  /// In en, this message translates to:
  /// **'Notification access'**
  String get notificationLabel;

  /// No description provided for @accessibilityWhy.
  ///
  /// In en, this message translates to:
  /// **'Turned on. It can read what is on your screen and act for you.'**
  String get accessibilityWhy;

  /// No description provided for @adminWhy.
  ///
  /// In en, this message translates to:
  /// **'Turned on. It can lock the phone, wipe it and block uninstalling.'**
  String get adminWhy;

  /// No description provided for @notificationWhy.
  ///
  /// In en, this message translates to:
  /// **'Turned on. It can read all your notifications, including codes.'**
  String get notificationWhy;

  /// No description provided for @grpMicrophone.
  ///
  /// In en, this message translates to:
  /// **'Microphone'**
  String get grpMicrophone;

  /// No description provided for @grpCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get grpCamera;

  /// No description provided for @grpLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get grpLocation;

  /// No description provided for @grpContacts.
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get grpContacts;

  /// No description provided for @grpSms.
  ///
  /// In en, this message translates to:
  /// **'SMS'**
  String get grpSms;

  /// No description provided for @grpCallLog.
  ///
  /// In en, this message translates to:
  /// **'Call log'**
  String get grpCallLog;

  /// No description provided for @grpPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get grpPhone;

  /// No description provided for @grpCalendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get grpCalendar;

  /// No description provided for @grpBodySensors.
  ///
  /// In en, this message translates to:
  /// **'Body sensors'**
  String get grpBodySensors;

  /// No description provided for @grpActivity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get grpActivity;

  /// No description provided for @grpFiles.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get grpFiles;

  /// No description provided for @grpOverlay.
  ///
  /// In en, this message translates to:
  /// **'Overlay'**
  String get grpOverlay;

  /// No description provided for @grpInstalls.
  ///
  /// In en, this message translates to:
  /// **'Installs'**
  String get grpInstalls;

  /// No description provided for @grpAppList.
  ///
  /// In en, this message translates to:
  /// **'App list'**
  String get grpAppList;

  /// No description provided for @lblCoarseLocation.
  ///
  /// In en, this message translates to:
  /// **'Approximate location'**
  String get lblCoarseLocation;

  /// No description provided for @lblFineLocation.
  ///
  /// In en, this message translates to:
  /// **'Precise location'**
  String get lblFineLocation;

  /// No description provided for @lblBackgroundLocation.
  ///
  /// In en, this message translates to:
  /// **'Location all the time'**
  String get lblBackgroundLocation;

  /// No description provided for @lblAccounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get lblAccounts;

  /// No description provided for @lblReadSms.
  ///
  /// In en, this message translates to:
  /// **'Read SMS'**
  String get lblReadSms;

  /// No description provided for @lblReceiveSms.
  ///
  /// In en, this message translates to:
  /// **'Receive SMS'**
  String get lblReceiveSms;

  /// No description provided for @lblSendSms.
  ///
  /// In en, this message translates to:
  /// **'Send SMS'**
  String get lblSendSms;

  /// No description provided for @lblPhoneState.
  ///
  /// In en, this message translates to:
  /// **'Phone status'**
  String get lblPhoneState;

  /// No description provided for @lblCallPhone.
  ///
  /// In en, this message translates to:
  /// **'Make calls'**
  String get lblCallPhone;

  /// No description provided for @lblActivity.
  ///
  /// In en, this message translates to:
  /// **'Physical activity'**
  String get lblActivity;

  /// No description provided for @lblAllFiles.
  ///
  /// In en, this message translates to:
  /// **'All files'**
  String get lblAllFiles;

  /// No description provided for @lblFilesMedia.
  ///
  /// In en, this message translates to:
  /// **'Files and media'**
  String get lblFilesMedia;

  /// No description provided for @lblPhotos.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get lblPhotos;

  /// No description provided for @lblVideos.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get lblVideos;

  /// No description provided for @lblAudioFiles.
  ///
  /// In en, this message translates to:
  /// **'Audio files'**
  String get lblAudioFiles;

  /// No description provided for @lblOverlay.
  ///
  /// In en, this message translates to:
  /// **'Draw over other apps'**
  String get lblOverlay;

  /// No description provided for @lblInstall.
  ///
  /// In en, this message translates to:
  /// **'Install other apps'**
  String get lblInstall;

  /// No description provided for @lblAppList.
  ///
  /// In en, this message translates to:
  /// **'See all apps'**
  String get lblAppList;

  /// No description provided for @whyMic.
  ///
  /// In en, this message translates to:
  /// **'Can record audio.'**
  String get whyMic;

  /// No description provided for @whyCamera.
  ///
  /// In en, this message translates to:
  /// **'Can use the camera.'**
  String get whyCamera;

  /// No description provided for @whyCoarse.
  ///
  /// In en, this message translates to:
  /// **'Can see your approximate location.'**
  String get whyCoarse;

  /// No description provided for @whyFine.
  ///
  /// In en, this message translates to:
  /// **'Can see your precise location.'**
  String get whyFine;

  /// No description provided for @whyBackground.
  ///
  /// In en, this message translates to:
  /// **'Can track your location all the time.'**
  String get whyBackground;

  /// No description provided for @whyContacts.
  ///
  /// In en, this message translates to:
  /// **'Can read your contacts.'**
  String get whyContacts;

  /// No description provided for @whyAccounts.
  ///
  /// In en, this message translates to:
  /// **'Can see the accounts on your phone.'**
  String get whyAccounts;

  /// No description provided for @whyReadSms.
  ///
  /// In en, this message translates to:
  /// **'Can read your text messages.'**
  String get whyReadSms;

  /// No description provided for @whyReceiveSms.
  ///
  /// In en, this message translates to:
  /// **'Can receive your text messages.'**
  String get whyReceiveSms;

  /// No description provided for @whySendSms.
  ///
  /// In en, this message translates to:
  /// **'Can send text messages.'**
  String get whySendSms;

  /// No description provided for @whyCallLog.
  ///
  /// In en, this message translates to:
  /// **'Can read your call history.'**
  String get whyCallLog;

  /// No description provided for @whyPhoneState.
  ///
  /// In en, this message translates to:
  /// **'Can see your phone status.'**
  String get whyPhoneState;

  /// No description provided for @whyCallPhone.
  ///
  /// In en, this message translates to:
  /// **'Can make phone calls.'**
  String get whyCallPhone;

  /// No description provided for @whyCalendar.
  ///
  /// In en, this message translates to:
  /// **'Can read your calendar.'**
  String get whyCalendar;

  /// No description provided for @whyBody.
  ///
  /// In en, this message translates to:
  /// **'Can read body sensors.'**
  String get whyBody;

  /// No description provided for @whyActivity.
  ///
  /// In en, this message translates to:
  /// **'Can see your physical activity.'**
  String get whyActivity;

  /// No description provided for @whyAllFiles.
  ///
  /// In en, this message translates to:
  /// **'Can access all files on your phone.'**
  String get whyAllFiles;

  /// No description provided for @whyFilesMedia.
  ///
  /// In en, this message translates to:
  /// **'Can read files and media.'**
  String get whyFilesMedia;

  /// No description provided for @whyPhotos.
  ///
  /// In en, this message translates to:
  /// **'Can read your photos.'**
  String get whyPhotos;

  /// No description provided for @whyVideos.
  ///
  /// In en, this message translates to:
  /// **'Can read your videos.'**
  String get whyVideos;

  /// No description provided for @whyAudio.
  ///
  /// In en, this message translates to:
  /// **'Can read your audio files.'**
  String get whyAudio;

  /// No description provided for @whyOverlay.
  ///
  /// In en, this message translates to:
  /// **'Can draw over other apps.'**
  String get whyOverlay;

  /// No description provided for @whyInstall.
  ///
  /// In en, this message translates to:
  /// **'Can install other apps.'**
  String get whyInstall;

  /// No description provided for @whyAppList.
  ///
  /// In en, this message translates to:
  /// **'Can see all apps on your phone.'**
  String get whyAppList;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeBody.
  ///
  /// In en, this message translates to:
  /// **'Follows your phone by default'**
  String get settingsThemeBody;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @settingsScanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning'**
  String get settingsScanning;

  /// No description provided for @settingsAlerts.
  ///
  /// In en, this message translates to:
  /// **'App alerts'**
  String get settingsAlerts;

  /// No description provided for @settingsAlertsBody.
  ///
  /// In en, this message translates to:
  /// **'Notify about new apps and new permissions. Checks about every 6 hours.'**
  String get settingsAlertsBody;

  /// No description provided for @settingsWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly summary'**
  String get settingsWeekly;

  /// No description provided for @settingsWeeklyBody.
  ///
  /// In en, this message translates to:
  /// **'One notification a week: your score and what changed'**
  String get settingsWeeklyBody;

  /// No description provided for @settingsUsage.
  ///
  /// In en, this message translates to:
  /// **'Usage access'**
  String get settingsUsage;

  /// No description provided for @settingsUsageOn.
  ///
  /// In en, this message translates to:
  /// **'On. Peekless can see when apps were last opened.'**
  String get settingsUsageOn;

  /// No description provided for @settingsUsageOff.
  ///
  /// In en, this message translates to:
  /// **'Off. Optional. Lets Peekless find apps you no longer use. It stays on your phone.'**
  String get settingsUsageOff;

  /// No description provided for @settingsSystemApps.
  ///
  /// In en, this message translates to:
  /// **'Include system apps'**
  String get settingsSystemApps;

  /// No description provided for @settingsSystemAppsBody.
  ///
  /// In en, this message translates to:
  /// **'Also scan apps built into your phone'**
  String get settingsSystemAppsBody;

  /// No description provided for @settingsRescan.
  ///
  /// In en, this message translates to:
  /// **'Rescan now'**
  String get settingsRescan;

  /// No description provided for @settingsRescanBody.
  ///
  /// In en, this message translates to:
  /// **'Check all apps again'**
  String get settingsRescanBody;

  /// No description provided for @settingsUpdates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get settingsUpdates;

  /// No description provided for @settingsCheckUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get settingsCheckUpdates;

  /// No description provided for @settingsVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version} · only when you tap'**
  String settingsVersion(String version);

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsPrivacy;

  /// No description provided for @settingsPrivacyBody.
  ///
  /// In en, this message translates to:
  /// **'Everything stays on your phone'**
  String get settingsPrivacyBody;

  /// No description provided for @settingsOpenSource.
  ///
  /// In en, this message translates to:
  /// **'Open source'**
  String get settingsOpenSource;

  /// No description provided for @settingsOpenSourceBody.
  ///
  /// In en, this message translates to:
  /// **'GPL-3.0 license. View the code on GitHub'**
  String get settingsOpenSourceBody;

  /// No description provided for @settingsDeveloped.
  ///
  /// In en, this message translates to:
  /// **'Developed by Lumio Apps'**
  String get settingsDeveloped;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @languageSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow phone language'**
  String get languageSystem;

  /// No description provided for @updChecking.
  ///
  /// In en, this message translates to:
  /// **'Checking for updates...'**
  String get updChecking;

  /// No description provided for @updLatest.
  ///
  /// In en, this message translates to:
  /// **'You have the latest version.'**
  String get updLatest;

  /// No description provided for @updFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not check for updates. Try again later.'**
  String get updFailed;

  /// No description provided for @updTitle.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get updTitle;

  /// No description provided for @updReady.
  ///
  /// In en, this message translates to:
  /// **'Version {version} is ready to install.'**
  String updReady(String version);

  /// No description provided for @updDownloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Download failed. Check your connection and try again.'**
  String get updDownloadFailed;

  /// No description provided for @updInstall.
  ///
  /// In en, this message translates to:
  /// **'Download and install'**
  String get updInstall;

  /// No description provided for @notifyDenied.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications for Peekless to turn this on.'**
  String get notifyDenied;

  /// No description provided for @settingChangeFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not change this setting.'**
  String get settingChangeFailed;

  /// No description provided for @usageOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open Usage access settings.'**
  String get usageOpenFailed;

  /// No description provided for @alertNewTitle.
  ///
  /// In en, this message translates to:
  /// **'New app: {name}'**
  String alertNewTitle(String name);

  /// No description provided for @alertNewBody.
  ///
  /// In en, this message translates to:
  /// **'Score {score} ({level}). {summary}'**
  String alertNewBody(int score, String level, String summary);

  /// No description provided for @alertChangedTitle.
  ///
  /// In en, this message translates to:
  /// **'{name} changed'**
  String alertChangedTitle(String name);

  /// No description provided for @alertNowHas.
  ///
  /// In en, this message translates to:
  /// **'Now has: {list}.'**
  String alertNowHas(String list);

  /// No description provided for @alertNowAllowed.
  ///
  /// In en, this message translates to:
  /// **'Now allowed: {list}.'**
  String alertNowAllowed(String list);

  /// No description provided for @alertNewTracker.
  ///
  /// In en, this message translates to:
  /// **'New tracker: {list}.'**
  String alertNewTracker(String list);

  /// No description provided for @alertScore.
  ///
  /// In en, this message translates to:
  /// **'Score {score} ({level}).'**
  String alertScore(int score, String level);

  /// No description provided for @alertMoreTitle.
  ///
  /// In en, this message translates to:
  /// **'More changes'**
  String get alertMoreTitle;

  /// No description provided for @alertMoreBody.
  ///
  /// In en, this message translates to:
  /// **'More changes: {count}. Open Peekless to see them.'**
  String alertMoreBody(int count);

  /// No description provided for @weeklyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your weekly Peekless summary'**
  String get weeklyTitle;

  /// No description provided for @weeklyUp.
  ///
  /// In en, this message translates to:
  /// **'Score {score}/100, up {diff} since last week.'**
  String weeklyUp(int score, int diff);

  /// No description provided for @weeklyDown.
  ///
  /// In en, this message translates to:
  /// **'Score {score}/100, down {diff} since last week.'**
  String weeklyDown(int score, int diff);

  /// No description provided for @weeklySame.
  ///
  /// In en, this message translates to:
  /// **'Score {score}/100, no change since last week.'**
  String weeklySame(int score);

  /// No description provided for @weeklyScore.
  ///
  /// In en, this message translates to:
  /// **'Score {score}/100.'**
  String weeklyScore(int score);

  /// No description provided for @weeklyNewApps.
  ///
  /// In en, this message translates to:
  /// **'New apps: {count}'**
  String weeklyNewApps(int count);

  /// No description provided for @weeklyRemoved.
  ///
  /// In en, this message translates to:
  /// **'Apps removed: {count}'**
  String weeklyRemoved(int count);

  /// No description provided for @weeklyAllowed.
  ///
  /// In en, this message translates to:
  /// **'Permissions turned on: {count}'**
  String weeklyAllowed(int count);

  /// No description provided for @weeklyTrackers.
  ///
  /// In en, this message translates to:
  /// **'New trackers: {count}'**
  String weeklyTrackers(int count);

  /// No description provided for @weeklyChanges.
  ///
  /// In en, this message translates to:
  /// **'This week: {list}.'**
  String weeklyChanges(String list);

  /// No description provided for @weeklyNone.
  ///
  /// In en, this message translates to:
  /// **'No changes this week.'**
  String get weeklyNone;

  /// No description provided for @weeklyRisky.
  ///
  /// In en, this message translates to:
  /// **'Risky apps: {count}.'**
  String weeklyRisky(int count);

  /// No description provided for @reportTitle.
  ///
  /// In en, this message translates to:
  /// **'Peekless privacy report'**
  String get reportTitle;

  /// No description provided for @reportScore.
  ///
  /// In en, this message translates to:
  /// **'Score: {score}/100 ({level})'**
  String reportScore(int score, String level);

  /// No description provided for @reportCounts.
  ///
  /// In en, this message translates to:
  /// **'Apps checked: {total}. Risky: {risky}, Medium: {medium}, Safe: {safe}'**
  String reportCounts(int total, int risky, int medium, int safe);

  /// No description provided for @reportAttention.
  ///
  /// In en, this message translates to:
  /// **'Needs attention:'**
  String get reportAttention;

  /// No description provided for @reportFooter.
  ///
  /// In en, this message translates to:
  /// **'Checked on my phone with Peekless. Nothing was sent anywhere.'**
  String get reportFooter;

  /// No description provided for @trendTitle.
  ///
  /// In en, this message translates to:
  /// **'Score over time'**
  String get trendTitle;

  /// No description provided for @trendUp.
  ///
  /// In en, this message translates to:
  /// **'Up {diff} points (days tracked: {days})'**
  String trendUp(int diff, int days);

  /// No description provided for @trendDown.
  ///
  /// In en, this message translates to:
  /// **'Down {diff} points (days tracked: {days})'**
  String trendDown(int diff, int days);

  /// No description provided for @trendSame.
  ///
  /// In en, this message translates to:
  /// **'No change (days tracked: {days})'**
  String trendSame(int days);

  /// No description provided for @settingsQuick.
  ///
  /// In en, this message translates to:
  /// **'Quick access'**
  String get settingsQuick;

  /// No description provided for @quickWidget.
  ///
  /// In en, this message translates to:
  /// **'Home screen widget'**
  String get quickWidget;

  /// No description provided for @quickWidgetBody.
  ///
  /// In en, this message translates to:
  /// **'Show your privacy score on the home screen'**
  String get quickWidgetBody;

  /// No description provided for @quickTile.
  ///
  /// In en, this message translates to:
  /// **'Quick Settings tile'**
  String get quickTile;

  /// No description provided for @quickTileBody.
  ///
  /// In en, this message translates to:
  /// **'See your score in the quick settings panel'**
  String get quickTileBody;

  /// No description provided for @quickManual.
  ///
  /// In en, this message translates to:
  /// **'Your phone could not add this automatically. Add it by hand: long-press the home screen (widget) or edit the quick settings panel (tile).'**
  String get quickManual;

  /// No description provided for @settingsExport.
  ///
  /// In en, this message translates to:
  /// **'Export report'**
  String get settingsExport;

  /// No description provided for @settingsExportBody.
  ///
  /// In en, this message translates to:
  /// **'Save the report as a PDF or JSON file and share it'**
  String get settingsExportBody;

  /// No description provided for @exportFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not create the report.'**
  String get exportFailed;

  /// No description provided for @settingsTrackerList.
  ///
  /// In en, this message translates to:
  /// **'Tracker list'**
  String get settingsTrackerList;

  /// No description provided for @settingsTrackerListBody.
  ///
  /// In en, this message translates to:
  /// **'Tap to update. {count} trackers known. Only when you tap.'**
  String settingsTrackerListBody(int count);

  /// No description provided for @trackerListUpdating.
  ///
  /// In en, this message translates to:
  /// **'Updating tracker list…'**
  String get trackerListUpdating;

  /// No description provided for @trackerListUpdated.
  ///
  /// In en, this message translates to:
  /// **'Tracker list updated. {count} trackers known.'**
  String trackerListUpdated(int count);

  /// No description provided for @trackerListCurrent.
  ///
  /// In en, this message translates to:
  /// **'Tracker list is already up to date.'**
  String get trackerListCurrent;

  /// No description provided for @trackerListFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not update the tracker list. Check your connection.'**
  String get trackerListFailed;

  /// No description provided for @homeTagline.
  ///
  /// In en, this message translates to:
  /// **'See who’s peeking at you.'**
  String get homeTagline;

  /// No description provided for @homeOverviewBody.
  ///
  /// In en, this message translates to:
  /// **'Share of your apps that can use each one'**
  String get homeOverviewBody;

  /// No description provided for @settingsDeep.
  ///
  /// In en, this message translates to:
  /// **'Deep scan'**
  String get settingsDeep;

  /// No description provided for @settingsDeepBody.
  ///
  /// In en, this message translates to:
  /// **'Also look inside each app’s code for hidden trackers. The first scan is slower. Apps that came with your phone are skipped. It stays on your phone.'**
  String get settingsDeepBody;

  /// No description provided for @trackersFromCode.
  ///
  /// In en, this message translates to:
  /// **'Found inside the app’s code (marked with a code icon): {count}'**
  String trackersFromCode(int count);

  /// No description provided for @settingsNet.
  ///
  /// In en, this message translates to:
  /// **'Network monitor'**
  String get settingsNet;

  /// No description provided for @settingsNetBody.
  ///
  /// In en, this message translates to:
  /// **'See which apps look up which internet addresses, and which are trackers'**
  String get settingsNetBody;

  /// No description provided for @netTitle.
  ///
  /// In en, this message translates to:
  /// **'Network monitor'**
  String get netTitle;

  /// No description provided for @netIntro.
  ///
  /// In en, this message translates to:
  /// **'Peekless shows which domain names your apps ask for. It uses a local VPN that takes only these lookups, so your internet speed does not change. It cannot see what you send or read, only the names. Nothing leaves your phone.'**
  String get netIntro;

  /// No description provided for @netLimits.
  ///
  /// In en, this message translates to:
  /// **'It can miss apps that use their own encrypted DNS, or when Private DNS is set to a fixed provider. Android 10 or newer is needed to show which app asked.'**
  String get netLimits;

  /// No description provided for @netSwitch.
  ///
  /// In en, this message translates to:
  /// **'Monitor lookups'**
  String get netSwitch;

  /// No description provided for @netOn.
  ///
  /// In en, this message translates to:
  /// **'On. Use some apps, then come back to see the results.'**
  String get netOn;

  /// No description provided for @netOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get netOff;

  /// No description provided for @netEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing seen yet. Use some apps and look again.'**
  String get netEmpty;

  /// No description provided for @netLookups.
  ///
  /// In en, this message translates to:
  /// **'{count} lookups'**
  String netLookups(int count);

  /// No description provided for @netTrackerCount.
  ///
  /// In en, this message translates to:
  /// **'{count} tracker domains'**
  String netTrackerCount(int count);

  /// No description provided for @netClear.
  ///
  /// In en, this message translates to:
  /// **'Clear data'**
  String get netClear;

  /// No description provided for @netCleared.
  ///
  /// In en, this message translates to:
  /// **'Network data cleared.'**
  String get netCleared;

  /// No description provided for @netConsentDenied.
  ///
  /// In en, this message translates to:
  /// **'Android did not allow the monitor to start.'**
  String get netConsentDenied;

  /// No description provided for @netFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not change the network monitor.'**
  String get netFailed;

  /// No description provided for @netUnknownApp.
  ///
  /// In en, this message translates to:
  /// **'Unknown app'**
  String get netUnknownApp;

  /// No description provided for @netTrackerTag.
  ///
  /// In en, this message translates to:
  /// **'Tracker: {name}'**
  String netTrackerTag(String name);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bn',
        'de',
        'en',
        'es',
        'fa',
        'fr',
        'he',
        'hi',
        'hy',
        'id',
        'it',
        'ja',
        'ko',
        'nl',
        'pl',
        'pt',
        'ru',
        'th',
        'tr',
        'uk',
        'ur',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
