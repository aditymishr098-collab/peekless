// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navApps => 'التطبيقات';

  @override
  String get navPermissions => 'الأذونات';

  @override
  String get navChanges => 'التغييرات';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get levelRisky => 'خطرة';

  @override
  String get levelMedium => 'متوسطة';

  @override
  String get levelSafe => 'آمنة';

  @override
  String get overallHigh => 'خطورة عالية';

  @override
  String get overallMedium => 'خطورة متوسطة';

  @override
  String get overallLow => 'خطورة منخفضة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get clear => 'مسح';

  @override
  String get back => 'رجوع';

  @override
  String get later => 'لاحقًا';

  @override
  String get noneFound => 'لم يُعثر على شيء';

  @override
  String get scanning => 'جارٍ الفحص...';

  @override
  String get scanFailed => 'فشل الفحص';

  @override
  String get tryAgain => 'إعادة المحاولة';

  @override
  String get couldNotOpenSettings => 'تعذّر فتح إعدادات التطبيق.';

  @override
  String get homeShare => 'مشاركة التقرير';

  @override
  String get homeRescan => 'إعادة فحص التطبيقات';

  @override
  String homeAppsChecked(int count) {
    return 'التطبيقات المفحوصة على هذا الهاتف: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'التطبيقات المحتسبة: $counted، الموثوقة: $trusted';
  }

  @override
  String get homeNeedsAttention => 'تحتاج إلى انتباه';

  @override
  String get homeSeeAll => 'عرض الكل';

  @override
  String get homeAllSafe => 'لا شيء يحتاج إلى انتباه. تبدو كل التطبيقات آمنة.';

  @override
  String get homeShareFailed => 'تعذّرت مشاركة التقرير.';

  @override
  String get scoreOf100 => 'من 100';

  @override
  String scoreSemantics(int score) {
    return 'درجة الخصوصية: $score من 100';
  }

  @override
  String wizardCard(int count) {
    return 'راجع التطبيقات ذات الوصول الحساس: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'التطبيقات: $count، الأكثر خطورة أولًا';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'عرض $shown من $total';
  }

  @override
  String get appsSearch => 'البحث في التطبيقات';

  @override
  String get appsNone => 'لم يُعثر على تطبيقات';

  @override
  String get chipMine => 'تطبيقاتي';

  @override
  String get chipSystem => 'النظام';

  @override
  String get filterAll => 'الكل';

  @override
  String get filterTrackers => 'بها متتبعات';

  @override
  String get filterSpecial => 'وصول خاص';

  @override
  String get filterNotStore => 'من خارج المتجر';

  @override
  String get filterOffline => 'دون إنترنت';

  @override
  String get filterTrusted => 'الموثوقة';

  @override
  String get permSubtitle => 'مَن يستطيع استخدام ماذا على هذا الهاتف';

  @override
  String get trackersSubtitle => 'أي متتبع موجود في أي تطبيقات';

  @override
  String get segTrackers => 'المتتبعات';

  @override
  String get noTrackers => 'لم يُعثر على متتبعات معروفة.';

  @override
  String get noPerms => 'لم يُعثر على أذونات حساسة.';

  @override
  String appsCount(int count) {
    return 'التطبيقات: $count';
  }

  @override
  String get changesSubtitle => 'التطبيقات الجديدة وتغييرات الأذونات';

  @override
  String get clearTitle => 'مسح التغييرات؟';

  @override
  String get clearBody => 'ستُزال قائمة التغييرات من هذا الهاتف.';

  @override
  String get changesEmpty =>
      'لا توجد تغييرات بعد. سيعرض Peekless هنا التطبيقات الجديدة والمحذوفة والأذونات الجديدة والمتتبعات الجديدة.';

  @override
  String evInstalled(int score, String level) {
    return 'تم التثبيت. الدرجة: $score ($level).';
  }

  @override
  String get evRemoved => 'تمت الإزالة.';

  @override
  String evAllowed(String label) {
    return 'مسموح الآن: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'لم يعد مسموحًا: $label.';
  }

  @override
  String evTracker(String name) {
    return 'عُثر على متتبع جديد: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: تم التفعيل.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: تم الإيقاف.';
  }

  @override
  String get checksTitle => 'فحوصات الأمان';

  @override
  String get checksIntro =>
      'أشياء تستحق نظرة ثانية. المس أي فحص لعرض التطبيقات.';

  @override
  String get checkUnusedTitle => 'تطبيقات غير مستخدمة ذات وصول حساس';

  @override
  String get checkDebuggableTitle => 'إصدارات التصحيح';

  @override
  String get checkOfflineTitle => 'تطبيقات تعمل دون إنترنت';

  @override
  String get checkAccessibilityDesc =>
      'يمكن لهذه التطبيقات قراءة شاشتك والمس نيابةً عنك.';

  @override
  String get checkAdminDesc =>
      'يمكن لهذه التطبيقات قفل الهاتف أو مسحه ومنع إلغاء تثبيتها.';

  @override
  String get checkNotificationDesc =>
      'يمكن لهذه التطبيقات قراءة كل إشعاراتك بما فيها الرموز.';

  @override
  String checkUnusedDesc(int days) {
    return 'لم تُفتح منذ $days يومًا، لكنها ما زالت قادرة على استخدام أذونات حساسة. فكّر في إزالتها.';
  }

  @override
  String get checkNotStoreDesc =>
      'مثبّتة من ملف أو من حاسوب. لم يفحصها أحد نيابةً عنك.';

  @override
  String get checkDebuggableDesc => 'إصدارات تجريبية يمكن فحصها من حاسوب.';

  @override
  String get checkOldDesc =>
      'تتجاوز هذه التطبيقات حمايات الخصوصية الجديدة في Android.';

  @override
  String get checkOfflineDesc =>
      'لا تملك إذن الإنترنت، لذا لا يمكنها إرسال البيانات عبر الإنترنت.';

  @override
  String get usagePromptBody =>
      'اختياري. فعّل الوصول إلى الاستخدام للعثور على تطبيقات لم تفتحها منذ مدة لكنها ما زالت قادرة على استخدام الميكروفون أو الموقع أو جهات الاتصال. لا تغادر البيانات هاتفك.';

  @override
  String get usagePromptButton => 'تفعيل الوصول إلى الاستخدام';

  @override
  String get securityNone => 'لم تُعثر على ملاحظات أمنية على هذا الهاتف.';

  @override
  String securityOffline(int count) {
    return 'تطبيقات تعمل دون إنترنت تمامًا: $count';
  }

  @override
  String get fixWizardTitle => 'معالج الإصلاح';

  @override
  String wizardStep(int index, int total) {
    return 'التطبيق $index من $total';
  }

  @override
  String get wizardQuestion => 'هل يحتاج هذا التطبيق إلى هذا فعلًا؟';

  @override
  String get wizardHint =>
      'المس «فتح إعدادات التطبيق» ثم الأذونات، وأوقف ما لا يحتاجه التطبيق.';

  @override
  String get openAppSettings => 'فتح إعدادات التطبيق';

  @override
  String get trustApp => 'أثق بهذا التطبيق';

  @override
  String get nextApp => 'التطبيق التالي';

  @override
  String get finish => 'إنهاء';

  @override
  String get wizardDone => 'تمت مراجعة كل شيء';

  @override
  String get wizardNothing => 'لا شيء للمراجعة';

  @override
  String get wizardNothingBody => 'لا يملك أي تطبيق وصولًا حساسًا حاليًا.';

  @override
  String get wizardRescanBody => 'أعد الفحص لمشاهدة درجتك الجديدة.';

  @override
  String get rescanFinish => 'إعادة الفحص والإنهاء';

  @override
  String get wizardRequested => 'مطلوب، ولم يُسمح به بعد';

  @override
  String scoreTrackers(int count) {
    return 'المتتبعات المعروفة: $count';
  }

  @override
  String get scoreDebuggable => 'إصدار تصحيح';

  @override
  String get scoreOldTarget => 'مصمَّم لنظام Android قديم جدًا';

  @override
  String unusualFor(String groups) {
    return 'غير معتاد لهذا النوع من التطبيقات: $groups';
  }

  @override
  String get noteRequested => 'مطلوب، يُحتسب نصفه';

  @override
  String get noteAllowed => 'مسموح';

  @override
  String noteTrackers(int points, int max) {
    return '$points لكل منها، بحد أقصى $max';
  }

  @override
  String get noteTurnedOn => 'مفعّل';

  @override
  String get noteDebuggable => 'يمكن فحصه من حاسوب';

  @override
  String noteApi(int apiLevel) {
    return 'مستوى API $apiLevel';
  }

  @override
  String get noteExtra => 'خصم إضافي';

  @override
  String get explainTitle => 'كيف تعمل الدرجة';

  @override
  String get explainIntro =>
      'يبدأ كل تطبيق من 100. تُخصم النقاط بحسب ما يستطيع التطبيق فعله.';

  @override
  String get explainStart => 'البداية';

  @override
  String get explainNothing => 'لم يُخصم شيء';

  @override
  String get explainNothingNote => 'لا أذونات حساسة ولا متتبعات معروفة';

  @override
  String get explainScore => 'الدرجة';

  @override
  String get explainRules => 'القواعد';

  @override
  String get rule1 =>
      'في كل مجموعة يُحتسب الإذن الأشد فقط. فمثلًا الموقع الدقيق والتقريبي يُحتسبان مرة واحدة.';

  @override
  String get rule2 =>
      'الأذونات الخاصة (كل الملفات، العرض فوق التطبيقات الأخرى، تثبيت التطبيقات) يُحتسب نصفها إذا طلبها التطبيق فقط.';

  @override
  String rule3(int points, int max) {
    return 'كل متتبع معروف يخصم $points نقاط، بحد أقصى $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'الوصول الخاص المفعّل يخصم نقاطًا: إمكانية الوصول $a، مسؤول الجهاز $b، الوصول إلى الإشعارات $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'إصدار التصحيح يخصم $a. والتطبيق المصمَّم لـ Android 7 أو أقدم يخصم $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'إذا كان الإذن غير معتاد لهذا النوع من التطبيقات (مثل الميكروفون في كشّاف الضوء) تُخصم $points نقاط إضافية، ولما لا يزيد على $maxGroups من مجموعات الأذونات.';
  }

  @override
  String get rule7 => '70 فما فوق: آمن. من 40 إلى 69: متوسط. أقل من 40: خطر.';

  @override
  String get explainFooter =>
      'تعرض الدرجة ما يستطيع التطبيق فعله، لا ما يفعله الآن.';

  @override
  String get howScore => 'كيف تُحسب هذه الدرجة؟';

  @override
  String summaryTrackers(int count) {
    return 'المتتبعات المعروفة: $count.';
  }

  @override
  String get summaryNone => 'لا أذونات حساسة ولا متتبعات معروفة.';

  @override
  String metaTrackers(int count) {
    return 'المتتبعات: $count';
  }

  @override
  String get metaNone => 'لا أذونات حساسة';

  @override
  String get detailSecurity => 'الأمان';

  @override
  String get detailSource => 'المصدر';

  @override
  String get detailInternet => 'الإنترنت';

  @override
  String get detailInternetYes => 'يمكنه الاتصال بالإنترنت';

  @override
  String get detailOffline => 'دون إنترنت';

  @override
  String get detailOfflineBody =>
      'لا يملك إذن الإنترنت، لذا لا يستطيع إرسال البيانات عبر الإنترنت';

  @override
  String get detailLastOpened => 'آخر فتح';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'أمس';

  @override
  String daysSince(int days) {
    return 'الأيام منذ آخر استخدام: $days';
  }

  @override
  String get detailDebuggableBody => 'إصدار تجريبي يمكن فحصه من حاسوب';

  @override
  String detailOldBody(int apiLevel) {
    return 'مستوى API $apiLevel، لذا تُتجاوز حمايات الخصوصية الجديدة';
  }

  @override
  String get detailTrustBody => 'عدم احتسابه ضمن الخطرة أو في التنبيهات';

  @override
  String get detailNoPerms => 'لا يطلب هذا التطبيق أذونات حساسة.';

  @override
  String get chipAllowed => 'مسموح';

  @override
  String get chipRequested => 'مطلوب';

  @override
  String get chipNotAllowed => 'غير مسموح';

  @override
  String sensitiveNote(String why) {
    return 'حساس: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'المتتبعات التي عُثر عليها: $count';
  }

  @override
  String get detailDisclaimer =>
      'يعرض Peekless ما يستطيع التطبيق فعله، لا ما يفعله الآن. تُكتشف المتتبعات من ملف بيان التطبيق، لذا قد يفوت بعضها.';

  @override
  String get srcBuiltIn => 'مدمج في هاتفك';

  @override
  String get srcUnknown => 'غير معروف (مثبّت من ملف أو من حاسوب)';

  @override
  String get srcApk => 'ملف APK فتحتَه';

  @override
  String get srcAdb => 'حاسوب (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'ثبّته: $name';
  }

  @override
  String get accessibilityLabel => 'الوصول عبر إمكانية الوصول';

  @override
  String get adminLabel => 'مسؤول الجهاز';

  @override
  String get notificationLabel => 'الوصول إلى الإشعارات';

  @override
  String get accessibilityWhy =>
      'مفعّل. يستطيع قراءة ما على الشاشة والتصرف نيابةً عنك.';

  @override
  String get adminWhy => 'مفعّل. يستطيع قفل الهاتف ومسحه ومنع إلغاء التثبيت.';

  @override
  String get notificationWhy =>
      'مفعّل. يستطيع قراءة كل إشعاراتك بما فيها الرموز.';

  @override
  String get grpMicrophone => 'الميكروفون';

  @override
  String get grpCamera => 'الكاميرا';

  @override
  String get grpLocation => 'الموقع';

  @override
  String get grpContacts => 'جهات الاتصال';

  @override
  String get grpSms => 'الرسائل النصية';

  @override
  String get grpCallLog => 'سجل المكالمات';

  @override
  String get grpPhone => 'الهاتف';

  @override
  String get grpCalendar => 'التقويم';

  @override
  String get grpBodySensors => 'مستشعرات الجسم';

  @override
  String get grpActivity => 'النشاط';

  @override
  String get grpFiles => 'الملفات';

  @override
  String get grpOverlay => 'العرض فوق التطبيقات';

  @override
  String get grpInstalls => 'التثبيتات';

  @override
  String get grpAppList => 'قائمة التطبيقات';

  @override
  String get lblCoarseLocation => 'الموقع التقريبي';

  @override
  String get lblFineLocation => 'الموقع الدقيق';

  @override
  String get lblBackgroundLocation => 'الموقع طوال الوقت';

  @override
  String get lblAccounts => 'الحسابات';

  @override
  String get lblReadSms => 'قراءة الرسائل النصية';

  @override
  String get lblReceiveSms => 'استقبال الرسائل النصية';

  @override
  String get lblSendSms => 'إرسال الرسائل النصية';

  @override
  String get lblPhoneState => 'حالة الهاتف';

  @override
  String get lblCallPhone => 'إجراء المكالمات';

  @override
  String get lblActivity => 'النشاط البدني';

  @override
  String get lblAllFiles => 'كل الملفات';

  @override
  String get lblFilesMedia => 'الملفات والوسائط';

  @override
  String get lblPhotos => 'الصور';

  @override
  String get lblVideos => 'مقاطع الفيديو';

  @override
  String get lblAudioFiles => 'الملفات الصوتية';

  @override
  String get lblOverlay => 'العرض فوق التطبيقات الأخرى';

  @override
  String get lblInstall => 'تثبيت تطبيقات أخرى';

  @override
  String get lblAppList => 'رؤية كل التطبيقات';

  @override
  String get whyMic => 'يستطيع تسجيل الصوت.';

  @override
  String get whyCamera => 'يستطيع استخدام الكاميرا.';

  @override
  String get whyCoarse => 'يستطيع رؤية موقعك التقريبي.';

  @override
  String get whyFine => 'يستطيع رؤية موقعك الدقيق.';

  @override
  String get whyBackground => 'يستطيع تتبّع موقعك طوال الوقت.';

  @override
  String get whyContacts => 'يستطيع قراءة جهات اتصالك.';

  @override
  String get whyAccounts => 'يستطيع رؤية الحسابات على الهاتف.';

  @override
  String get whyReadSms => 'يستطيع قراءة رسائلك النصية.';

  @override
  String get whyReceiveSms => 'يستطيع استقبال رسائلك النصية.';

  @override
  String get whySendSms => 'يستطيع إرسال رسائل نصية.';

  @override
  String get whyCallLog => 'يستطيع قراءة سجل مكالماتك.';

  @override
  String get whyPhoneState => 'يستطيع رؤية حالة هاتفك.';

  @override
  String get whyCallPhone => 'يستطيع إجراء المكالمات.';

  @override
  String get whyCalendar => 'يستطيع قراءة تقويمك.';

  @override
  String get whyBody => 'يستطيع قراءة مستشعرات الجسم.';

  @override
  String get whyActivity => 'يستطيع رؤية نشاطك البدني.';

  @override
  String get whyAllFiles => 'يستطيع الوصول إلى كل الملفات على الهاتف.';

  @override
  String get whyFilesMedia => 'يستطيع قراءة الملفات والوسائط.';

  @override
  String get whyPhotos => 'يستطيع قراءة صورك.';

  @override
  String get whyVideos => 'يستطيع قراءة مقاطع الفيديو لديك.';

  @override
  String get whyAudio => 'يستطيع قراءة ملفاتك الصوتية.';

  @override
  String get whyOverlay => 'يستطيع الظهور فوق التطبيقات الأخرى.';

  @override
  String get whyInstall => 'يستطيع تثبيت تطبيقات أخرى.';

  @override
  String get whyAppList => 'يستطيع رؤية كل التطبيقات على الهاتف.';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsTheme => 'السمة';

  @override
  String get settingsThemeBody => 'يتبع هاتفك افتراضيًا';

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'فاتحة';

  @override
  String get themeDark => 'داكنة';

  @override
  String get settingsScanning => 'الفحص';

  @override
  String get settingsAlerts => 'تنبيهات التطبيقات';

  @override
  String get settingsAlertsBody =>
      'ينبّهك إلى التطبيقات الجديدة والأذونات الجديدة. يفحص كل 6 ساعات تقريبًا.';

  @override
  String get settingsWeekly => 'الملخص الأسبوعي';

  @override
  String get settingsWeeklyBody => 'إشعار واحد أسبوعيًا بدرجتك وما تغيّر';

  @override
  String get settingsUsage => 'الوصول إلى الاستخدام';

  @override
  String get settingsUsageOn =>
      'مفعّل. يستطيع Peekless رؤية آخر مرة فُتحت فيها التطبيقات.';

  @override
  String get settingsUsageOff =>
      'متوقف. اختياري. يتيح لـ Peekless العثور على تطبيقات لم تعد تستخدمها. يبقى على هاتفك.';

  @override
  String get settingsSystemApps => 'تضمين تطبيقات النظام';

  @override
  String get settingsSystemAppsBody => 'فحص التطبيقات المدمجة في الهاتف أيضًا';

  @override
  String get settingsRescan => 'فحص الآن';

  @override
  String get settingsRescanBody => 'إعادة فحص كل التطبيقات';

  @override
  String get settingsUpdates => 'التحديثات';

  @override
  String get settingsCheckUpdates => 'التحقق من التحديثات';

  @override
  String settingsVersion(String version) {
    return 'الإصدار $version · فقط عند اللمس';
  }

  @override
  String get settingsAbout => 'حول';

  @override
  String get settingsPrivacy => 'الخصوصية';

  @override
  String get settingsPrivacyBody => 'كل شيء يبقى على هاتفك';

  @override
  String get settingsOpenSource => 'مفتوح المصدر';

  @override
  String get settingsOpenSourceBody =>
      'ترخيص GPL-3.0. اطّلع على الشيفرة في GitHub';

  @override
  String get settingsDeveloped => 'تطوير Lumio Apps';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get languageSystem => 'اتباع لغة الهاتف';

  @override
  String get updChecking => 'جارٍ التحقق من التحديثات...';

  @override
  String get updLatest => 'لديك أحدث إصدار.';

  @override
  String get updFailed => 'تعذّر التحقق من التحديثات. حاول لاحقًا.';

  @override
  String get updTitle => 'تحديث متاح';

  @override
  String updReady(String version) {
    return 'الإصدار $version جاهز للتثبيت.';
  }

  @override
  String get updDownloadFailed => 'فشل التنزيل. تحقق من اتصالك وحاول مجددًا.';

  @override
  String get updInstall => 'تنزيل وتثبيت';

  @override
  String get notifyDenied => 'اسمح لـ Peekless بإرسال الإشعارات لتفعيل هذا.';

  @override
  String get settingChangeFailed => 'تعذّر تغيير هذا الإعداد.';

  @override
  String get usageOpenFailed => 'تعذّر فتح إعدادات الوصول إلى الاستخدام.';

  @override
  String alertNewTitle(String name) {
    return 'تطبيق جديد: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'الدرجة $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return 'تغيّر $name';
  }

  @override
  String alertNowHas(String list) {
    return 'لديه الآن: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'مسموح الآن: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'متتبع جديد: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'الدرجة $score ($level).';
  }

  @override
  String get alertMoreTitle => 'تغييرات أخرى';

  @override
  String alertMoreBody(int count) {
    return 'تغييرات أخرى: $count. افتح Peekless لعرضها.';
  }

  @override
  String get weeklyTitle => 'ملخص Peekless الأسبوعي';

  @override
  String weeklyUp(int score, int diff) {
    return 'الدرجة $score/100، أعلى بمقدار $diff من الأسبوع الماضي.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'الدرجة $score/100، أقل بمقدار $diff من الأسبوع الماضي.';
  }

  @override
  String weeklySame(int score) {
    return 'الدرجة $score/100، دون تغيير منذ الأسبوع الماضي.';
  }

  @override
  String weeklyScore(int score) {
    return 'الدرجة $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'تطبيقات جديدة: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'تطبيقات محذوفة: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'أذونات مفعّلة: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'متتبعات جديدة: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'هذا الأسبوع: $list.';
  }

  @override
  String get weeklyNone => 'لا تغييرات هذا الأسبوع.';

  @override
  String weeklyRisky(int count) {
    return 'تطبيقات خطرة: $count.';
  }

  @override
  String get reportTitle => 'تقرير الخصوصية من Peekless';

  @override
  String reportScore(int score, String level) {
    return 'الدرجة: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'التطبيقات المفحوصة: $total. خطرة: $risky، متوسطة: $medium، آمنة: $safe';
  }

  @override
  String get reportAttention => 'تحتاج إلى انتباه:';

  @override
  String get reportFooter =>
      'فُحص على هاتفي بواسطة Peekless. لم يُرسَل أي شيء إلى أي مكان.';

  @override
  String get trendTitle => 'الدرجة عبر الزمن';

  @override
  String trendUp(int diff, int days) {
    return 'ارتفعت بمقدار $diff (الأيام المتتبَّعة: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'انخفضت بمقدار $diff (الأيام المتتبَّعة: $days)';
  }

  @override
  String trendSame(int days) {
    return 'لا تغيير (الأيام المتتبَّعة: $days)';
  }

  @override
  String get settingsQuick => 'وصول سريع';

  @override
  String get quickWidget => 'أداة الشاشة الرئيسية';

  @override
  String get quickWidgetBody => 'اعرض درجة خصوصيتك على الشاشة الرئيسية';

  @override
  String get quickTile => 'بلاطة الإعدادات السريعة';

  @override
  String get quickTileBody => 'شاهد درجتك في لوحة الإعدادات السريعة';

  @override
  String get quickManual =>
      'لم يتمكن هاتفك من إضافتها تلقائيًا. أضفها يدويًا: اضغط مطولًا على الشاشة الرئيسية (الأداة) أو عدّل لوحة الإعدادات السريعة (البلاطة).';

  @override
  String get settingsExport => 'تصدير التقرير';

  @override
  String get settingsExportBody => 'احفظ التقرير كملف PDF أو JSON وشاركه';

  @override
  String get exportFailed => 'تعذّر إنشاء التقرير.';

  @override
  String get settingsTrackerList => 'قائمة المتتبعات';

  @override
  String settingsTrackerListBody(int count) {
    return 'اضغط للتحديث. عدد المتتبعات المعروفة: $count. فقط عند الضغط.';
  }

  @override
  String get trackerListUpdating => 'جارٍ تحديث قائمة المتتبعات…';

  @override
  String trackerListUpdated(int count) {
    return 'تم تحديث قائمة المتتبعات. عدد المتتبعات المعروفة: $count.';
  }

  @override
  String get trackerListCurrent => 'قائمة المتتبعات محدّثة بالفعل.';

  @override
  String get trackerListFailed =>
      'تعذّر تحديث قائمة المتتبعات. تحقق من اتصالك.';

  @override
  String get homeTagline => 'اعرف من يتلصص عليك.';

  @override
  String get homeOverviewBody => 'نسبة تطبيقاتك التي يمكنها استخدام كل منها';

  @override
  String get settingsDeep => 'فحص عميق';

  @override
  String get settingsDeepBody =>
      'ابحث أيضًا عن المتتبعات المخفية داخل شيفرة كل تطبيق. الفحص الأول أبطأ. تُتخطى التطبيقات المثبتة مع الهاتف. كل شيء يبقى على هاتفك.';

  @override
  String trackersFromCode(int count) {
    return 'وُجدت داخل شيفرة التطبيق (مُعلَّمة برمز الشيفرة): $count';
  }
}
