// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get navHome => 'בית';

  @override
  String get navApps => 'אפליקציות';

  @override
  String get navPermissions => 'הרשאות';

  @override
  String get navChanges => 'שינויים';

  @override
  String get navSettings => 'הגדרות';

  @override
  String get levelRisky => 'מסוכנות';

  @override
  String get levelMedium => 'בינוניות';

  @override
  String get levelSafe => 'בטוחות';

  @override
  String get overallHigh => 'סיכון גבוה';

  @override
  String get overallMedium => 'סיכון בינוני';

  @override
  String get overallLow => 'סיכון נמוך';

  @override
  String get cancel => 'ביטול';

  @override
  String get clear => 'ניקוי';

  @override
  String get back => 'חזרה';

  @override
  String get later => 'מאוחר יותר';

  @override
  String get noneFound => 'לא נמצא דבר';

  @override
  String get scanning => 'סורק...';

  @override
  String get scanFailed => 'הסריקה נכשלה';

  @override
  String get tryAgain => 'נסו שוב';

  @override
  String get couldNotOpenSettings => 'לא ניתן לפתוח את הגדרות האפליקציה.';

  @override
  String get homeShare => 'שיתוף הדוח';

  @override
  String get homeRescan => 'סריקה חוזרת של האפליקציות';

  @override
  String homeAppsChecked(int count) {
    return 'אפליקציות שנבדקו בטלפון הזה: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'אפליקציות שנספרו: $counted, מהימנות: $trusted';
  }

  @override
  String get homeNeedsAttention => 'דורשות תשומת לב';

  @override
  String get homeSeeAll => 'הצג הכול';

  @override
  String get homeAllSafe =>
      'שום דבר לא דורש תשומת לב. כל האפליקציות נראות בטוחות.';

  @override
  String get homeShareFailed => 'לא ניתן לשתף את הדוח.';

  @override
  String get scoreOf100 => 'מתוך 100';

  @override
  String scoreSemantics(int score) {
    return 'ציון פרטיות: $score מתוך 100';
  }

  @override
  String wizardCard(int count) {
    return 'עברו על אפליקציות עם גישה רגישה: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'אפליקציות: $count, המסוכנות ביותר קודם';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'מוצגות $shown מתוך $total';
  }

  @override
  String get appsSearch => 'חיפוש אפליקציות';

  @override
  String get appsNone => 'לא נמצאו אפליקציות';

  @override
  String get chipMine => 'האפליקציות שלי';

  @override
  String get chipSystem => 'מערכת';

  @override
  String get filterAll => 'הכול';

  @override
  String get filterTrackers => 'עם עוקבים';

  @override
  String get filterSpecial => 'גישה מיוחדת';

  @override
  String get filterNotStore => 'לא מהחנות';

  @override
  String get filterOffline => 'לא מקוונות';

  @override
  String get filterTrusted => 'מהימנות';

  @override
  String get permSubtitle => 'מי יכול להשתמש במה בטלפון הזה';

  @override
  String get trackersSubtitle => 'איזה עוקב נמצא באילו אפליקציות';

  @override
  String get segTrackers => 'עוקבים';

  @override
  String get noTrackers => 'לא נמצאו עוקבים מוכרים.';

  @override
  String get noPerms => 'לא נמצאו הרשאות רגישות.';

  @override
  String appsCount(int count) {
    return 'אפליקציות: $count';
  }

  @override
  String get changesSubtitle => 'אפליקציות חדשות ושינויים בהרשאות';

  @override
  String get clearTitle => 'לנקות את השינויים?';

  @override
  String get clearBody => 'רשימת השינויים תוסר מהטלפון הזה.';

  @override
  String get changesEmpty =>
      'עדיין אין שינויים. Peekless יציג כאן אפליקציות חדשות ושהוסרו, הרשאות חדשות ועוקבים חדשים.';

  @override
  String evInstalled(int score, String level) {
    return 'הותקנה. ציון: $score ($level).';
  }

  @override
  String get evRemoved => 'הוסרה.';

  @override
  String evAllowed(String label) {
    return 'כעת מותר: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'כבר לא מותר: $label.';
  }

  @override
  String evTracker(String name) {
    return 'נמצא עוקב חדש: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: הופעל.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: כובה.';
  }

  @override
  String get checksTitle => 'בדיקות אבטחה';

  @override
  String get checksIntro =>
      'דברים ששווה להסתכל עליהם שוב. הקישו על בדיקה כדי לראות את האפליקציות.';

  @override
  String get checkUnusedTitle => 'אפליקציות שאינן בשימוש עם גישה רגישה';

  @override
  String get checkDebuggableTitle => 'גרסאות ניפוי שגיאות';

  @override
  String get checkOfflineTitle => 'אפליקציות לא מקוונות';

  @override
  String get checkAccessibilityDesc =>
      'אפליקציות אלה יכולות לקרוא את המסך שלכם ולהקיש במקומכם.';

  @override
  String get checkAdminDesc =>
      'אפליקציות אלה יכולות לנעול או למחוק את הטלפון ולמנוע את הסרתן.';

  @override
  String get checkNotificationDesc =>
      'אפליקציות אלה יכולות לקרוא את כל ההתראות שלכם, כולל קודים.';

  @override
  String checkUnusedDesc(int days) {
    return 'לא נפתחו $days ימים, אבל עדיין יכולות להשתמש בהרשאות רגישות. שקלו להסיר אותן.';
  }

  @override
  String get checkNotStoreDesc =>
      'הותקנו מקובץ או ממחשב. אף אחד לא בדק אותן בשבילכם.';

  @override
  String get checkDebuggableDesc => 'גרסאות ניסיון שאפשר לבדוק ממחשב.';

  @override
  String get checkOldDesc =>
      'אפליקציות אלה עוקפות את ההגנות החדשות על הפרטיות באנדרואיד.';

  @override
  String get checkOfflineDesc =>
      'אין להן הרשאת אינטרנט, ולכן הן לא יכולות לשלוח נתונים לרשת.';

  @override
  String get usagePromptBody =>
      'אופציונלי. הפעילו גישה לנתוני שימוש כדי למצוא אפליקציות שלא פתחתם זמן רב אבל עדיין יכולות להשתמש במיקרופון, במיקום או באנשי הקשר. הנתונים לא עוזבים את הטלפון.';

  @override
  String get usagePromptButton => 'הפעלת גישה לנתוני שימוש';

  @override
  String get securityNone => 'לא נמצאו הערות אבטחה בטלפון הזה.';

  @override
  String securityOffline(int count) {
    return 'אפליקציות שפועלות לגמרי ללא אינטרנט: $count';
  }

  @override
  String get fixWizardTitle => 'אשף התיקון';

  @override
  String wizardStep(int index, int total) {
    return 'אפליקציה $index מתוך $total';
  }

  @override
  String get wizardQuestion => 'האם האפליקציה הזו באמת צריכה את זה?';

  @override
  String get wizardHint =>
      'הקישו על ״פתיחת הגדרות האפליקציה״, אחר כך על הרשאות, וכבו את מה שהאפליקציה לא צריכה.';

  @override
  String get openAppSettings => 'פתיחת הגדרות האפליקציה';

  @override
  String get trustApp => 'אני סומך על האפליקציה הזו';

  @override
  String get nextApp => 'האפליקציה הבאה';

  @override
  String get finish => 'סיום';

  @override
  String get wizardDone => 'הכול נבדק';

  @override
  String get wizardNothing => 'אין מה לבדוק';

  @override
  String get wizardNothingBody => 'כרגע אין אפליקציה עם גישה רגישה.';

  @override
  String get wizardRescanBody => 'סרקו שוב כדי לראות את הציון החדש.';

  @override
  String get rescanFinish => 'סריקה חוזרת וסיום';

  @override
  String get wizardRequested => 'התבקש, עדיין לא אושר';

  @override
  String scoreTrackers(int count) {
    return 'עוקבים מוכרים: $count';
  }

  @override
  String get scoreDebuggable => 'גרסת ניפוי שגיאות';

  @override
  String get scoreOldTarget => 'נבנתה לאנדרואיד ישן מאוד';

  @override
  String unusualFor(String groups) {
    return 'חריג לסוג כזה של אפליקציה: $groups';
  }

  @override
  String get noteRequested => 'התבקש, נספר חצי';

  @override
  String get noteAllowed => 'מותר';

  @override
  String noteTrackers(int points, int max) {
    return '$points לכל אחד, עד $max';
  }

  @override
  String get noteTurnedOn => 'פועל';

  @override
  String get noteDebuggable => 'ניתן לבדיקה ממחשב';

  @override
  String noteApi(int apiLevel) {
    return 'רמת API‏ $apiLevel';
  }

  @override
  String get noteExtra => 'הפחתה נוספת';

  @override
  String get explainTitle => 'איך הציון עובד';

  @override
  String get explainIntro =>
      'כל אפליקציה מתחילה ב-100. נקודות יורדות לפי מה שהאפליקציה יכולה לעשות.';

  @override
  String get explainStart => 'התחלה';

  @override
  String get explainNothing => 'לא ירד דבר';

  @override
  String get explainNothingNote => 'אין הרשאות רגישות או עוקבים מוכרים';

  @override
  String get explainScore => 'ציון';

  @override
  String get explainRules => 'הכללים';

  @override
  String get rule1 =>
      'בכל קבוצה נספרת רק ההרשאה החמורה ביותר. לדוגמה, מיקום מדויק ומיקום משוער נספרים פעם אחת.';

  @override
  String get rule2 =>
      'הרשאות מיוחדות (כל הקבצים, הצגה מעל אפליקציות אחרות, התקנת אפליקציות) נספרות כחצי אם האפליקציה רק ביקשה אותן.';

  @override
  String rule3(int points, int max) {
    return 'כל עוקב מוכר מוריד $points נקודות, עד $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'גישה מיוחדת שהופעלה מורידה נקודות: נגישות $a, מנהל מכשיר $b, גישה להתראות $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'גרסת ניפוי שגיאות מורידה $a. אפליקציה שנבנתה לאנדרואיד 7 ומטה מורידה $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'אם הרשאה חריגה לסוג כזה של אפליקציה (למשל מיקרופון בפנס), יורדות עוד $points נקודות, ולכל היותר ל-$maxGroups קבוצות הרשאות.';
  }

  @override
  String get rule7 => '70 ומעלה: בטוחה. 40 עד 69: בינונית. מתחת ל-40: מסוכנת.';

  @override
  String get explainFooter =>
      'הציון מראה מה אפליקציה יכולה לעשות, לא מה היא עושה כרגע.';

  @override
  String get howScore => 'איך הציון הזה מחושב?';

  @override
  String summaryTrackers(int count) {
    return 'עוקבים מוכרים: $count.';
  }

  @override
  String get summaryNone => 'אין הרשאות רגישות או עוקבים מוכרים.';

  @override
  String metaTrackers(int count) {
    return 'עוקבים: $count';
  }

  @override
  String get metaNone => 'אין הרשאות רגישות';

  @override
  String get detailSecurity => 'אבטחה';

  @override
  String get detailSource => 'מקור';

  @override
  String get detailInternet => 'אינטרנט';

  @override
  String get detailInternetYes => 'יכולה לגשת לאינטרנט';

  @override
  String get detailOffline => 'לא מקוונת';

  @override
  String get detailOfflineBody =>
      'אין לה הרשאת אינטרנט, ולכן היא לא יכולה לשלוח נתונים לרשת';

  @override
  String get detailLastOpened => 'נפתחה לאחרונה';

  @override
  String get today => 'היום';

  @override
  String get yesterday => 'אתמול';

  @override
  String daysSince(int days) {
    return 'ימים מאז השימוש האחרון: $days';
  }

  @override
  String get detailDebuggableBody => 'גרסת ניסיון שניתן לבדוק ממחשב';

  @override
  String detailOldBody(int apiLevel) {
    return 'רמת API‏ $apiLevel, ולכן ההגנות החדשות על הפרטיות נעקפות';
  }

  @override
  String get detailTrustBody => 'לא לספור ב״מסוכנות״ ובהתראות';

  @override
  String get detailNoPerms => 'האפליקציה הזו לא מבקשת הרשאות רגישות.';

  @override
  String get chipAllowed => 'מותר';

  @override
  String get chipRequested => 'התבקש';

  @override
  String get chipNotAllowed => 'לא מותר';

  @override
  String sensitiveNote(String why) {
    return 'רגיש: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'עוקבים שנמצאו: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless מראה מה אפליקציה יכולה לעשות, לא מה היא עושה כרגע. עוקבים מזוהים לפי המניפסט של האפליקציה, ולכן ייתכן שחלקם יוחמצו.';

  @override
  String get srcBuiltIn => 'מובנית בטלפון שלכם';

  @override
  String get srcUnknown => 'לא ידוע (הותקנה מקובץ או ממחשב)';

  @override
  String get srcApk => 'קובץ APK שפתחתם';

  @override
  String get srcAdb => 'מחשב (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'הותקנה על ידי $name';
  }

  @override
  String get accessibilityLabel => 'גישת נגישות';

  @override
  String get adminLabel => 'מנהל מכשיר';

  @override
  String get notificationLabel => 'גישה להתראות';

  @override
  String get accessibilityWhy =>
      'פועל. יכולה לקרוא מה שעל המסך ולפעול במקומכם.';

  @override
  String get adminWhy => 'פועל. יכולה לנעול את הטלפון, למחוק אותו ולמנוע הסרה.';

  @override
  String get notificationWhy =>
      'פועל. יכולה לקרוא את כל ההתראות שלכם, כולל קודים.';

  @override
  String get grpMicrophone => 'מיקרופון';

  @override
  String get grpCamera => 'מצלמה';

  @override
  String get grpLocation => 'מיקום';

  @override
  String get grpContacts => 'אנשי קשר';

  @override
  String get grpSms => 'הודעות SMS';

  @override
  String get grpCallLog => 'יומן שיחות';

  @override
  String get grpPhone => 'טלפון';

  @override
  String get grpCalendar => 'לוח שנה';

  @override
  String get grpBodySensors => 'חיישני גוף';

  @override
  String get grpActivity => 'פעילות';

  @override
  String get grpFiles => 'קבצים';

  @override
  String get grpOverlay => 'הצגה מעל אחרות';

  @override
  String get grpInstalls => 'התקנות';

  @override
  String get grpAppList => 'רשימת אפליקציות';

  @override
  String get lblCoarseLocation => 'מיקום משוער';

  @override
  String get lblFineLocation => 'מיקום מדויק';

  @override
  String get lblBackgroundLocation => 'מיקום כל הזמן';

  @override
  String get lblAccounts => 'חשבונות';

  @override
  String get lblReadSms => 'קריאת SMS';

  @override
  String get lblReceiveSms => 'קבלת SMS';

  @override
  String get lblSendSms => 'שליחת SMS';

  @override
  String get lblPhoneState => 'מצב הטלפון';

  @override
  String get lblCallPhone => 'ביצוע שיחות';

  @override
  String get lblActivity => 'פעילות גופנית';

  @override
  String get lblAllFiles => 'כל הקבצים';

  @override
  String get lblFilesMedia => 'קבצים ומדיה';

  @override
  String get lblPhotos => 'תמונות';

  @override
  String get lblVideos => 'סרטונים';

  @override
  String get lblAudioFiles => 'קובצי אודיו';

  @override
  String get lblOverlay => 'הצגה מעל אפליקציות אחרות';

  @override
  String get lblInstall => 'התקנת אפליקציות אחרות';

  @override
  String get lblAppList => 'צפייה בכל האפליקציות';

  @override
  String get whyMic => 'יכולה להקליט קול.';

  @override
  String get whyCamera => 'יכולה להשתמש במצלמה.';

  @override
  String get whyCoarse => 'יכולה לראות את המיקום המשוער שלכם.';

  @override
  String get whyFine => 'יכולה לראות את המיקום המדויק שלכם.';

  @override
  String get whyBackground => 'יכולה לעקוב אחר המיקום שלכם כל הזמן.';

  @override
  String get whyContacts => 'יכולה לקרוא את אנשי הקשר שלכם.';

  @override
  String get whyAccounts => 'יכולה לראות את החשבונות בטלפון.';

  @override
  String get whyReadSms => 'יכולה לקרוא את ה-SMS שלכם.';

  @override
  String get whyReceiveSms => 'יכולה לקבל את ה-SMS שלכם.';

  @override
  String get whySendSms => 'יכולה לשלוח SMS.';

  @override
  String get whyCallLog => 'יכולה לקרוא את היסטוריית השיחות שלכם.';

  @override
  String get whyPhoneState => 'יכולה לראות את מצב הטלפון שלכם.';

  @override
  String get whyCallPhone => 'יכולה לבצע שיחות.';

  @override
  String get whyCalendar => 'יכולה לקרוא את לוח השנה שלכם.';

  @override
  String get whyBody => 'יכולה לקרוא חיישני גוף.';

  @override
  String get whyActivity => 'יכולה לראות את הפעילות הגופנית שלכם.';

  @override
  String get whyAllFiles => 'יכולה לגשת לכל הקבצים בטלפון.';

  @override
  String get whyFilesMedia => 'יכולה לקרוא קבצים ומדיה.';

  @override
  String get whyPhotos => 'יכולה לקרוא את התמונות שלכם.';

  @override
  String get whyVideos => 'יכולה לקרוא את הסרטונים שלכם.';

  @override
  String get whyAudio => 'יכולה לקרוא את קובצי האודיו שלכם.';

  @override
  String get whyOverlay => 'יכולה להופיע מעל אפליקציות אחרות.';

  @override
  String get whyInstall => 'יכולה להתקין אפליקציות אחרות.';

  @override
  String get whyAppList => 'יכולה לראות את כל האפליקציות בטלפון.';

  @override
  String get settingsAppearance => 'מראה';

  @override
  String get settingsTheme => 'ערכת נושא';

  @override
  String get settingsThemeBody => 'כברירת מחדל עוקבת אחר הטלפון';

  @override
  String get themeSystem => 'מערכת';

  @override
  String get themeLight => 'בהירה';

  @override
  String get themeDark => 'כהה';

  @override
  String get settingsScanning => 'סריקה';

  @override
  String get settingsAlerts => 'התראות על אפליקציות';

  @override
  String get settingsAlertsBody =>
      'מודיעה על אפליקציות חדשות והרשאות חדשות. בודקת בערך כל 6 שעות.';

  @override
  String get settingsWeekly => 'סיכום שבועי';

  @override
  String get settingsWeeklyBody => 'התראה אחת בשבוע עם הציון שלכם ומה שהשתנה';

  @override
  String get settingsUsage => 'גישה לנתוני שימוש';

  @override
  String get settingsUsageOn =>
      'פועל. Peekless יכול לראות מתי אפליקציות נפתחו לאחרונה.';

  @override
  String get settingsUsageOff =>
      'כבוי. אופציונלי. מאפשר ל-Peekless למצוא אפליקציות שכבר לא משתמשים בהן. נשאר בטלפון שלכם.';

  @override
  String get settingsSystemApps => 'כולל אפליקציות מערכת';

  @override
  String get settingsSystemAppsBody => 'לסרוק גם אפליקציות מובנות בטלפון';

  @override
  String get settingsRescan => 'סריקה עכשיו';

  @override
  String get settingsRescanBody => 'בדיקה חוזרת של כל האפליקציות';

  @override
  String get settingsUpdates => 'עדכונים';

  @override
  String get settingsCheckUpdates => 'בדיקת עדכונים';

  @override
  String settingsVersion(String version) {
    return 'גרסה $version · רק כשאתם מקישים';
  }

  @override
  String get settingsAbout => 'אודות';

  @override
  String get settingsPrivacy => 'פרטיות';

  @override
  String get settingsPrivacyBody => 'הכול נשאר בטלפון שלכם';

  @override
  String get settingsOpenSource => 'קוד פתוח';

  @override
  String get settingsOpenSourceBody => 'רישיון GPL-3.0. צפו בקוד ב-GitHub';

  @override
  String get settingsDeveloped => 'פותח על ידי Lumio Apps';

  @override
  String get settingsLanguage => 'שפה';

  @override
  String get languageSystem => 'לפי שפת הטלפון';

  @override
  String get updChecking => 'בודק עדכונים...';

  @override
  String get updLatest => 'יש לכם את הגרסה האחרונה.';

  @override
  String get updFailed => 'לא ניתן לבדוק עדכונים. נסו שוב מאוחר יותר.';

  @override
  String get updTitle => 'עדכון זמין';

  @override
  String updReady(String version) {
    return 'גרסה $version מוכנה להתקנה.';
  }

  @override
  String get updDownloadFailed => 'ההורדה נכשלה. בדקו את החיבור ונסו שוב.';

  @override
  String get updInstall => 'הורדה והתקנה';

  @override
  String get notifyDenied => 'אפשרו ל-Peekless לשלוח התראות כדי להפעיל זאת.';

  @override
  String get settingChangeFailed => 'לא ניתן לשנות את ההגדרה הזו.';

  @override
  String get usageOpenFailed => 'לא ניתן לפתוח את הגדרות הגישה לנתוני שימוש.';

  @override
  String alertNewTitle(String name) {
    return 'אפליקציה חדשה: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'ציון $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name השתנתה';
  }

  @override
  String alertNowHas(String list) {
    return 'כעת יש לה: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'כעת מותר: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'עוקב חדש: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'ציון $score ($level).';
  }

  @override
  String get alertMoreTitle => 'עוד שינויים';

  @override
  String alertMoreBody(int count) {
    return 'עוד שינויים: $count. פתחו את Peekless כדי לראות.';
  }

  @override
  String get weeklyTitle => 'הסיכום השבועי שלכם מ-Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'ציון $score/100, גבוה ב-$diff משבוע שעבר.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'ציון $score/100, נמוך ב-$diff משבוע שעבר.';
  }

  @override
  String weeklySame(int score) {
    return 'ציון $score/100, ללא שינוי מאז שבוע שעבר.';
  }

  @override
  String weeklyScore(int score) {
    return 'ציון $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'אפליקציות חדשות: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'אפליקציות שהוסרו: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'הרשאות שהופעלו: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'עוקבים חדשים: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'השבוע: $list.';
  }

  @override
  String get weeklyNone => 'אין שינויים השבוע.';

  @override
  String weeklyRisky(int count) {
    return 'אפליקציות מסוכנות: $count.';
  }

  @override
  String get reportTitle => 'דוח פרטיות של Peekless';

  @override
  String reportScore(int score, String level) {
    return 'ציון: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'אפליקציות שנבדקו: $total. מסוכנות: $risky, בינוניות: $medium, בטוחות: $safe';
  }

  @override
  String get reportAttention => 'דורשות תשומת לב:';

  @override
  String get reportFooter =>
      'נבדק בטלפון שלי באמצעות Peekless. שום דבר לא נשלח לשום מקום.';

  @override
  String get trendTitle => 'ציון לאורך זמן';

  @override
  String trendUp(int diff, int days) {
    return 'עלייה של $diff (ימים במעקב: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'ירידה של $diff (ימים במעקב: $days)';
  }

  @override
  String trendSame(int days) {
    return 'ללא שינוי (ימים במעקב: $days)';
  }

  @override
  String get settingsQuick => 'גישה מהירה';

  @override
  String get quickWidget => 'ווידג׳ט למסך הבית';

  @override
  String get quickWidgetBody => 'הצגת ציון הפרטיות שלך במסך הבית';

  @override
  String get quickTile => 'אריח הגדרות מהירות';

  @override
  String get quickTileBody => 'הציון שלך בלוח ההגדרות המהירות';

  @override
  String get quickManual =>
      'הטלפון לא הצליח להוסיף זאת אוטומטית. הוסיפו ידנית: לחיצה ארוכה על מסך הבית (ווידג׳ט) או עריכת לוח ההגדרות המהירות (אריח).';

  @override
  String get settingsExport => 'ייצוא הדוח';

  @override
  String get settingsExportBody => 'שמרו את הדוח כקובץ PDF או JSON ושתפו אותו';

  @override
  String get exportFailed => 'לא ניתן היה ליצור את הדוח.';

  @override
  String get settingsTrackerList => 'רשימת עוקבים';

  @override
  String settingsTrackerListBody(int count) {
    return 'הקישו לעדכון. $count עוקבים ידועים. רק כשמקישים.';
  }

  @override
  String get trackerListUpdating => 'מעדכן את רשימת העוקבים…';

  @override
  String trackerListUpdated(int count) {
    return 'רשימת העוקבים עודכנה. $count עוקבים ידועים.';
  }

  @override
  String get trackerListCurrent => 'רשימת העוקבים כבר מעודכנת.';

  @override
  String get trackerListFailed =>
      'לא ניתן היה לעדכן את רשימת העוקבים. בדקו את החיבור.';

  @override
  String get homeTagline => 'גלו מי מציץ בכם.';

  @override
  String get homeOverviewBody =>
      'חלק מהאפליקציות שלכם שיכול להשתמש בכל אחד מהם';
}
