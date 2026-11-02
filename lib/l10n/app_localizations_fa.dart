// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get navHome => 'خانه';

  @override
  String get navApps => 'برنامه‌ها';

  @override
  String get navPermissions => 'مجوزها';

  @override
  String get navChanges => 'تغییرات';

  @override
  String get navSettings => 'تنظیمات';

  @override
  String get levelRisky => 'پرخطر';

  @override
  String get levelMedium => 'متوسط';

  @override
  String get levelSafe => 'امن';

  @override
  String get overallHigh => 'خطر زیاد';

  @override
  String get overallMedium => 'خطر متوسط';

  @override
  String get overallLow => 'خطر کم';

  @override
  String get cancel => 'لغو';

  @override
  String get clear => 'پاک کردن';

  @override
  String get back => 'بازگشت';

  @override
  String get later => 'بعداً';

  @override
  String get noneFound => 'چیزی پیدا نشد';

  @override
  String get scanning => 'در حال اسکن...';

  @override
  String get scanFailed => 'اسکن ناموفق بود';

  @override
  String get tryAgain => 'تلاش دوباره';

  @override
  String get couldNotOpenSettings => 'تنظیمات برنامه باز نشد.';

  @override
  String get homeShare => 'اشتراک‌گذاری گزارش';

  @override
  String get homeRescan => 'اسکن دوباره برنامه‌ها';

  @override
  String homeAppsChecked(int count) {
    return 'برنامه‌های بررسی‌شده در این گوشی: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'برنامه‌های محاسبه‌شده: $counted، مورد اعتماد: $trusted';
  }

  @override
  String get homeNeedsAttention => 'نیازمند توجه';

  @override
  String get homeSeeAll => 'دیدن همه';

  @override
  String get homeAllSafe =>
      'چیزی نیاز به توجه ندارد. همه برنامه‌ها امن به نظر می‌رسند.';

  @override
  String get homeShareFailed => 'گزارش به اشتراک گذاشته نشد.';

  @override
  String get scoreOf100 => 'از ۱۰۰';

  @override
  String scoreSemantics(int score) {
    return 'امتیاز حریم خصوصی: $score از ۱۰۰';
  }

  @override
  String wizardCard(int count) {
    return 'برنامه‌های دارای دسترسی حساس را بررسی کنید: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'برنامه‌ها: $count، پرخطرترین‌ها ابتدا';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'نمایش $shown از $total';
  }

  @override
  String get appsSearch => 'جست‌وجوی برنامه‌ها';

  @override
  String get appsNone => 'برنامه‌ای پیدا نشد';

  @override
  String get chipMine => 'برنامه‌های من';

  @override
  String get chipSystem => 'سیستمی';

  @override
  String get filterAll => 'همه';

  @override
  String get filterTrackers => 'دارای ردیاب';

  @override
  String get filterSpecial => 'دسترسی ویژه';

  @override
  String get filterNotStore => 'غیر از فروشگاه';

  @override
  String get filterOffline => 'آفلاین';

  @override
  String get filterTrusted => 'مورد اعتماد';

  @override
  String get permSubtitle =>
      'چه کسی در این گوشی از چه چیزی می‌تواند استفاده کند';

  @override
  String get trackersSubtitle => 'کدام ردیاب در کدام برنامه‌هاست';

  @override
  String get segTrackers => 'ردیاب‌ها';

  @override
  String get noTrackers => 'ردیاب شناخته‌شده‌ای پیدا نشد.';

  @override
  String get noPerms => 'مجوز حساسی پیدا نشد.';

  @override
  String appsCount(int count) {
    return 'برنامه‌ها: $count';
  }

  @override
  String get changesSubtitle => 'برنامه‌های جدید و تغییرات مجوزها';

  @override
  String get clearTitle => 'تغییرات پاک شود؟';

  @override
  String get clearBody => 'فهرست تغییرات از این گوشی حذف می‌شود.';

  @override
  String get changesEmpty =>
      'هنوز تغییری نیست. Peekless برنامه‌های جدید و حذف‌شده، مجوزهای جدید و ردیاب‌های جدید را اینجا نشان می‌دهد.';

  @override
  String evInstalled(int score, String level) {
    return 'نصب شد. امتیاز: $score ($level).';
  }

  @override
  String get evRemoved => 'حذف شد.';

  @override
  String evAllowed(String label) {
    return 'اکنون مجاز است: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'دیگر مجاز نیست: $label.';
  }

  @override
  String evTracker(String name) {
    return 'ردیاب جدید پیدا شد: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: روشن شد.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: خاموش شد.';
  }

  @override
  String get checksTitle => 'بررسی‌های امنیتی';

  @override
  String get checksIntro =>
      'مواردی که ارزش یک نگاه دوباره دارند. برای دیدن برنامه‌ها روی یک بررسی بزنید.';

  @override
  String get checkUnusedTitle => 'برنامه‌های استفاده‌نشده با دسترسی حساس';

  @override
  String get checkDebuggableTitle => 'نسخه‌های اشکال‌زدایی';

  @override
  String get checkOfflineTitle => 'برنامه‌های آفلاین';

  @override
  String get checkAccessibilityDesc =>
      'این برنامه‌ها می‌توانند صفحه شما را بخوانند و به جای شما لمس کنند.';

  @override
  String get checkAdminDesc =>
      'این برنامه‌ها می‌توانند گوشی را قفل یا پاک کنند و جلوی حذف خود را بگیرند.';

  @override
  String get checkNotificationDesc =>
      'این برنامه‌ها می‌توانند همه اعلان‌های شما، از جمله کدها، را بخوانند.';

  @override
  String checkUnusedDesc(int days) {
    return '$days روز است باز نشده‌اند، اما هنوز می‌توانند از مجوزهای حساس استفاده کنند. حذفشان را در نظر بگیرید.';
  }

  @override
  String get checkNotStoreDesc =>
      'از یک فایل یا رایانه نصب شده‌اند. کسی آن‌ها را برای شما بررسی نکرده است.';

  @override
  String get checkDebuggableDesc =>
      'نسخه‌های آزمایشی که از رایانه قابل بررسی‌اند.';

  @override
  String get checkOldDesc =>
      'این برنامه‌ها از محافظت‌های جدید حریم خصوصی اندروید عبور می‌کنند.';

  @override
  String get checkOfflineDesc =>
      'مجوز اینترنت ندارند، پس نمی‌توانند داده‌ای آنلاین بفرستند.';

  @override
  String get usagePromptBody =>
      'اختیاری. دسترسی به میزان استفاده را روشن کنید تا برنامه‌هایی را که مدت‌هاست باز نکرده‌اید ولی هنوز می‌توانند از میکروفون، مکان یا مخاطبانتان استفاده کنند پیدا کنید. داده‌ها از گوشی شما خارج نمی‌شوند.';

  @override
  String get usagePromptButton => 'روشن کردن دسترسی به میزان استفاده';

  @override
  String get securityNone => 'هیچ مورد امنیتی در این گوشی پیدا نشد.';

  @override
  String securityOffline(int count) {
    return 'برنامه‌هایی که کاملاً آفلاین کار می‌کنند: $count';
  }

  @override
  String get fixWizardTitle => 'راهنمای رفع مشکل';

  @override
  String wizardStep(int index, int total) {
    return 'برنامه $index از $total';
  }

  @override
  String get wizardQuestion => 'آیا این برنامه واقعاً به این نیاز دارد؟';

  @override
  String get wizardHint =>
      'روی «باز کردن تنظیمات برنامه» و سپس «مجوزها» بزنید و آنچه برنامه نیاز ندارد را خاموش کنید.';

  @override
  String get openAppSettings => 'باز کردن تنظیمات برنامه';

  @override
  String get trustApp => 'به این برنامه اعتماد دارم';

  @override
  String get nextApp => 'برنامه بعدی';

  @override
  String get finish => 'پایان';

  @override
  String get wizardDone => 'همه بررسی شد';

  @override
  String get wizardNothing => 'چیزی برای بررسی نیست';

  @override
  String get wizardNothingBody =>
      'در حال حاضر هیچ برنامه‌ای دسترسی حساس ندارد.';

  @override
  String get wizardRescanBody => 'برای دیدن امتیاز جدید دوباره اسکن کنید.';

  @override
  String get rescanFinish => 'اسکن دوباره و پایان';

  @override
  String get wizardRequested => 'درخواست شده، هنوز مجاز نشده';

  @override
  String scoreTrackers(int count) {
    return 'ردیاب‌های شناخته‌شده: $count';
  }

  @override
  String get scoreDebuggable => 'نسخه اشکال‌زدایی';

  @override
  String get scoreOldTarget => 'ساخته‌شده برای اندروید بسیار قدیمی';

  @override
  String unusualFor(String groups) {
    return 'برای این نوع برنامه غیرمعمول است: $groups';
  }

  @override
  String get noteRequested => 'درخواست شده، نصف حساب می‌شود';

  @override
  String get noteAllowed => 'مجاز';

  @override
  String noteTrackers(int points, int max) {
    return 'هرکدام $points، حداکثر $max';
  }

  @override
  String get noteTurnedOn => 'روشن';

  @override
  String get noteDebuggable => 'از رایانه قابل بررسی است';

  @override
  String noteApi(int apiLevel) {
    return 'سطح API $apiLevel';
  }

  @override
  String get noteExtra => 'کسر اضافی';

  @override
  String get explainTitle => 'امتیاز چگونه کار می‌کند';

  @override
  String get explainIntro =>
      'هر برنامه از ۱۰۰ شروع می‌کند. بر اساس کارهایی که برنامه می‌تواند انجام دهد، امتیاز کم می‌شود.';

  @override
  String get explainStart => 'شروع';

  @override
  String get explainNothing => 'چیزی کم نشد';

  @override
  String get explainNothingNote => 'بدون مجوز حساس و ردیاب شناخته‌شده';

  @override
  String get explainScore => 'امتیاز';

  @override
  String get explainRules => 'قوانین';

  @override
  String get rule1 =>
      'در هر گروه فقط سنگین‌ترین مجوز حساب می‌شود. مثلاً مکان دقیق و تقریبی یک بار حساب می‌شوند.';

  @override
  String get rule2 =>
      'مجوزهای ویژه (همه فایل‌ها، نمایش روی برنامه‌های دیگر، نصب برنامه) اگر برنامه فقط درخواستشان کرده باشد نصف حساب می‌شوند.';

  @override
  String rule3(int points, int max) {
    return 'هر ردیاب شناخته‌شده $points امتیاز کم می‌کند، تا حداکثر $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'دسترسی ویژه روشن امتیاز کم می‌کند: دسترسی‌پذیری $a، مدیر دستگاه $b، دسترسی به اعلان‌ها $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'نسخه اشکال‌زدایی $a کم می‌کند. برنامه‌ای که برای اندروید ۷ یا قدیمی‌تر ساخته شده $b کم می‌کند.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'اگر مجوزی برای آن نوع برنامه غیرمعمول باشد (مثلاً میکروفون در چراغ‌قوه)، $points امتیاز دیگر کم می‌شود، برای حداکثر $maxGroups گروه مجوز.';
  }

  @override
  String get rule7 => '۷۰ یا بیشتر: امن. ۴۰ تا ۶۹: متوسط. زیر ۴۰: پرخطر.';

  @override
  String get explainFooter =>
      'امتیاز نشان می‌دهد برنامه چه کاری می‌تواند انجام دهد، نه اینکه همین حالا چه می‌کند.';

  @override
  String get howScore => 'این امتیاز چگونه محاسبه می‌شود؟';

  @override
  String summaryTrackers(int count) {
    return 'ردیاب‌های شناخته‌شده: $count.';
  }

  @override
  String get summaryNone => 'بدون مجوز حساس و ردیاب شناخته‌شده.';

  @override
  String metaTrackers(int count) {
    return 'ردیاب‌ها: $count';
  }

  @override
  String get metaNone => 'بدون مجوز حساس';

  @override
  String get detailSecurity => 'امنیت';

  @override
  String get detailSource => 'منبع';

  @override
  String get detailInternet => 'اینترنت';

  @override
  String get detailInternetYes => 'می‌تواند به اینترنت وصل شود';

  @override
  String get detailOffline => 'آفلاین';

  @override
  String get detailOfflineBody =>
      'مجوز اینترنت ندارد، پس نمی‌تواند داده‌ای آنلاین بفرستد';

  @override
  String get detailLastOpened => 'آخرین باز شدن';

  @override
  String get today => 'امروز';

  @override
  String get yesterday => 'دیروز';

  @override
  String daysSince(int days) {
    return 'روز از آخرین استفاده: $days';
  }

  @override
  String get detailDebuggableBody => 'نسخه آزمایشی که از رایانه قابل بررسی است';

  @override
  String detailOldBody(int apiLevel) {
    return 'سطح API $apiLevel، پس از محافظت‌های جدید حریم خصوصی عبور می‌کند';
  }

  @override
  String get detailTrustBody => 'در پرخطرها و اعلان‌ها حساب نشود';

  @override
  String get detailNoPerms => 'این برنامه مجوز حساسی درخواست نمی‌کند.';

  @override
  String get chipAllowed => 'مجاز';

  @override
  String get chipRequested => 'درخواست‌شده';

  @override
  String get chipNotAllowed => 'غیرمجاز';

  @override
  String sensitiveNote(String why) {
    return 'حساس: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'ردیاب‌های پیداشده: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless نشان می‌دهد برنامه چه کاری می‌تواند انجام دهد، نه اینکه همین حالا چه می‌کند. ردیاب‌ها از مانیفست برنامه شناسایی می‌شوند، پس ممکن است بعضی از قلم بیفتند.';

  @override
  String get srcBuiltIn => 'داخلی گوشی شما';

  @override
  String get srcUnknown => 'نامشخص (از یک فایل یا رایانه نصب شده)';

  @override
  String get srcApk => 'فایل APK که خودتان باز کردید';

  @override
  String get srcAdb => 'یک رایانه (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'نصب‌کننده: $name';
  }

  @override
  String get accessibilityLabel => 'دسترسی به دسترسی‌پذیری';

  @override
  String get adminLabel => 'مدیر دستگاه';

  @override
  String get notificationLabel => 'دسترسی به اعلان‌ها';

  @override
  String get accessibilityWhy =>
      'روشن است. می‌تواند آنچه روی صفحه است را بخواند و به جای شما عمل کند.';

  @override
  String get adminWhy =>
      'روشن است. می‌تواند گوشی را قفل کند، پاک کند و جلوی حذف را بگیرد.';

  @override
  String get notificationWhy =>
      'روشن است. می‌تواند همه اعلان‌های شما، از جمله کدها، را بخواند.';

  @override
  String get grpMicrophone => 'میکروفون';

  @override
  String get grpCamera => 'دوربین';

  @override
  String get grpLocation => 'مکان';

  @override
  String get grpContacts => 'مخاطبان';

  @override
  String get grpSms => 'پیامک';

  @override
  String get grpCallLog => 'سابقه تماس';

  @override
  String get grpPhone => 'تلفن';

  @override
  String get grpCalendar => 'تقویم';

  @override
  String get grpBodySensors => 'حسگرهای بدن';

  @override
  String get grpActivity => 'فعالیت';

  @override
  String get grpFiles => 'فایل‌ها';

  @override
  String get grpOverlay => 'نمایش روی برنامه‌ها';

  @override
  String get grpInstalls => 'نصب‌ها';

  @override
  String get grpAppList => 'فهرست برنامه‌ها';

  @override
  String get lblCoarseLocation => 'مکان تقریبی';

  @override
  String get lblFineLocation => 'مکان دقیق';

  @override
  String get lblBackgroundLocation => 'مکان در تمام مدت';

  @override
  String get lblAccounts => 'حساب‌ها';

  @override
  String get lblReadSms => 'خواندن پیامک';

  @override
  String get lblReceiveSms => 'دریافت پیامک';

  @override
  String get lblSendSms => 'ارسال پیامک';

  @override
  String get lblPhoneState => 'وضعیت تلفن';

  @override
  String get lblCallPhone => 'برقراری تماس';

  @override
  String get lblActivity => 'فعالیت بدنی';

  @override
  String get lblAllFiles => 'همه فایل‌ها';

  @override
  String get lblFilesMedia => 'فایل‌ها و رسانه';

  @override
  String get lblPhotos => 'عکس‌ها';

  @override
  String get lblVideos => 'ویدیوها';

  @override
  String get lblAudioFiles => 'فایل‌های صوتی';

  @override
  String get lblOverlay => 'نمایش روی برنامه‌های دیگر';

  @override
  String get lblInstall => 'نصب برنامه‌های دیگر';

  @override
  String get lblAppList => 'دیدن همه برنامه‌ها';

  @override
  String get whyMic => 'می‌تواند صدا ضبط کند.';

  @override
  String get whyCamera => 'می‌تواند از دوربین استفاده کند.';

  @override
  String get whyCoarse => 'می‌تواند مکان تقریبی شما را ببیند.';

  @override
  String get whyFine => 'می‌تواند مکان دقیق شما را ببیند.';

  @override
  String get whyBackground => 'می‌تواند مکان شما را در تمام مدت دنبال کند.';

  @override
  String get whyContacts => 'می‌تواند مخاطبان شما را بخواند.';

  @override
  String get whyAccounts => 'می‌تواند حساب‌های گوشی را ببیند.';

  @override
  String get whyReadSms => 'می‌تواند پیامک‌های شما را بخواند.';

  @override
  String get whyReceiveSms => 'می‌تواند پیامک‌های شما را دریافت کند.';

  @override
  String get whySendSms => 'می‌تواند پیامک بفرستد.';

  @override
  String get whyCallLog => 'می‌تواند سابقه تماس‌های شما را بخواند.';

  @override
  String get whyPhoneState => 'می‌تواند وضعیت گوشی شما را ببیند.';

  @override
  String get whyCallPhone => 'می‌تواند تماس برقرار کند.';

  @override
  String get whyCalendar => 'می‌تواند تقویم شما را بخواند.';

  @override
  String get whyBody => 'می‌تواند حسگرهای بدن را بخواند.';

  @override
  String get whyActivity => 'می‌تواند فعالیت بدنی شما را ببیند.';

  @override
  String get whyAllFiles => 'می‌تواند به همه فایل‌های گوشی دسترسی داشته باشد.';

  @override
  String get whyFilesMedia => 'می‌تواند فایل‌ها و رسانه را بخواند.';

  @override
  String get whyPhotos => 'می‌تواند عکس‌های شما را بخواند.';

  @override
  String get whyVideos => 'می‌تواند ویدیوهای شما را بخواند.';

  @override
  String get whyAudio => 'می‌تواند فایل‌های صوتی شما را بخواند.';

  @override
  String get whyOverlay => 'می‌تواند روی برنامه‌های دیگر نمایش داده شود.';

  @override
  String get whyInstall => 'می‌تواند برنامه‌های دیگر نصب کند.';

  @override
  String get whyAppList => 'می‌تواند همه برنامه‌های گوشی را ببیند.';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsTheme => 'پوسته';

  @override
  String get settingsThemeBody => 'به‌طور پیش‌فرض از گوشی شما پیروی می‌کند';

  @override
  String get themeSystem => 'سیستم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'تیره';

  @override
  String get settingsScanning => 'اسکن';

  @override
  String get settingsAlerts => 'هشدار برنامه‌ها';

  @override
  String get settingsAlertsBody =>
      'از برنامه‌های جدید و مجوزهای جدید خبر می‌دهد. تقریباً هر ۶ ساعت بررسی می‌کند.';

  @override
  String get settingsWeekly => 'خلاصه هفتگی';

  @override
  String get settingsWeeklyBody =>
      'هفته‌ای یک اعلان با امتیاز شما و آنچه تغییر کرده';

  @override
  String get settingsUsage => 'دسترسی به میزان استفاده';

  @override
  String get settingsUsageOn =>
      'روشن است. Peekless می‌تواند ببیند برنامه‌ها آخرین بار کی باز شده‌اند.';

  @override
  String get settingsUsageOff =>
      'خاموش است. اختیاری. به Peekless اجازه می‌دهد برنامه‌هایی را که دیگر استفاده نمی‌کنید پیدا کند. روی گوشی شما می‌ماند.';

  @override
  String get settingsSystemApps => 'شامل برنامه‌های سیستمی';

  @override
  String get settingsSystemAppsBody => 'برنامه‌های داخلی گوشی هم اسکن شوند';

  @override
  String get settingsRescan => 'اسکن همین حالا';

  @override
  String get settingsRescanBody => 'بررسی دوباره همه برنامه‌ها';

  @override
  String get settingsUpdates => 'به‌روزرسانی‌ها';

  @override
  String get settingsCheckUpdates => 'بررسی به‌روزرسانی';

  @override
  String settingsVersion(String version) {
    return 'نسخه $version · فقط وقتی شما بزنید';
  }

  @override
  String get settingsAbout => 'درباره';

  @override
  String get settingsPrivacy => 'حریم خصوصی';

  @override
  String get settingsPrivacyBody => 'همه‌چیز روی گوشی شما می‌ماند';

  @override
  String get settingsOpenSource => 'متن‌باز';

  @override
  String get settingsOpenSourceBody => 'مجوز GPL-3.0. کد را در GitHub ببینید';

  @override
  String get settingsDeveloped => 'توسعه‌یافته توسط Lumio Apps';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get languageSystem => 'پیروی از زبان گوشی';

  @override
  String get updChecking => 'در حال بررسی به‌روزرسانی...';

  @override
  String get updLatest => 'شما آخرین نسخه را دارید.';

  @override
  String get updFailed => 'بررسی به‌روزرسانی ناموفق بود. بعداً تلاش کنید.';

  @override
  String get updTitle => 'به‌روزرسانی در دسترس است';

  @override
  String updReady(String version) {
    return 'نسخه $version آماده نصب است.';
  }

  @override
  String get updDownloadFailed =>
      'دانلود ناموفق بود. اتصال خود را بررسی کنید و دوباره تلاش کنید.';

  @override
  String get updInstall => 'دانلود و نصب';

  @override
  String get notifyDenied =>
      'برای روشن کردن این گزینه، اعلان‌ها را برای Peekless مجاز کنید.';

  @override
  String get settingChangeFailed => 'تغییر این تنظیم ممکن نشد.';

  @override
  String get usageOpenFailed => 'تنظیمات دسترسی به میزان استفاده باز نشد.';

  @override
  String alertNewTitle(String name) {
    return 'برنامه جدید: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'امتیاز $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name تغییر کرد';
  }

  @override
  String alertNowHas(String list) {
    return 'اکنون دارد: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'اکنون مجاز است: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'ردیاب جدید: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'امتیاز $score ($level).';
  }

  @override
  String get alertMoreTitle => 'تغییرات بیشتر';

  @override
  String alertMoreBody(int count) {
    return 'تغییرات بیشتر: $count. برای دیدن آن‌ها Peekless را باز کنید.';
  }

  @override
  String get weeklyTitle => 'خلاصه هفتگی Peekless شما';

  @override
  String weeklyUp(int score, int diff) {
    return 'امتیاز $score/۱۰۰، $diff بیشتر از هفته گذشته.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'امتیاز $score/۱۰۰، $diff کمتر از هفته گذشته.';
  }

  @override
  String weeklySame(int score) {
    return 'امتیاز $score/۱۰۰، بدون تغییر نسبت به هفته گذشته.';
  }

  @override
  String weeklyScore(int score) {
    return 'امتیاز $score/۱۰۰.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'برنامه‌های جدید: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'برنامه‌های حذف‌شده: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'مجوزهای روشن‌شده: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'ردیاب‌های جدید: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'این هفته: $list.';
  }

  @override
  String get weeklyNone => 'این هفته تغییری نبود.';

  @override
  String weeklyRisky(int count) {
    return 'برنامه‌های پرخطر: $count.';
  }

  @override
  String get reportTitle => 'گزارش حریم خصوصی Peekless';

  @override
  String reportScore(int score, String level) {
    return 'امتیاز: $score/۱۰۰ ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'برنامه‌های بررسی‌شده: $total. پرخطر: $risky، متوسط: $medium، امن: $safe';
  }

  @override
  String get reportAttention => 'نیازمند توجه:';

  @override
  String get reportFooter =>
      'با Peekless روی گوشی من بررسی شد. هیچ چیزی به هیچ جا فرستاده نشد.';

  @override
  String get trendTitle => 'امتیاز در طول زمان';

  @override
  String trendUp(int diff, int days) {
    return '$diff افزایش (روزهای ثبت‌شده: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff کاهش (روزهای ثبت‌شده: $days)';
  }

  @override
  String trendSame(int days) {
    return 'بدون تغییر (روزهای ثبت‌شده: $days)';
  }

  @override
  String get settingsQuick => 'دسترسی سریع';

  @override
  String get quickWidget => 'ویجت صفحه اصلی';

  @override
  String get quickWidgetBody =>
      'امتیاز حریم خصوصی شما را در صفحه اصلی نشان می‌دهد';

  @override
  String get quickTile => 'کاشی تنظیمات سریع';

  @override
  String get quickTileBody => 'امتیاز خود را در پنل تنظیمات سریع ببینید';

  @override
  String get quickManual =>
      'گوشی شما نتوانست این را خودکار اضافه کند. دستی اضافه کنید: صفحه اصلی را نگه دارید (ویجت) یا پنل تنظیمات سریع را ویرایش کنید (کاشی).';

  @override
  String get settingsExport => 'خروجی گرفتن از گزارش';

  @override
  String get settingsExportBody =>
      'گزارش را به‌صورت PDF یا JSON ذخیره و به اشتراک بگذارید';

  @override
  String get exportFailed => 'ساخت گزارش ممکن نشد.';

  @override
  String get settingsTrackerList => 'فهرست ردیاب‌ها';

  @override
  String settingsTrackerListBody(int count) {
    return 'برای به‌روزرسانی بزنید. $count ردیاب شناخته‌شده. فقط وقتی بزنید.';
  }

  @override
  String get trackerListUpdating => 'در حال به‌روزرسانی فهرست ردیاب‌ها…';

  @override
  String trackerListUpdated(int count) {
    return 'فهرست ردیاب‌ها به‌روز شد. $count ردیاب شناخته‌شده.';
  }

  @override
  String get trackerListCurrent => 'فهرست ردیاب‌ها از قبل به‌روز است.';

  @override
  String get trackerListFailed =>
      'به‌روزرسانی فهرست ردیاب‌ها ممکن نشد. اتصال خود را بررسی کنید.';
}
