// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get navHome => 'হোম';

  @override
  String get navApps => 'অ্যাপ';

  @override
  String get navPermissions => 'অনুমতি';

  @override
  String get navChanges => 'পরিবর্তন';

  @override
  String get navSettings => 'সেটিংস';

  @override
  String get levelRisky => 'ঝুঁকিপূর্ণ';

  @override
  String get levelMedium => 'মাঝারি';

  @override
  String get levelSafe => 'নিরাপদ';

  @override
  String get overallHigh => 'উচ্চ ঝুঁকি';

  @override
  String get overallMedium => 'মাঝারি ঝুঁকি';

  @override
  String get overallLow => 'কম ঝুঁকি';

  @override
  String get cancel => 'বাতিল';

  @override
  String get clear => 'মুছুন';

  @override
  String get back => 'পেছনে';

  @override
  String get later => 'পরে';

  @override
  String get noneFound => 'কিছু পাওয়া যায়নি';

  @override
  String get scanning => 'স্ক্যান করা হচ্ছে...';

  @override
  String get scanFailed => 'স্ক্যান ব্যর্থ হয়েছে';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get couldNotOpenSettings => 'অ্যাপের সেটিংস খোলা যায়নি।';

  @override
  String get homeShare => 'রিপোর্ট শেয়ার করুন';

  @override
  String get homeRescan => 'অ্যাপ আবার স্ক্যান করুন';

  @override
  String homeAppsChecked(int count) {
    return 'এই ফোনে পরীক্ষা করা অ্যাপ: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'গণনা করা অ্যাপ: $counted, বিশ্বস্ত: $trusted';
  }

  @override
  String get homeNeedsAttention => 'মনোযোগ দরকার';

  @override
  String get homeSeeAll => 'সব দেখুন';

  @override
  String get homeAllSafe =>
      'মনোযোগ দেওয়ার মতো কিছু নেই। সব অ্যাপ নিরাপদ মনে হচ্ছে।';

  @override
  String get homeShareFailed => 'রিপোর্ট শেয়ার করা যায়নি।';

  @override
  String get scoreOf100 => '১০০ এর মধ্যে';

  @override
  String scoreSemantics(int score) {
    return 'প্রাইভেসি স্কোর: ১০০ এর মধ্যে $score';
  }

  @override
  String wizardCard(int count) {
    return 'সংবেদনশীল অ্যাক্সেসযুক্ত অ্যাপ দেখুন: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'অ্যাপ: $count, সবচেয়ে ঝুঁকিপূর্ণগুলো আগে';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$total এর মধ্যে $shown দেখানো হচ্ছে';
  }

  @override
  String get appsSearch => 'অ্যাপ খুঁজুন';

  @override
  String get appsNone => 'কোনো অ্যাপ পাওয়া যায়নি';

  @override
  String get chipMine => 'আমার অ্যাপ';

  @override
  String get chipSystem => 'সিস্টেম';

  @override
  String get filterAll => 'সব';

  @override
  String get filterTrackers => 'ট্র্যাকারসহ';

  @override
  String get filterSpecial => 'বিশেষ অ্যাক্সেস';

  @override
  String get filterNotStore => 'স্টোরের বাইরে';

  @override
  String get filterOffline => 'অফলাইন';

  @override
  String get filterTrusted => 'বিশ্বস্ত';

  @override
  String get permSubtitle => 'এই ফোনে কে কী ব্যবহার করতে পারে';

  @override
  String get trackersSubtitle => 'কোন ট্র্যাকার কোন অ্যাপে আছে';

  @override
  String get segTrackers => 'ট্র্যাকার';

  @override
  String get noTrackers => 'কোনো পরিচিত ট্র্যাকার পাওয়া যায়নি।';

  @override
  String get noPerms => 'কোনো সংবেদনশীল অনুমতি পাওয়া যায়নি।';

  @override
  String appsCount(int count) {
    return 'অ্যাপ: $count';
  }

  @override
  String get changesSubtitle => 'নতুন অ্যাপ ও অনুমতির পরিবর্তন';

  @override
  String get clearTitle => 'পরিবর্তনগুলো মুছবেন?';

  @override
  String get clearBody => 'পরিবর্তনের তালিকা এই ফোন থেকে সরিয়ে দেওয়া হবে।';

  @override
  String get changesEmpty =>
      'এখনও কোনো পরিবর্তন নেই। Peekless এখানে নতুন ও সরানো অ্যাপ, নতুন অনুমতি এবং নতুন ট্র্যাকার দেখাবে।';

  @override
  String evInstalled(int score, String level) {
    return 'ইনস্টল হয়েছে। স্কোর: $score ($level)।';
  }

  @override
  String get evRemoved => 'সরানো হয়েছে।';

  @override
  String evAllowed(String label) {
    return 'এখন অনুমোদিত: $label।';
  }

  @override
  String evRevoked(String label) {
    return 'আর অনুমোদিত নয়: $label।';
  }

  @override
  String evTracker(String name) {
    return 'নতুন ট্র্যাকার পাওয়া গেছে: $name।';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: চালু হয়েছে।';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: বন্ধ হয়েছে।';
  }

  @override
  String get checksTitle => 'নিরাপত্তা পরীক্ষা';

  @override
  String get checksIntro =>
      'যেগুলো আবার দেখা উচিত। অ্যাপ দেখতে কোনো পরীক্ষায় ট্যাপ করুন।';

  @override
  String get checkUnusedTitle => 'সংবেদনশীল অ্যাক্সেসযুক্ত অব্যবহৃত অ্যাপ';

  @override
  String get checkDebuggableTitle => 'ডিবাগ বিল্ড';

  @override
  String get checkOfflineTitle => 'অফলাইন অ্যাপ';

  @override
  String get checkAccessibilityDesc =>
      'এই অ্যাপগুলো আপনার স্ক্রিন পড়তে এবং আপনার হয়ে ট্যাপ করতে পারে।';

  @override
  String get checkAdminDesc =>
      'এই অ্যাপগুলো ফোন লক বা মুছে ফেলতে এবং আনইনস্টল আটকাতে পারে।';

  @override
  String get checkNotificationDesc =>
      'এই অ্যাপগুলো কোডসহ আপনার সব নোটিফিকেশন পড়তে পারে।';

  @override
  String checkUnusedDesc(int days) {
    return '$days দিন খোলা হয়নি, কিন্তু এখনও সংবেদনশীল অনুমতি ব্যবহার করতে পারে। সরিয়ে ফেলার কথা ভাবুন।';
  }

  @override
  String get checkNotStoreDesc =>
      'ফাইল বা কম্পিউটার থেকে ইনস্টল করা। আপনার হয়ে কেউ এগুলো যাচাই করেনি।';

  @override
  String get checkDebuggableDesc =>
      'পরীক্ষামূলক বিল্ড, যা কম্পিউটার থেকে পরিদর্শন করা যায়।';

  @override
  String get checkOldDesc =>
      'এই অ্যাপগুলো অ্যান্ড্রয়েডের নতুন প্রাইভেসি সুরক্ষা এড়িয়ে যায়।';

  @override
  String get checkOfflineDesc =>
      'ইন্টারনেটের অনুমতি নেই, তাই অনলাইনে ডেটা পাঠাতে পারে না।';

  @override
  String get usagePromptBody =>
      'ঐচ্ছিক। ব্যবহার অ্যাক্সেস চালু করলে সেই অ্যাপগুলো খুঁজে পাবেন, যেগুলো অনেক দিন খোলেননি কিন্তু এখনও আপনার মাইক্রোফোন, লোকেশন বা কন্টাক্ট ব্যবহার করতে পারে। ডেটা আপনার ফোনের বাইরে যায় না।';

  @override
  String get usagePromptButton => 'ব্যবহার অ্যাক্সেস চালু করুন';

  @override
  String get securityNone =>
      'এই ফোনে কোনো নিরাপত্তা-সংক্রান্ত বিষয় পাওয়া যায়নি।';

  @override
  String securityOffline(int count) {
    return 'সম্পূর্ণ অফলাইনে চলা অ্যাপ: $count';
  }

  @override
  String get fixWizardTitle => 'সমাধান উইজার্ড';

  @override
  String wizardStep(int index, int total) {
    return 'অ্যাপ $index/$total';
  }

  @override
  String get wizardQuestion => 'এই অ্যাপের কি সত্যিই এটি দরকার?';

  @override
  String get wizardHint =>
      '“অ্যাপ সেটিংস খুলুন” ট্যাপ করুন, তারপর অনুমতি-তে যান এবং অ্যাপের যা দরকার নেই তা বন্ধ করুন।';

  @override
  String get openAppSettings => 'অ্যাপ সেটিংস খুলুন';

  @override
  String get trustApp => 'আমি এই অ্যাপকে বিশ্বাস করি';

  @override
  String get nextApp => 'পরের অ্যাপ';

  @override
  String get finish => 'শেষ করুন';

  @override
  String get wizardDone => 'সব দেখা হয়েছে';

  @override
  String get wizardNothing => 'দেখার মতো কিছু নেই';

  @override
  String get wizardNothingBody =>
      'এই মুহূর্তে কোনো অ্যাপের সংবেদনশীল অ্যাক্সেস নেই।';

  @override
  String get wizardRescanBody => 'নতুন স্কোর দেখতে আবার স্ক্যান করুন।';

  @override
  String get rescanFinish => 'আবার স্ক্যান করে শেষ করুন';

  @override
  String get wizardRequested => 'চাওয়া হয়েছে, এখনও অনুমোদিত নয়';

  @override
  String scoreTrackers(int count) {
    return 'পরিচিত ট্র্যাকার: $count';
  }

  @override
  String get scoreDebuggable => 'ডিবাগ বিল্ড';

  @override
  String get scoreOldTarget => 'খুব পুরনো অ্যান্ড্রয়েডের জন্য তৈরি';

  @override
  String unusualFor(String groups) {
    return 'এই ধরনের অ্যাপের জন্য অস্বাভাবিক: $groups';
  }

  @override
  String get noteRequested => 'চাওয়া হয়েছে, অর্ধেক গণনা হয়';

  @override
  String get noteAllowed => 'অনুমোদিত';

  @override
  String noteTrackers(int points, int max) {
    return 'প্রতিটির জন্য $points, সর্বোচ্চ $max';
  }

  @override
  String get noteTurnedOn => 'চালু';

  @override
  String get noteDebuggable => 'কম্পিউটার থেকে পরিদর্শন করা যায়';

  @override
  String noteApi(int apiLevel) {
    return 'API স্তর $apiLevel';
  }

  @override
  String get noteExtra => 'অতিরিক্ত কাটা';

  @override
  String get explainTitle => 'স্কোর কীভাবে কাজ করে';

  @override
  String get explainIntro =>
      'প্রতিটি অ্যাপ ১০০ থেকে শুরু করে। অ্যাপ যা করতে পারে তার ভিত্তিতে পয়েন্ট কাটা হয়।';

  @override
  String get explainStart => 'শুরু';

  @override
  String get explainNothing => 'কিছু কাটা হয়নি';

  @override
  String get explainNothingNote =>
      'কোনো সংবেদনশীল অনুমতি বা পরিচিত ট্র্যাকার নেই';

  @override
  String get explainScore => 'স্কোর';

  @override
  String get explainRules => 'নিয়ম';

  @override
  String get rule1 =>
      'প্রতিটি গ্রুপে শুধু সবচেয়ে গুরুতর অনুমতিটি গণনা হয়। যেমন সঠিক ও আনুমানিক লোকেশন একবারই গণনা হয়।';

  @override
  String get rule2 =>
      'বিশেষ অনুমতি (সব ফাইল, অন্য অ্যাপের ওপরে দেখানো, অ্যাপ ইনস্টল) অ্যাপ শুধু চেয়ে থাকলে অর্ধেক গণনা হয়।';

  @override
  String rule3(int points, int max) {
    return 'প্রতিটি পরিচিত ট্র্যাকার $points পয়েন্ট কাটে, সর্বোচ্চ $max।';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'চালু থাকা বিশেষ অ্যাক্সেস পয়েন্ট কাটে: অ্যাক্সেসিবিলিটি $a, ডিভাইস অ্যাডমিন $b, নোটিফিকেশন অ্যাক্সেস $c।';
  }

  @override
  String rule5(int a, int b) {
    return 'ডিবাগ বিল্ড $a কাটে। অ্যান্ড্রয়েড ৭ বা তার পুরনোর জন্য তৈরি অ্যাপ $b কাটে।';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'কোনো অনুমতি সেই ধরনের অ্যাপের জন্য অস্বাভাবিক হলে (যেমন টর্চলাইটে মাইক্রোফোন), আরও $points পয়েন্ট কাটা হয়, সর্বোচ্চ $maxGroupsটি অনুমতি গ্রুপের জন্য।';
  }

  @override
  String get rule7 =>
      '৭০ বা তার বেশি: নিরাপদ। ৪০ থেকে ৬৯: মাঝারি। ৪০-এর কম: ঝুঁকিপূর্ণ।';

  @override
  String get explainFooter =>
      'স্কোর দেখায় অ্যাপ কী করতে পারে, এখন কী করছে তা নয়।';

  @override
  String get howScore => 'এই স্কোর কীভাবে হিসাব করা হয়?';

  @override
  String summaryTrackers(int count) {
    return 'পরিচিত ট্র্যাকার: $count।';
  }

  @override
  String get summaryNone => 'কোনো সংবেদনশীল অনুমতি বা পরিচিত ট্র্যাকার নেই।';

  @override
  String metaTrackers(int count) {
    return 'ট্র্যাকার: $count';
  }

  @override
  String get metaNone => 'কোনো সংবেদনশীল অনুমতি নেই';

  @override
  String get detailSecurity => 'নিরাপত্তা';

  @override
  String get detailSource => 'উৎস';

  @override
  String get detailInternet => 'ইন্টারনেট';

  @override
  String get detailInternetYes => 'ইন্টারনেট ব্যবহার করতে পারে';

  @override
  String get detailOffline => 'অফলাইন';

  @override
  String get detailOfflineBody =>
      'ইন্টারনেটের অনুমতি নেই, তাই অনলাইনে ডেটা পাঠাতে পারে না';

  @override
  String get detailLastOpened => 'সর্বশেষ খোলা';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String daysSince(int days) {
    return 'শেষ ব্যবহারের পর কেটে গেছে (দিন): $days';
  }

  @override
  String get detailDebuggableBody =>
      'পরীক্ষামূলক বিল্ড, যা কম্পিউটার থেকে পরিদর্শন করা যায়';

  @override
  String detailOldBody(int apiLevel) {
    return 'API স্তর $apiLevel, তাই নতুন প্রাইভেসি সুরক্ষা এড়িয়ে যায়';
  }

  @override
  String get detailTrustBody => 'ঝুঁকিপূর্ণ গণনা ও সতর্কতায় ধরবেন না';

  @override
  String get detailNoPerms => 'এই অ্যাপ কোনো সংবেদনশীল অনুমতি চায় না।';

  @override
  String get chipAllowed => 'অনুমোদিত';

  @override
  String get chipRequested => 'চাওয়া হয়েছে';

  @override
  String get chipNotAllowed => 'অনুমোদিত নয়';

  @override
  String sensitiveNote(String why) {
    return 'সংবেদনশীল: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'পাওয়া ট্র্যাকার: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless দেখায় অ্যাপ কী করতে পারে, এখন কী করছে তা নয়। ট্র্যাকার অ্যাপের ম্যানিফেস্ট থেকে শনাক্ত করা হয়, তাই কিছু বাদ পড়তে পারে।';

  @override
  String get srcBuiltIn => 'আপনার ফোনে বিল্ট-ইন';

  @override
  String get srcUnknown => 'অজানা (ফাইল বা কম্পিউটার থেকে ইনস্টল করা)';

  @override
  String get srcApk => 'আপনার খোলা একটি APK ফাইল';

  @override
  String get srcAdb => 'একটি কম্পিউটার (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'ইনস্টল করেছে: $name';
  }

  @override
  String get accessibilityLabel => 'অ্যাক্সেসিবিলিটি অ্যাক্সেস';

  @override
  String get adminLabel => 'ডিভাইস অ্যাডমিন';

  @override
  String get notificationLabel => 'নোটিফিকেশন অ্যাক্সেস';

  @override
  String get accessibilityWhy =>
      'চালু আছে। স্ক্রিনে যা আছে পড়তে এবং আপনার হয়ে কাজ করতে পারে।';

  @override
  String get adminWhy =>
      'চালু আছে। ফোন লক করতে, মুছে ফেলতে এবং আনইনস্টল আটকাতে পারে।';

  @override
  String get notificationWhy =>
      'চালু আছে। কোডসহ আপনার সব নোটিফিকেশন পড়তে পারে।';

  @override
  String get grpMicrophone => 'মাইক্রোফোন';

  @override
  String get grpCamera => 'ক্যামেরা';

  @override
  String get grpLocation => 'লোকেশন';

  @override
  String get grpContacts => 'কন্টাক্ট';

  @override
  String get grpSms => 'এসএমএস';

  @override
  String get grpCallLog => 'কল লগ';

  @override
  String get grpPhone => 'ফোন';

  @override
  String get grpCalendar => 'ক্যালেন্ডার';

  @override
  String get grpBodySensors => 'বডি সেন্সর';

  @override
  String get grpActivity => 'কার্যকলাপ';

  @override
  String get grpFiles => 'ফাইল';

  @override
  String get grpOverlay => 'ওভারলে';

  @override
  String get grpInstalls => 'ইনস্টল';

  @override
  String get grpAppList => 'অ্যাপের তালিকা';

  @override
  String get lblCoarseLocation => 'আনুমানিক লোকেশন';

  @override
  String get lblFineLocation => 'সঠিক লোকেশন';

  @override
  String get lblBackgroundLocation => 'সব সময় লোকেশন';

  @override
  String get lblAccounts => 'অ্যাকাউন্ট';

  @override
  String get lblReadSms => 'এসএমএস পড়া';

  @override
  String get lblReceiveSms => 'এসএমএস গ্রহণ';

  @override
  String get lblSendSms => 'এসএমএস পাঠানো';

  @override
  String get lblPhoneState => 'ফোনের অবস্থা';

  @override
  String get lblCallPhone => 'কল করা';

  @override
  String get lblActivity => 'শারীরিক কার্যকলাপ';

  @override
  String get lblAllFiles => 'সব ফাইল';

  @override
  String get lblFilesMedia => 'ফাইল ও মিডিয়া';

  @override
  String get lblPhotos => 'ছবি';

  @override
  String get lblVideos => 'ভিডিও';

  @override
  String get lblAudioFiles => 'অডিও ফাইল';

  @override
  String get lblOverlay => 'অন্য অ্যাপের ওপরে দেখানো';

  @override
  String get lblInstall => 'অন্য অ্যাপ ইনস্টল করা';

  @override
  String get lblAppList => 'সব অ্যাপ দেখা';

  @override
  String get whyMic => 'শব্দ রেকর্ড করতে পারে।';

  @override
  String get whyCamera => 'ক্যামেরা ব্যবহার করতে পারে।';

  @override
  String get whyCoarse => 'আপনার আনুমানিক লোকেশন দেখতে পারে।';

  @override
  String get whyFine => 'আপনার সঠিক লোকেশন দেখতে পারে।';

  @override
  String get whyBackground => 'সব সময় আপনার লোকেশন অনুসরণ করতে পারে।';

  @override
  String get whyContacts => 'আপনার কন্টাক্ট পড়তে পারে।';

  @override
  String get whyAccounts => 'ফোনের অ্যাকাউন্টগুলো দেখতে পারে।';

  @override
  String get whyReadSms => 'আপনার এসএমএস পড়তে পারে।';

  @override
  String get whyReceiveSms => 'আপনার এসএমএস গ্রহণ করতে পারে।';

  @override
  String get whySendSms => 'এসএমএস পাঠাতে পারে।';

  @override
  String get whyCallLog => 'আপনার কলের ইতিহাস পড়তে পারে।';

  @override
  String get whyPhoneState => 'আপনার ফোনের অবস্থা দেখতে পারে।';

  @override
  String get whyCallPhone => 'কল করতে পারে।';

  @override
  String get whyCalendar => 'আপনার ক্যালেন্ডার পড়তে পারে।';

  @override
  String get whyBody => 'বডি সেন্সর পড়তে পারে।';

  @override
  String get whyActivity => 'আপনার শারীরিক কার্যকলাপ দেখতে পারে।';

  @override
  String get whyAllFiles => 'ফোনের সব ফাইলে অ্যাক্সেস পেতে পারে।';

  @override
  String get whyFilesMedia => 'ফাইল ও মিডিয়া পড়তে পারে।';

  @override
  String get whyPhotos => 'আপনার ছবি পড়তে পারে।';

  @override
  String get whyVideos => 'আপনার ভিডিও পড়তে পারে।';

  @override
  String get whyAudio => 'আপনার অডিও ফাইল পড়তে পারে।';

  @override
  String get whyOverlay => 'অন্য অ্যাপের ওপরে দেখা দিতে পারে।';

  @override
  String get whyInstall => 'অন্য অ্যাপ ইনস্টল করতে পারে।';

  @override
  String get whyAppList => 'ফোনের সব অ্যাপ দেখতে পারে।';

  @override
  String get settingsAppearance => 'চেহারা';

  @override
  String get settingsTheme => 'থিম';

  @override
  String get settingsThemeBody => 'ডিফল্টভাবে আপনার ফোন অনুসরণ করে';

  @override
  String get themeSystem => 'সিস্টেম';

  @override
  String get themeLight => 'হালকা';

  @override
  String get themeDark => 'গাঢ়';

  @override
  String get settingsScanning => 'স্ক্যানিং';

  @override
  String get settingsAlerts => 'অ্যাপ সতর্কতা';

  @override
  String get settingsAlertsBody =>
      'নতুন অ্যাপ ও নতুন অনুমতির কথা জানায়। প্রায় প্রতি ৬ ঘণ্টায় পরীক্ষা করে।';

  @override
  String get settingsWeekly => 'সাপ্তাহিক সারসংক্ষেপ';

  @override
  String get settingsWeeklyBody =>
      'সপ্তাহে একটি নোটিফিকেশন, যাতে থাকে আপনার স্কোর ও কী বদলেছে';

  @override
  String get settingsUsage => 'ব্যবহার অ্যাক্সেস';

  @override
  String get settingsUsageOn =>
      'চালু আছে। অ্যাপ সর্বশেষ কখন খোলা হয়েছিল তা Peekless দেখতে পারে।';

  @override
  String get settingsUsageOff =>
      'বন্ধ আছে। ঐচ্ছিক। আপনি আর ব্যবহার করেন না এমন অ্যাপ খুঁজে পেতে Peekless-কে সাহায্য করে। আপনার ফোনেই থাকে।';

  @override
  String get settingsSystemApps => 'সিস্টেম অ্যাপ অন্তর্ভুক্ত করুন';

  @override
  String get settingsSystemAppsBody => 'ফোনে বিল্ট-ইন অ্যাপগুলোও স্ক্যান করুন';

  @override
  String get settingsRescan => 'এখনই স্ক্যান করুন';

  @override
  String get settingsRescanBody => 'সব অ্যাপ আবার পরীক্ষা করুন';

  @override
  String get settingsUpdates => 'আপডেট';

  @override
  String get settingsCheckUpdates => 'আপডেট পরীক্ষা করুন';

  @override
  String settingsVersion(String version) {
    return 'সংস্করণ $version · শুধু আপনি ট্যাপ করলে';
  }

  @override
  String get settingsAbout => 'সম্পর্কে';

  @override
  String get settingsPrivacy => 'প্রাইভেসি';

  @override
  String get settingsPrivacyBody => 'সবকিছু আপনার ফোনেই থাকে';

  @override
  String get settingsOpenSource => 'ওপেন সোর্স';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 লাইসেন্স। GitHub-এ কোড দেখুন';

  @override
  String get settingsDeveloped => 'Lumio Apps দ্বারা তৈরি';

  @override
  String get settingsLanguage => 'ভাষা';

  @override
  String get languageSystem => 'ফোনের ভাষা অনুসরণ করুন';

  @override
  String get updChecking => 'আপডেট পরীক্ষা করা হচ্ছে...';

  @override
  String get updLatest => 'আপনার কাছে সর্বশেষ সংস্করণ আছে।';

  @override
  String get updFailed => 'আপডেট পরীক্ষা করা যায়নি। পরে আবার চেষ্টা করুন।';

  @override
  String get updTitle => 'আপডেট পাওয়া যাচ্ছে';

  @override
  String updReady(String version) {
    return 'সংস্করণ $version ইনস্টলের জন্য প্রস্তুত।';
  }

  @override
  String get updDownloadFailed =>
      'ডাউনলোড ব্যর্থ হয়েছে। সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get updInstall => 'ডাউনলোড ও ইনস্টল করুন';

  @override
  String get notifyDenied =>
      'এটি চালু করতে Peekless-কে নোটিফিকেশনের অনুমতি দিন।';

  @override
  String get settingChangeFailed => 'এই সেটিং বদলানো যায়নি।';

  @override
  String get usageOpenFailed => 'ব্যবহার অ্যাক্সেসের সেটিংস খোলা যায়নি।';

  @override
  String alertNewTitle(String name) {
    return 'নতুন অ্যাপ: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'স্কোর $score ($level)। $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name বদলে গেছে';
  }

  @override
  String alertNowHas(String list) {
    return 'এখন আছে: $list।';
  }

  @override
  String alertNowAllowed(String list) {
    return 'এখন অনুমোদিত: $list।';
  }

  @override
  String alertNewTracker(String list) {
    return 'নতুন ট্র্যাকার: $list।';
  }

  @override
  String alertScore(int score, String level) {
    return 'স্কোর $score ($level)।';
  }

  @override
  String get alertMoreTitle => 'আরও পরিবর্তন';

  @override
  String alertMoreBody(int count) {
    return 'আরও পরিবর্তন: $count। দেখতে Peekless খুলুন।';
  }

  @override
  String get weeklyTitle => 'আপনার সাপ্তাহিক Peekless সারসংক্ষেপ';

  @override
  String weeklyUp(int score, int diff) {
    return 'স্কোর $score/১০০, গত সপ্তাহের চেয়ে $diff বেশি।';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'স্কোর $score/১০০, গত সপ্তাহের চেয়ে $diff কম।';
  }

  @override
  String weeklySame(int score) {
    return 'স্কোর $score/১০০, গত সপ্তাহ থেকে কোনো পরিবর্তন নেই।';
  }

  @override
  String weeklyScore(int score) {
    return 'স্কোর $score/১০০।';
  }

  @override
  String weeklyNewApps(int count) {
    return 'নতুন অ্যাপ: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'সরানো অ্যাপ: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'চালু করা অনুমতি: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'নতুন ট্র্যাকার: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'এই সপ্তাহে: $list।';
  }

  @override
  String get weeklyNone => 'এই সপ্তাহে কোনো পরিবর্তন নেই।';

  @override
  String weeklyRisky(int count) {
    return 'ঝুঁকিপূর্ণ অ্যাপ: $count।';
  }

  @override
  String get reportTitle => 'Peekless প্রাইভেসি রিপোর্ট';

  @override
  String reportScore(int score, String level) {
    return 'স্কোর: $score/১০০ ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'পরীক্ষা করা অ্যাপ: $total। ঝুঁকিপূর্ণ: $risky, মাঝারি: $medium, নিরাপদ: $safe';
  }

  @override
  String get reportAttention => 'মনোযোগ দরকার:';

  @override
  String get reportFooter =>
      'আমার ফোনে Peekless দিয়ে পরীক্ষা করা। কোথাও কিছু পাঠানো হয়নি।';

  @override
  String get trendTitle => 'সময়ের সাথে স্কোর';

  @override
  String trendUp(int diff, int days) {
    return '$diff বেড়েছে (ট্র্যাক করা দিন: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff কমেছে (ট্র্যাক করা দিন: $days)';
  }

  @override
  String trendSame(int days) {
    return 'কোনো পরিবর্তন নেই (ট্র্যাক করা দিন: $days)';
  }

  @override
  String get settingsQuick => 'দ্রুত অ্যাক্সেস';

  @override
  String get quickWidget => 'হোম স্ক্রিন উইজেট';

  @override
  String get quickWidgetBody => 'হোম স্ক্রিনে আপনার প্রাইভেসি স্কোর দেখান';

  @override
  String get quickTile => 'কুইক সেটিংস টাইল';

  @override
  String get quickTileBody => 'কুইক সেটিংস প্যানেলে আপনার স্কোর দেখুন';

  @override
  String get quickManual =>
      'আপনার ফোন এটি নিজে থেকে যোগ করতে পারেনি। হাতে যোগ করুন: হোম স্ক্রিন চেপে ধরুন (উইজেট) অথবা কুইক সেটিংস প্যানেল এডিট করুন (টাইল)।';

  @override
  String get settingsExport => 'রিপোর্ট এক্সপোর্ট করুন';

  @override
  String get settingsExportBody =>
      'রিপোর্ট PDF বা JSON ফাইল হিসেবে সংরক্ষণ করে শেয়ার করুন';

  @override
  String get exportFailed => 'রিপোর্ট তৈরি করা যায়নি।';

  @override
  String get settingsTrackerList => 'ট্র্যাকার তালিকা';

  @override
  String settingsTrackerListBody(int count) {
    return 'আপডেট করতে ট্যাপ করুন। $countটি ট্র্যাকার জানা আছে। শুধু আপনি ট্যাপ করলেই।';
  }

  @override
  String get trackerListUpdating => 'ট্র্যাকার তালিকা আপডেট হচ্ছে…';

  @override
  String trackerListUpdated(int count) {
    return 'ট্র্যাকার তালিকা আপডেট হয়েছে। $countটি ট্র্যাকার জানা আছে।';
  }

  @override
  String get trackerListCurrent => 'ট্র্যাকার তালিকা ইতিমধ্যে আপ টু ডেট।';

  @override
  String get trackerListFailed =>
      'ট্র্যাকার তালিকা আপডেট করা যায়নি। আপনার সংযোগ পরীক্ষা করুন।';

  @override
  String get homeTagline => 'দেখুন কে আপনার ওপর নজর রাখছে।';

  @override
  String get homeOverviewBody => 'আপনার কত শতাংশ অ্যাপ এগুলো ব্যবহার করতে পারে';
}
