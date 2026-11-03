// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get navHome => 'ہوم';

  @override
  String get navApps => 'ایپس';

  @override
  String get navPermissions => 'اجازتیں';

  @override
  String get navChanges => 'تبدیلیاں';

  @override
  String get navSettings => 'سیٹنگز';

  @override
  String get levelRisky => 'خطرناک';

  @override
  String get levelMedium => 'درمیانی';

  @override
  String get levelSafe => 'محفوظ';

  @override
  String get overallHigh => 'زیادہ خطرہ';

  @override
  String get overallMedium => 'درمیانہ خطرہ';

  @override
  String get overallLow => 'کم خطرہ';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get clear => 'صاف کریں';

  @override
  String get back => 'واپس';

  @override
  String get later => 'بعد میں';

  @override
  String get noneFound => 'کچھ نہیں ملا';

  @override
  String get scanning => 'اسکین ہو رہا ہے...';

  @override
  String get scanFailed => 'اسکین ناکام رہا';

  @override
  String get tryAgain => 'دوبارہ کوشش کریں';

  @override
  String get couldNotOpenSettings => 'ایپ کی سیٹنگز نہیں کھل سکیں۔';

  @override
  String get homeShare => 'رپورٹ شیئر کریں';

  @override
  String get homeRescan => 'ایپس دوبارہ اسکین کریں';

  @override
  String homeAppsChecked(int count) {
    return 'اس فون پر جانچی گئی ایپس: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'شمار کی گئی ایپس: $counted، قابلِ بھروسا: $trusted';
  }

  @override
  String get homeNeedsAttention => 'توجہ طلب';

  @override
  String get homeSeeAll => 'سب دیکھیں';

  @override
  String get homeAllSafe =>
      'کسی چیز پر توجہ کی ضرورت نہیں۔ تمام ایپس محفوظ لگتی ہیں۔';

  @override
  String get homeShareFailed => 'رپورٹ شیئر نہیں ہو سکی۔';

  @override
  String get scoreOf100 => '100 میں سے';

  @override
  String scoreSemantics(int score) {
    return 'پرائیویسی اسکور: 100 میں سے $score';
  }

  @override
  String wizardCard(int count) {
    return 'حساس رسائی والی ایپس دیکھیں: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'ایپس: $count، سب سے خطرناک پہلے';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$total میں سے $shown دکھائی جا رہی ہیں';
  }

  @override
  String get appsSearch => 'ایپس تلاش کریں';

  @override
  String get appsNone => 'کوئی ایپ نہیں ملی';

  @override
  String get chipMine => 'میری ایپس';

  @override
  String get chipSystem => 'سسٹم';

  @override
  String get filterAll => 'سب';

  @override
  String get filterTrackers => 'ٹریکرز والی';

  @override
  String get filterSpecial => 'خصوصی رسائی';

  @override
  String get filterNotStore => 'اسٹور کے باہر سے';

  @override
  String get filterOffline => 'آف لائن';

  @override
  String get filterTrusted => 'قابلِ بھروسا';

  @override
  String get permSubtitle => 'اس فون پر کون کیا استعمال کر سکتا ہے';

  @override
  String get trackersSubtitle => 'کون سا ٹریکر کن ایپس میں ہے';

  @override
  String get segTrackers => 'ٹریکرز';

  @override
  String get noTrackers => 'کوئی معلوم ٹریکر نہیں ملا۔';

  @override
  String get noPerms => 'کوئی حساس اجازت نہیں ملی۔';

  @override
  String appsCount(int count) {
    return 'ایپس: $count';
  }

  @override
  String get changesSubtitle => 'نئی ایپس اور اجازتوں کی تبدیلیاں';

  @override
  String get clearTitle => 'تبدیلیاں صاف کریں؟';

  @override
  String get clearBody => 'تبدیلیوں کی فہرست اس فون سے ہٹا دی جائے گی۔';

  @override
  String get changesEmpty =>
      'ابھی کوئی تبدیلی نہیں۔ Peekless یہاں نئی اور ہٹائی گئی ایپس، نئی اجازتیں اور نئے ٹریکرز دکھائے گا۔';

  @override
  String evInstalled(int score, String level) {
    return 'انسٹال ہوئی۔ اسکور: $score ($level)۔';
  }

  @override
  String get evRemoved => 'ہٹا دی گئی۔';

  @override
  String evAllowed(String label) {
    return 'اب اجازت ہے: $label۔';
  }

  @override
  String evRevoked(String label) {
    return 'اب اجازت نہیں: $label۔';
  }

  @override
  String evTracker(String name) {
    return 'نیا ٹریکر ملا: $name۔';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: آن ہو گیا۔';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: بند ہو گیا۔';
  }

  @override
  String get checksTitle => 'سکیورٹی چیکس';

  @override
  String get checksIntro =>
      'وہ چیزیں جنہیں دوبارہ دیکھنا چاہیے۔ ایپس دیکھنے کے لیے کسی چیک پر ٹیپ کریں۔';

  @override
  String get checkUnusedTitle => 'حساس رسائی والی غیر استعمال شدہ ایپس';

  @override
  String get checkDebuggableTitle => 'ڈی بگ بلڈز';

  @override
  String get checkOfflineTitle => 'آف لائن ایپس';

  @override
  String get checkAccessibilityDesc =>
      'یہ ایپس آپ کی اسکرین پڑھ سکتی ہیں اور آپ کی جگہ ٹیپ کر سکتی ہیں۔';

  @override
  String get checkAdminDesc =>
      'یہ ایپس فون کو لاک یا صاف کر سکتی ہیں اور خود کو ہٹانے سے روک سکتی ہیں۔';

  @override
  String get checkNotificationDesc =>
      'یہ ایپس کوڈز سمیت آپ کی تمام نوٹیفکیشنز پڑھ سکتی ہیں۔';

  @override
  String checkUnusedDesc(int days) {
    return '$days دن سے نہیں کھولی گئیں، مگر اب بھی حساس اجازتیں استعمال کر سکتی ہیں۔ انہیں ہٹانے پر غور کریں۔';
  }

  @override
  String get checkNotStoreDesc =>
      'کسی فائل یا کمپیوٹر سے انسٹال کی گئیں۔ آپ کے لیے کسی نے انہیں نہیں جانچا۔';

  @override
  String get checkDebuggableDesc =>
      'ٹیسٹ بلڈز جنہیں کمپیوٹر سے جانچا جا سکتا ہے۔';

  @override
  String get checkOldDesc =>
      'یہ ایپس اینڈرائیڈ کے نئے پرائیویسی تحفظات کو بائی پاس کرتی ہیں۔';

  @override
  String get checkOfflineDesc =>
      'انٹرنیٹ کی اجازت نہیں، اس لیے یہ آن لائن ڈیٹا نہیں بھیج سکتیں۔';

  @override
  String get usagePromptBody =>
      'اختیاری۔ استعمال کی رسائی آن کریں تاکہ وہ ایپس ملیں جو آپ نے کافی عرصے سے نہیں کھولیں مگر اب بھی آپ کا مائیکروفون، مقام یا رابطے استعمال کر سکتی ہیں۔ ڈیٹا آپ کے فون سے باہر نہیں جاتا۔';

  @override
  String get usagePromptButton => 'استعمال کی رسائی آن کریں';

  @override
  String get securityNone => 'اس فون پر کوئی سکیورٹی نکتہ نہیں ملا۔';

  @override
  String securityOffline(int count) {
    return 'مکمل طور پر آف لائن چلنے والی ایپس: $count';
  }

  @override
  String get fixWizardTitle => 'اصلاحی مددگار';

  @override
  String wizardStep(int index, int total) {
    return 'ایپ $index از $total';
  }

  @override
  String get wizardQuestion => 'کیا اس ایپ کو واقعی اس کی ضرورت ہے؟';

  @override
  String get wizardHint =>
      '«ایپ سیٹنگز کھولیں» پر ٹیپ کریں، پھر اجازتیں، اور جو ایپ کو درکار نہیں اسے بند کر دیں۔';

  @override
  String get openAppSettings => 'ایپ سیٹنگز کھولیں';

  @override
  String get trustApp => 'مجھے اس ایپ پر بھروسا ہے';

  @override
  String get nextApp => 'اگلی ایپ';

  @override
  String get finish => 'مکمل کریں';

  @override
  String get wizardDone => 'سب دیکھ لیا گیا';

  @override
  String get wizardNothing => 'دیکھنے کو کچھ نہیں';

  @override
  String get wizardNothingBody => 'اس وقت کسی ایپ کے پاس حساس رسائی نہیں ہے۔';

  @override
  String get wizardRescanBody => 'نیا اسکور دیکھنے کے لیے دوبارہ اسکین کریں۔';

  @override
  String get rescanFinish => 'دوبارہ اسکین کریں اور مکمل کریں';

  @override
  String get wizardRequested => 'مانگی گئی، ابھی اجازت نہیں';

  @override
  String scoreTrackers(int count) {
    return 'معلوم ٹریکرز: $count';
  }

  @override
  String get scoreDebuggable => 'ڈی بگ بلڈ';

  @override
  String get scoreOldTarget => 'بہت پرانے اینڈرائیڈ کے لیے بنائی گئی';

  @override
  String unusualFor(String groups) {
    return 'اس قسم کی ایپ کے لیے غیر معمولی: $groups';
  }

  @override
  String get noteRequested => 'مانگی گئی، آدھی شمار ہوتی ہے';

  @override
  String get noteAllowed => 'اجازت ہے';

  @override
  String noteTrackers(int points, int max) {
    return 'ہر ایک کے $points، زیادہ سے زیادہ $max';
  }

  @override
  String get noteTurnedOn => 'آن ہے';

  @override
  String get noteDebuggable => 'کمپیوٹر سے جانچا جا سکتا ہے';

  @override
  String noteApi(int apiLevel) {
    return 'API لیول $apiLevel';
  }

  @override
  String get noteExtra => 'اضافی کمی';

  @override
  String get explainTitle => 'اسکور کیسے کام کرتا ہے';

  @override
  String get explainIntro =>
      'ہر ایپ 100 سے شروع ہوتی ہے۔ ایپ جو کچھ کر سکتی ہے اس کے مطابق پوائنٹس کٹتے ہیں۔';

  @override
  String get explainStart => 'آغاز';

  @override
  String get explainNothing => 'کچھ نہیں کٹا';

  @override
  String get explainNothingNote => 'کوئی حساس اجازت یا معلوم ٹریکر نہیں';

  @override
  String get explainScore => 'اسکور';

  @override
  String get explainRules => 'اصول';

  @override
  String get rule1 =>
      'ہر گروپ میں صرف سب سے بھاری اجازت شمار ہوتی ہے۔ مثلاً درست اور تقریبی مقام ایک ہی بار شمار ہوتے ہیں۔';

  @override
  String get rule2 =>
      'خصوصی اجازتیں (تمام فائلیں، دوسری ایپس کے اوپر دکھانا، ایپس انسٹال کرنا) اگر ایپ نے صرف مانگی ہوں تو آدھی شمار ہوتی ہیں۔';

  @override
  String rule3(int points, int max) {
    return 'ہر معلوم ٹریکر $points پوائنٹس کم کرتا ہے، زیادہ سے زیادہ $max۔';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'آن خصوصی رسائی پوائنٹس کم کرتی ہے: ایکسیسبیلٹی $a، ڈیوائس ایڈمن $b، نوٹیفکیشن رسائی $c۔';
  }

  @override
  String rule5(int a, int b) {
    return 'ڈی بگ بلڈ $a کم کرتا ہے۔ اینڈرائیڈ 7 یا اس سے پرانے کے لیے بنی ایپ $b کم کرتی ہے۔';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'اگر کوئی اجازت اس قسم کی ایپ کے لیے غیر معمولی ہو (مثلاً ٹارچ میں مائیکروفون) تو مزید $points پوائنٹس کٹتے ہیں، زیادہ سے زیادہ $maxGroups اجازتی گروپس کے لیے۔';
  }

  @override
  String get rule7 =>
      '70 یا زیادہ: محفوظ۔ 40 سے 69: درمیانی۔ 40 سے کم: خطرناک۔';

  @override
  String get explainFooter =>
      'اسکور بتاتا ہے کہ ایپ کیا کر سکتی ہے، یہ نہیں کہ وہ ابھی کیا کر رہی ہے۔';

  @override
  String get howScore => 'یہ اسکور کیسے نکالا جاتا ہے؟';

  @override
  String summaryTrackers(int count) {
    return 'معلوم ٹریکرز: $count۔';
  }

  @override
  String get summaryNone => 'کوئی حساس اجازت یا معلوم ٹریکر نہیں۔';

  @override
  String metaTrackers(int count) {
    return 'ٹریکرز: $count';
  }

  @override
  String get metaNone => 'کوئی حساس اجازت نہیں';

  @override
  String get detailSecurity => 'سکیورٹی';

  @override
  String get detailSource => 'ماخذ';

  @override
  String get detailInternet => 'انٹرنیٹ';

  @override
  String get detailInternetYes => 'انٹرنیٹ استعمال کر سکتی ہے';

  @override
  String get detailOffline => 'آف لائن';

  @override
  String get detailOfflineBody =>
      'انٹرنیٹ کی اجازت نہیں، اس لیے آن لائن ڈیٹا نہیں بھیج سکتی';

  @override
  String get detailLastOpened => 'آخری بار کھولی گئی';

  @override
  String get today => 'آج';

  @override
  String get yesterday => 'کل';

  @override
  String daysSince(int days) {
    return 'آخری استعمال کو گزرے دن: $days';
  }

  @override
  String get detailDebuggableBody => 'ٹیسٹ بلڈ جسے کمپیوٹر سے جانچا جا سکتا ہے';

  @override
  String detailOldBody(int apiLevel) {
    return 'API لیول $apiLevel، اس لیے نئے پرائیویسی تحفظات بائی پاس ہوتے ہیں';
  }

  @override
  String get detailTrustBody => 'خطرناک کی گنتی اور الرٹس میں شمار نہ کریں';

  @override
  String get detailNoPerms => 'یہ ایپ کوئی حساس اجازت نہیں مانگتی۔';

  @override
  String get chipAllowed => 'اجازت ہے';

  @override
  String get chipRequested => 'مانگی گئی';

  @override
  String get chipNotAllowed => 'اجازت نہیں';

  @override
  String sensitiveNote(String why) {
    return 'حساس: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'ملنے والے ٹریکرز: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless بتاتا ہے کہ ایپ کیا کر سکتی ہے، یہ نہیں کہ وہ ابھی کیا کر رہی ہے۔ ٹریکرز ایپ کے مینی فیسٹ سے ملتے ہیں، اس لیے کچھ چھوٹ سکتے ہیں۔';

  @override
  String get srcBuiltIn => 'آپ کے فون میں پہلے سے موجود';

  @override
  String get srcUnknown => 'نامعلوم (کسی فائل یا کمپیوٹر سے انسٹال کی گئی)';

  @override
  String get srcApk => 'ایک APK فائل جو آپ نے کھولی';

  @override
  String get srcAdb => 'ایک کمپیوٹر (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'انسٹال کرنے والا: $name';
  }

  @override
  String get accessibilityLabel => 'ایکسیسبیلٹی رسائی';

  @override
  String get adminLabel => 'ڈیوائس ایڈمن';

  @override
  String get notificationLabel => 'نوٹیفکیشن رسائی';

  @override
  String get accessibilityWhy =>
      'آن ہے۔ اسکرین پر موجود چیزیں پڑھ سکتی ہے اور آپ کی جگہ عمل کر سکتی ہے۔';

  @override
  String get adminWhy =>
      'آن ہے۔ فون کو لاک کر سکتی ہے، صاف کر سکتی ہے اور ہٹانے سے روک سکتی ہے۔';

  @override
  String get notificationWhy =>
      'آن ہے۔ کوڈز سمیت آپ کی تمام نوٹیفکیشنز پڑھ سکتی ہے۔';

  @override
  String get grpMicrophone => 'مائیکروفون';

  @override
  String get grpCamera => 'کیمرا';

  @override
  String get grpLocation => 'مقام';

  @override
  String get grpContacts => 'رابطے';

  @override
  String get grpSms => 'ایس ایم ایس';

  @override
  String get grpCallLog => 'کال لاگ';

  @override
  String get grpPhone => 'فون';

  @override
  String get grpCalendar => 'کیلنڈر';

  @override
  String get grpBodySensors => 'باڈی سینسرز';

  @override
  String get grpActivity => 'سرگرمی';

  @override
  String get grpFiles => 'فائلیں';

  @override
  String get grpOverlay => 'اوورلے';

  @override
  String get grpInstalls => 'انسٹالیشنز';

  @override
  String get grpAppList => 'ایپس کی فہرست';

  @override
  String get lblCoarseLocation => 'تقریبی مقام';

  @override
  String get lblFineLocation => 'درست مقام';

  @override
  String get lblBackgroundLocation => 'ہر وقت مقام';

  @override
  String get lblAccounts => 'اکاؤنٹس';

  @override
  String get lblReadSms => 'ایس ایم ایس پڑھنا';

  @override
  String get lblReceiveSms => 'ایس ایم ایس وصول کرنا';

  @override
  String get lblSendSms => 'ایس ایم ایس بھیجنا';

  @override
  String get lblPhoneState => 'فون کی حالت';

  @override
  String get lblCallPhone => 'کالز کرنا';

  @override
  String get lblActivity => 'جسمانی سرگرمی';

  @override
  String get lblAllFiles => 'تمام فائلیں';

  @override
  String get lblFilesMedia => 'فائلیں اور میڈیا';

  @override
  String get lblPhotos => 'تصاویر';

  @override
  String get lblVideos => 'ویڈیوز';

  @override
  String get lblAudioFiles => 'آڈیو فائلیں';

  @override
  String get lblOverlay => 'دوسری ایپس کے اوپر دکھانا';

  @override
  String get lblInstall => 'دوسری ایپس انسٹال کرنا';

  @override
  String get lblAppList => 'تمام ایپس دیکھنا';

  @override
  String get whyMic => 'آواز ریکارڈ کر سکتی ہے۔';

  @override
  String get whyCamera => 'کیمرا استعمال کر سکتی ہے۔';

  @override
  String get whyCoarse => 'آپ کا تقریبی مقام دیکھ سکتی ہے۔';

  @override
  String get whyFine => 'آپ کا درست مقام دیکھ سکتی ہے۔';

  @override
  String get whyBackground => 'ہر وقت آپ کے مقام کا پتا رکھ سکتی ہے۔';

  @override
  String get whyContacts => 'آپ کے رابطے پڑھ سکتی ہے۔';

  @override
  String get whyAccounts => 'فون پر موجود اکاؤنٹس دیکھ سکتی ہے۔';

  @override
  String get whyReadSms => 'آپ کے ایس ایم ایس پڑھ سکتی ہے۔';

  @override
  String get whyReceiveSms => 'آپ کے ایس ایم ایس وصول کر سکتی ہے۔';

  @override
  String get whySendSms => 'ایس ایم ایس بھیج سکتی ہے۔';

  @override
  String get whyCallLog => 'آپ کی کالز کی تاریخ پڑھ سکتی ہے۔';

  @override
  String get whyPhoneState => 'آپ کے فون کی حالت دیکھ سکتی ہے۔';

  @override
  String get whyCallPhone => 'کالز کر سکتی ہے۔';

  @override
  String get whyCalendar => 'آپ کا کیلنڈر پڑھ سکتی ہے۔';

  @override
  String get whyBody => 'باڈی سینسرز پڑھ سکتی ہے۔';

  @override
  String get whyActivity => 'آپ کی جسمانی سرگرمی دیکھ سکتی ہے۔';

  @override
  String get whyAllFiles => 'فون کی تمام فائلوں تک رسائی حاصل کر سکتی ہے۔';

  @override
  String get whyFilesMedia => 'فائلیں اور میڈیا پڑھ سکتی ہے۔';

  @override
  String get whyPhotos => 'آپ کی تصاویر پڑھ سکتی ہے۔';

  @override
  String get whyVideos => 'آپ کی ویڈیوز پڑھ سکتی ہے۔';

  @override
  String get whyAudio => 'آپ کی آڈیو فائلیں پڑھ سکتی ہے۔';

  @override
  String get whyOverlay => 'دوسری ایپس کے اوپر ظاہر ہو سکتی ہے۔';

  @override
  String get whyInstall => 'دوسری ایپس انسٹال کر سکتی ہے۔';

  @override
  String get whyAppList => 'فون کی تمام ایپس دیکھ سکتی ہے۔';

  @override
  String get settingsAppearance => 'ظاہری شکل';

  @override
  String get settingsTheme => 'تھیم';

  @override
  String get settingsThemeBody => 'بطورِ ڈیفالٹ آپ کے فون کے مطابق';

  @override
  String get themeSystem => 'سسٹم';

  @override
  String get themeLight => 'روشن';

  @override
  String get themeDark => 'گہری';

  @override
  String get settingsScanning => 'اسکیننگ';

  @override
  String get settingsAlerts => 'ایپ الرٹس';

  @override
  String get settingsAlertsBody =>
      'نئی ایپس اور نئی اجازتوں کی اطلاع دیتا ہے۔ تقریباً ہر 6 گھنٹے بعد جانچتا ہے۔';

  @override
  String get settingsWeekly => 'ہفتہ وار خلاصہ';

  @override
  String get settingsWeeklyBody =>
      'ہفتے میں ایک نوٹیفکیشن، آپ کے اسکور اور تبدیلیوں کے ساتھ';

  @override
  String get settingsUsage => 'استعمال کی رسائی';

  @override
  String get settingsUsageOn =>
      'آن ہے۔ Peekless دیکھ سکتا ہے کہ ایپس آخری بار کب کھولی گئیں۔';

  @override
  String get settingsUsageOff =>
      'بند ہے۔ اختیاری۔ Peekless کو وہ ایپس ڈھونڈنے دیتا ہے جو آپ اب استعمال نہیں کرتے۔ آپ کے فون پر ہی رہتا ہے۔';

  @override
  String get settingsSystemApps => 'سسٹم ایپس شامل کریں';

  @override
  String get settingsSystemAppsBody =>
      'فون میں پہلے سے موجود ایپس بھی اسکین کریں';

  @override
  String get settingsRescan => 'ابھی اسکین کریں';

  @override
  String get settingsRescanBody => 'تمام ایپس دوبارہ جانچیں';

  @override
  String get settingsUpdates => 'اپ ڈیٹس';

  @override
  String get settingsCheckUpdates => 'اپ ڈیٹس چیک کریں';

  @override
  String settingsVersion(String version) {
    return 'ورژن $version · صرف آپ کے ٹیپ کرنے پر';
  }

  @override
  String get settingsAbout => 'تعارف';

  @override
  String get settingsPrivacy => 'پرائیویسی';

  @override
  String get settingsPrivacyBody => 'سب کچھ آپ کے فون پر رہتا ہے';

  @override
  String get settingsOpenSource => 'اوپن سورس';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 لائسنس۔ GitHub پر کوڈ دیکھیں';

  @override
  String get settingsDeveloped => 'Lumio Apps کی تیار کردہ';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get languageSystem => 'فون کی زبان کے مطابق';

  @override
  String get updChecking => 'اپ ڈیٹس چیک ہو رہی ہیں...';

  @override
  String get updLatest => 'آپ کے پاس تازہ ترین ورژن ہے۔';

  @override
  String get updFailed => 'اپ ڈیٹس چیک نہیں ہو سکیں۔ بعد میں کوشش کریں۔';

  @override
  String get updTitle => 'اپ ڈیٹ دستیاب ہے';

  @override
  String updReady(String version) {
    return 'ورژن $version انسٹال کے لیے تیار ہے۔';
  }

  @override
  String get updDownloadFailed =>
      'ڈاؤن لوڈ ناکام رہا۔ اپنا کنکشن دیکھیں اور دوبارہ کوشش کریں۔';

  @override
  String get updInstall => 'ڈاؤن لوڈ اور انسٹال کریں';

  @override
  String get notifyDenied =>
      'اسے آن کرنے کے لیے Peekless کو نوٹیفکیشنز کی اجازت دیں۔';

  @override
  String get settingChangeFailed => 'یہ سیٹنگ تبدیل نہیں ہو سکی۔';

  @override
  String get usageOpenFailed => 'استعمال کی رسائی کی سیٹنگز نہیں کھل سکیں۔';

  @override
  String alertNewTitle(String name) {
    return 'نئی ایپ: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'اسکور $score ($level)۔ $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name تبدیل ہو گئی';
  }

  @override
  String alertNowHas(String list) {
    return 'اب اس کے پاس ہے: $list۔';
  }

  @override
  String alertNowAllowed(String list) {
    return 'اب اجازت ہے: $list۔';
  }

  @override
  String alertNewTracker(String list) {
    return 'نیا ٹریکر: $list۔';
  }

  @override
  String alertScore(int score, String level) {
    return 'اسکور $score ($level)۔';
  }

  @override
  String get alertMoreTitle => 'مزید تبدیلیاں';

  @override
  String alertMoreBody(int count) {
    return 'مزید تبدیلیاں: $count۔ دیکھنے کے لیے Peekless کھولیں۔';
  }

  @override
  String get weeklyTitle => 'آپ کا ہفتہ وار Peekless خلاصہ';

  @override
  String weeklyUp(int score, int diff) {
    return 'اسکور $score/100، پچھلے ہفتے سے $diff زیادہ۔';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'اسکور $score/100، پچھلے ہفتے سے $diff کم۔';
  }

  @override
  String weeklySame(int score) {
    return 'اسکور $score/100، پچھلے ہفتے سے کوئی تبدیلی نہیں۔';
  }

  @override
  String weeklyScore(int score) {
    return 'اسکور $score/100۔';
  }

  @override
  String weeklyNewApps(int count) {
    return 'نئی ایپس: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'ہٹائی گئی ایپس: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'آن کی گئی اجازتیں: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'نئے ٹریکرز: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'اس ہفتے: $list۔';
  }

  @override
  String get weeklyNone => 'اس ہفتے کوئی تبدیلی نہیں۔';

  @override
  String weeklyRisky(int count) {
    return 'خطرناک ایپس: $count۔';
  }

  @override
  String get reportTitle => 'Peekless پرائیویسی رپورٹ';

  @override
  String reportScore(int score, String level) {
    return 'اسکور: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'جانچی گئی ایپس: $total۔ خطرناک: $risky، درمیانی: $medium، محفوظ: $safe';
  }

  @override
  String get reportAttention => 'توجہ طلب:';

  @override
  String get reportFooter =>
      'میرے فون پر Peekless سے جانچا گیا۔ کچھ بھی کہیں نہیں بھیجا گیا۔';

  @override
  String get trendTitle => 'وقت کے ساتھ اسکور';

  @override
  String trendUp(int diff, int days) {
    return '$diff کا اضافہ (ٹریک شدہ دن: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff کی کمی (ٹریک شدہ دن: $days)';
  }

  @override
  String trendSame(int days) {
    return 'کوئی تبدیلی نہیں (ٹریک شدہ دن: $days)';
  }

  @override
  String get settingsQuick => 'فوری رسائی';

  @override
  String get quickWidget => 'ہوم اسکرین ویجیٹ';

  @override
  String get quickWidgetBody => 'اپنا پرائیویسی اسکور ہوم اسکرین پر دکھائیں';

  @override
  String get quickTile => 'کوئیک سیٹنگز ٹائل';

  @override
  String get quickTileBody => 'کوئیک سیٹنگز پینل میں اپنا اسکور دیکھیں';

  @override
  String get quickManual =>
      'آپ کا فون اسے خود بخود شامل نہیں کر سکا۔ ہاتھ سے شامل کریں: ہوم اسکرین کو دیر تک دبائیں (ویجیٹ) یا کوئیک سیٹنگز پینل میں ترمیم کریں (ٹائل)۔';

  @override
  String get settingsExport => 'رپورٹ ایکسپورٹ کریں';

  @override
  String get settingsExportBody =>
      'رپورٹ کو PDF یا JSON فائل کے طور پر محفوظ کریں اور شیئر کریں';

  @override
  String get exportFailed => 'رپورٹ نہیں بن سکی۔';

  @override
  String get settingsTrackerList => 'ٹریکر فہرست';

  @override
  String settingsTrackerListBody(int count) {
    return 'اپ ڈیٹ کے لیے ٹیپ کریں۔ $count ٹریکر معلوم ہیں۔ صرف آپ کے ٹیپ کرنے پر۔';
  }

  @override
  String get trackerListUpdating => 'ٹریکر فہرست اپ ڈیٹ ہو رہی ہے…';

  @override
  String trackerListUpdated(int count) {
    return 'ٹریکر فہرست اپ ڈیٹ ہو گئی۔ $count ٹریکر معلوم ہیں۔';
  }

  @override
  String get trackerListCurrent => 'ٹریکر فہرست پہلے سے تازہ ہے۔';

  @override
  String get trackerListFailed =>
      'ٹریکر فہرست اپ ڈیٹ نہیں ہو سکی۔ اپنا کنکشن چیک کریں۔';

  @override
  String get homeTagline => 'دیکھیں کون آپ پر نظر رکھ رہا ہے۔';

  @override
  String get homeOverviewBody =>
      'آپ کی کتنی فیصد ایپس ہر ایک کو استعمال کر سکتی ہیں';

  @override
  String get settingsDeep => 'گہرا اسکین';

  @override
  String get settingsDeepBody =>
      'ہر ایپ کے کوڈ کے اندر بھی چھپے ٹریکر تلاش کریں۔ پہلا اسکین سست ہوتا ہے۔ فون کے ساتھ آنے والی ایپس چھوڑ دی جاتی ہیں۔ سب کچھ آپ کے فون پر رہتا ہے۔';

  @override
  String trackersFromCode(int count) {
    return 'ایپ کے کوڈ کے اندر ملے (کوڈ آئیکن سے نشان زد): $count';
  }

  @override
  String get settingsNet => 'نیٹ ورک مانیٹر';

  @override
  String get settingsNetBody =>
      'دیکھیں کون سی ایپس کن انٹرنیٹ پتوں کو تلاش کرتی ہیں اور کون سے ٹریکر ہیں';

  @override
  String get netTitle => 'نیٹ ورک مانیٹر';

  @override
  String get netIntro =>
      'Peekless دکھاتا ہے کہ آپ کی ایپس کن ڈومین ناموں کو مانگتی ہیں۔ یہ ایک مقامی VPN استعمال کرتا ہے جو صرف یہی لُک اپ لیتا ہے، اس لیے انٹرنیٹ کی رفتار نہیں بدلتی۔ یہ آپ کا بھیجا یا پڑھا ہوا کچھ نہیں دیکھ سکتا، صرف نام دیکھتا ہے۔ کچھ بھی آپ کے فون سے باہر نہیں جاتا۔';

  @override
  String get netLimits =>
      'جو ایپس اپنا انکرپٹڈ DNS استعمال کرتی ہیں، یا جب Private DNS کسی مقررہ فراہم کنندہ پر ہو، تو یہ انہیں چُوک سکتا ہے۔ کس ایپ نے پوچھا، یہ دکھانے کے لیے Android 10 یا نیا چاہیے۔';

  @override
  String get netSwitch => 'لُک اپ مانیٹر کریں';

  @override
  String get netOn => 'آن۔ کچھ ایپس استعمال کریں، پھر نتائج دیکھنے واپس آئیں۔';

  @override
  String get netOff => 'آف';

  @override
  String get netEmpty =>
      'ابھی کچھ نظر نہیں آیا۔ کچھ ایپس استعمال کریں اور دوبارہ دیکھیں۔';

  @override
  String netLookups(int count) {
    return '$count لُک اپ';
  }

  @override
  String netTrackerCount(int count) {
    return '$count ٹریکر ڈومین';
  }

  @override
  String get netClear => 'ڈیٹا صاف کریں';

  @override
  String get netCleared => 'نیٹ ورک ڈیٹا صاف ہو گیا۔';

  @override
  String get netConsentDenied =>
      'Android نے مانیٹر شروع کرنے کی اجازت نہیں دی۔';

  @override
  String get netFailed => 'نیٹ ورک مانیٹر تبدیل نہیں ہو سکا۔';

  @override
  String get netUnknownApp => 'نامعلوم ایپ';

  @override
  String netTrackerTag(String name) {
    return 'ٹریکر: $name';
  }
}
