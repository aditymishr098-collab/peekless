// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get navHome => 'होम';

  @override
  String get navApps => 'ऐप्स';

  @override
  String get navPermissions => 'अनुमतियाँ';

  @override
  String get navChanges => 'बदलाव';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get levelRisky => 'जोखिम भरा';

  @override
  String get levelMedium => 'मध्यम';

  @override
  String get levelSafe => 'सुरक्षित';

  @override
  String get overallHigh => 'ज़्यादा जोखिम';

  @override
  String get overallMedium => 'मध्यम जोखिम';

  @override
  String get overallLow => 'कम जोखिम';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get back => 'वापस';

  @override
  String get later => 'बाद में';

  @override
  String get noneFound => 'कुछ नहीं मिला';

  @override
  String get scanning => 'स्कैन हो रहा है...';

  @override
  String get scanFailed => 'स्कैन नहीं हो सका';

  @override
  String get tryAgain => 'फिर कोशिश करें';

  @override
  String get couldNotOpenSettings => 'ऐप सेटिंग्स नहीं खुल सकीं।';

  @override
  String get homeShare => 'रिपोर्ट शेयर करें';

  @override
  String get homeRescan => 'ऐप्स दोबारा स्कैन करें';

  @override
  String homeAppsChecked(int count) {
    return 'इस फ़ोन पर जाँचे गए ऐप्स: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'गिने गए ऐप्स: $counted, भरोसेमंद: $trusted';
  }

  @override
  String get homeNeedsAttention => 'ध्यान देने लायक';

  @override
  String get homeSeeAll => 'सभी देखें';

  @override
  String get homeAllSafe =>
      'किसी पर ध्यान देने की ज़रूरत नहीं। आपके सभी ऐप्स सुरक्षित दिखते हैं।';

  @override
  String get homeShareFailed => 'रिपोर्ट शेयर नहीं हो सकी।';

  @override
  String get scoreOf100 => '100 में से';

  @override
  String scoreSemantics(int score) {
    return 'गोपनीयता स्कोर 100 में से $score';
  }

  @override
  String wizardCard(int count) {
    return 'संवेदनशील पहुँच वाले ऐप्स देखें: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'ऐप्स: $count, सबसे जोखिम भरे पहले';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$total में से $shown दिख रहे हैं';
  }

  @override
  String get appsSearch => 'ऐप्स खोजें';

  @override
  String get appsNone => 'कोई ऐप नहीं मिला';

  @override
  String get chipMine => 'मेरे ऐप्स';

  @override
  String get chipSystem => 'सिस्टम';

  @override
  String get filterAll => 'सभी';

  @override
  String get filterTrackers => 'ट्रैकर वाले';

  @override
  String get filterSpecial => 'विशेष पहुँच';

  @override
  String get filterNotStore => 'स्टोर से नहीं';

  @override
  String get filterOffline => 'ऑफ़लाइन';

  @override
  String get filterTrusted => 'भरोसेमंद';

  @override
  String get permSubtitle => 'इस फ़ोन पर कौन क्या इस्तेमाल कर सकता है';

  @override
  String get trackersSubtitle => 'कौन-सा ट्रैकर किस ऐप में है';

  @override
  String get segTrackers => 'ट्रैकर';

  @override
  String get noTrackers => 'कोई जाना-पहचाना ट्रैकर नहीं मिला।';

  @override
  String get noPerms => 'कोई संवेदनशील अनुमति नहीं मिली।';

  @override
  String appsCount(int count) {
    return 'ऐप्स: $count';
  }

  @override
  String get changesSubtitle => 'नए ऐप्स और अनुमतियों के बदलाव';

  @override
  String get clearTitle => 'बदलाव साफ़ करें?';

  @override
  String get clearBody => 'बदलावों की सूची इस फ़ोन से हटा दी जाएगी।';

  @override
  String get changesEmpty =>
      'अभी कोई बदलाव नहीं। Peekless यहाँ नए ऐप्स, हटाए गए ऐप्स, नई अनुमतियाँ और नए ट्रैकर दिखाएगा।';

  @override
  String evInstalled(int score, String level) {
    return 'इंस्टॉल हुआ। स्कोर $score ($level)।';
  }

  @override
  String get evRemoved => 'अनइंस्टॉल हुआ।';

  @override
  String evAllowed(String label) {
    return 'अब अनुमति मिली: $label।';
  }

  @override
  String evRevoked(String label) {
    return 'अब अनुमति नहीं: $label।';
  }

  @override
  String evTracker(String name) {
    return 'नया ट्रैकर मिला: $name।';
  }

  @override
  String evSpecialOn(String label) {
    return '$label चालू हुआ।';
  }

  @override
  String evSpecialOff(String label) {
    return '$label बंद हुआ।';
  }

  @override
  String get checksTitle => 'सुरक्षा जाँच';

  @override
  String get checksIntro =>
      'ऐसी बातें जिन पर दोबारा नज़र डालना ठीक रहेगा। ऐप्स देखने के लिए किसी जाँच पर टैप करें।';

  @override
  String get checkUnusedTitle => 'संवेदनशील पहुँच वाले अनइस्तेमाल ऐप्स';

  @override
  String get checkDebuggableTitle => 'डीबग योग्य बिल्ड';

  @override
  String get checkOfflineTitle => 'ऑफ़लाइन ऐप्स';

  @override
  String get checkAccessibilityDesc =>
      'ये ऐप्स आपकी स्क्रीन पढ़ सकते हैं और आपकी जगह टैप कर सकते हैं।';

  @override
  String get checkAdminDesc =>
      'ये ऐप्स फ़ोन को लॉक या वाइप कर सकते हैं और अनइंस्टॉल रोक सकते हैं।';

  @override
  String get checkNotificationDesc =>
      'ये ऐप्स कोड समेत आपके सभी नोटिफ़िकेशन पढ़ सकते हैं।';

  @override
  String checkUnusedDesc(int days) {
    return '$days दिन से नहीं खोले गए, पर संवेदनशील अनुमतियाँ अब भी इस्तेमाल कर सकते हैं। इन्हें हटाने पर विचार करें।';
  }

  @override
  String get checkNotStoreDesc =>
      'फ़ाइल या कंप्यूटर से इंस्टॉल किए गए। इन्हें किसी ने आपके लिए जाँचा नहीं है।';

  @override
  String get checkDebuggableDesc =>
      'टेस्ट वर्शन जिन्हें कंप्यूटर से जाँचा जा सकता है।';

  @override
  String get checkOldDesc =>
      'ये ऐप्स Android की नई गोपनीयता सुरक्षा को छोड़ देते हैं।';

  @override
  String get checkOfflineDesc =>
      'इंटरनेट की अनुमति नहीं है, इसलिए ये ऑनलाइन डेटा नहीं भेज सकते।';

  @override
  String get usagePromptBody =>
      'वैकल्पिक। उपयोग पहुँच चालू करें, ताकि वे ऐप्स मिल सकें जिन्हें आपने लंबे समय से नहीं खोला पर जो अब भी आपका माइक्रोफ़ोन, लोकेशन या संपर्क इस्तेमाल कर सकते हैं। डेटा आपके फ़ोन से बाहर नहीं जाता।';

  @override
  String get usagePromptButton => 'उपयोग पहुँच चालू करें';

  @override
  String get securityNone => 'इस फ़ोन पर कोई सुरक्षा चेतावनी नहीं मिली।';

  @override
  String securityOffline(int count) {
    return 'पूरी तरह ऑफ़लाइन चलने वाले ऐप्स: $count';
  }

  @override
  String get fixWizardTitle => 'सुधार विज़ार्ड';

  @override
  String wizardStep(int index, int total) {
    return 'ऐप $index / $total';
  }

  @override
  String get wizardQuestion => 'क्या इस ऐप को सच में इनकी ज़रूरत है?';

  @override
  String get wizardHint =>
      '“ऐप सेटिंग्स खोलें” पर टैप करें, फिर अनुमतियाँ में जाकर वो बंद करें जो ऐप को नहीं चाहिए।';

  @override
  String get openAppSettings => 'ऐप सेटिंग्स खोलें';

  @override
  String get trustApp => 'मैं इस ऐप पर भरोसा करता हूँ';

  @override
  String get nextApp => 'अगला ऐप';

  @override
  String get finish => 'पूरा करें';

  @override
  String get wizardDone => 'सब देख लिया';

  @override
  String get wizardNothing => 'देखने को कुछ नहीं';

  @override
  String get wizardNothingBody => 'अभी किसी ऐप के पास संवेदनशील पहुँच नहीं है।';

  @override
  String get wizardRescanBody => 'नया स्कोर देखने के लिए दोबारा स्कैन करें।';

  @override
  String get rescanFinish => 'दोबारा स्कैन करें और पूरा करें';

  @override
  String get wizardRequested => 'माँगी गई, अभी अनुमति नहीं';

  @override
  String scoreTrackers(int count) {
    return 'जाने-पहचाने ट्रैकर: $count';
  }

  @override
  String get scoreDebuggable => 'डीबग योग्य बिल्ड';

  @override
  String get scoreOldTarget => 'बहुत पुराने Android के लिए बना';

  @override
  String unusualFor(String groups) {
    return 'इस तरह के ऐप के लिए असामान्य: $groups';
  }

  @override
  String get noteRequested => 'माँगी गई, आधा गिना जाता है';

  @override
  String get noteAllowed => 'अनुमति मिली';

  @override
  String noteTrackers(int points, int max) {
    return 'हर एक के $points अंक, अधिकतम $max';
  }

  @override
  String get noteTurnedOn => 'चालू है';

  @override
  String get noteDebuggable => 'कंप्यूटर से जाँचा जा सकता है';

  @override
  String noteApi(int apiLevel) {
    return 'API स्तर $apiLevel';
  }

  @override
  String get noteExtra => 'अतिरिक्त कटौती';

  @override
  String get explainTitle => 'स्कोर कैसे काम करता है';

  @override
  String get explainIntro =>
      'हर ऐप 100 से शुरू होता है। ऐप जो कर सकता है उसके हिसाब से अंक कटते हैं।';

  @override
  String get explainStart => 'शुरुआत';

  @override
  String get explainNothing => 'कुछ नहीं कटा';

  @override
  String get explainNothingNote =>
      'कोई संवेदनशील अनुमति नहीं और कोई जाना-पहचाना ट्रैकर नहीं';

  @override
  String get explainScore => 'स्कोर';

  @override
  String get explainRules => 'नियम';

  @override
  String get rule1 =>
      'हर समूह की सबसे भारी अनुमति ही गिनी जाती है। जैसे सटीक और अनुमानित लोकेशन एक बार गिने जाते हैं।';

  @override
  String get rule2 =>
      'विशेष अनुमतियाँ (सभी फ़ाइलें, दूसरे ऐप्स पर दिखना, ऐप्स इंस्टॉल करना) सिर्फ़ माँगी हों तो आधी गिनी जाती हैं।';

  @override
  String rule3(int points, int max) {
    return 'हर जाना-पहचाना ट्रैकर $points अंक घटाता है, अधिकतम $max तक।';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'चालू विशेष पहुँच अंक घटाती है: एक्सेसिबिलिटी $a, डिवाइस एडमिन $b, नोटिफ़िकेशन पहुँच $c।';
  }

  @override
  String rule5(int a, int b) {
    return 'डीबग योग्य बिल्ड $a अंक घटाता है। Android 7 या उससे पुराने के लिए बना ऐप $b अंक घटाता है।';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'अगर कोई अनुमति उस तरह के ऐप के लिए असामान्य है (जैसे टॉर्च में माइक्रोफ़ोन), तो $points अतिरिक्त अंक कटते हैं, अधिकतम $maxGroups अनुमति समूहों के लिए।';
  }

  @override
  String get rule7 =>
      '70 या ज़्यादा सुरक्षित है। 40 से 69 मध्यम है। 40 से कम जोखिम भरा है।';

  @override
  String get explainFooter =>
      'स्कोर बताता है कि ऐप क्या कर सकता है, यह नहीं कि वह अभी क्या कर रहा है।';

  @override
  String get howScore => 'यह स्कोर कैसे निकाला जाता है?';

  @override
  String summaryTrackers(int count) {
    return 'जाने-पहचाने ट्रैकर: $count।';
  }

  @override
  String get summaryNone =>
      'कोई संवेदनशील अनुमति नहीं और कोई जाना-पहचाना ट्रैकर नहीं।';

  @override
  String metaTrackers(int count) {
    return 'ट्रैकर: $count';
  }

  @override
  String get metaNone => 'कोई संवेदनशील अनुमति नहीं';

  @override
  String get detailSecurity => 'सुरक्षा';

  @override
  String get detailSource => 'स्रोत';

  @override
  String get detailInternet => 'इंटरनेट';

  @override
  String get detailInternetYes => 'इंटरनेट इस्तेमाल कर सकता है';

  @override
  String get detailOffline => 'ऑफ़लाइन';

  @override
  String get detailOfflineBody =>
      'इंटरनेट की अनुमति नहीं है, इसलिए यह ऑनलाइन डेटा नहीं भेज सकता';

  @override
  String get detailLastOpened => 'आखिरी बार खोला';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String daysSince(int days) {
    return 'आखिरी इस्तेमाल को बीते दिन: $days';
  }

  @override
  String get detailDebuggableBody =>
      'टेस्ट वर्शन जिसे कंप्यूटर से जाँचा जा सकता है';

  @override
  String detailOldBody(int apiLevel) {
    return 'API स्तर $apiLevel, इसलिए नई गोपनीयता सुरक्षा छूट जाती है';
  }

  @override
  String get detailTrustBody => 'इसे जोखिम वाली गिनती और अलर्ट से बाहर रखें';

  @override
  String get detailNoPerms => 'यह ऐप कोई संवेदनशील अनुमति नहीं माँगता।';

  @override
  String get chipAllowed => 'अनुमति है';

  @override
  String get chipRequested => 'माँगी गई';

  @override
  String get chipNotAllowed => 'अनुमति नहीं';

  @override
  String sensitiveNote(String why) {
    return 'संवेदनशील: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'मिले ट्रैकर: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless बताता है कि ऐप क्या कर सकता है, यह नहीं कि वह अभी क्या कर रहा है। ट्रैकर ऐप के मैनिफ़ेस्ट से मिलते हैं, इसलिए कुछ छूट सकते हैं।';

  @override
  String get srcBuiltIn => 'आपके फ़ोन में पहले से';

  @override
  String get srcUnknown => 'अज्ञात (फ़ाइल या कंप्यूटर से इंस्टॉल)';

  @override
  String get srcApk => 'आपकी खोली हुई APK फ़ाइल';

  @override
  String get srcAdb => 'कंप्यूटर (adb)';

  @override
  String srcInstalledBy(String name) {
    return '$name ने इंस्टॉल किया';
  }

  @override
  String get accessibilityLabel => 'एक्सेसिबिलिटी पहुँच';

  @override
  String get adminLabel => 'डिवाइस एडमिन';

  @override
  String get notificationLabel => 'नोटिफ़िकेशन पहुँच';

  @override
  String get accessibilityWhy =>
      'चालू है। यह आपकी स्क्रीन पर जो है उसे पढ़ सकता है और आपकी जगह काम कर सकता है।';

  @override
  String get adminWhy =>
      'चालू है। यह फ़ोन लॉक कर सकता है, वाइप कर सकता है और अनइंस्टॉल रोक सकता है।';

  @override
  String get notificationWhy =>
      'चालू है। यह कोड समेत आपके सभी नोटिफ़िकेशन पढ़ सकता है।';

  @override
  String get grpMicrophone => 'माइक्रोफ़ोन';

  @override
  String get grpCamera => 'कैमरा';

  @override
  String get grpLocation => 'लोकेशन';

  @override
  String get grpContacts => 'संपर्क';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'कॉल लॉग';

  @override
  String get grpPhone => 'फ़ोन';

  @override
  String get grpCalendar => 'कैलेंडर';

  @override
  String get grpBodySensors => 'बॉडी सेंसर';

  @override
  String get grpActivity => 'गतिविधि';

  @override
  String get grpFiles => 'फ़ाइलें';

  @override
  String get grpOverlay => 'ओवरले';

  @override
  String get grpInstalls => 'इंस्टॉल';

  @override
  String get grpAppList => 'ऐप सूची';

  @override
  String get lblCoarseLocation => 'अनुमानित लोकेशन';

  @override
  String get lblFineLocation => 'सटीक लोकेशन';

  @override
  String get lblBackgroundLocation => 'हर समय लोकेशन';

  @override
  String get lblAccounts => 'खाते';

  @override
  String get lblReadSms => 'SMS पढ़ना';

  @override
  String get lblReceiveSms => 'SMS पाना';

  @override
  String get lblSendSms => 'SMS भेजना';

  @override
  String get lblPhoneState => 'फ़ोन की स्थिति';

  @override
  String get lblCallPhone => 'कॉल करना';

  @override
  String get lblActivity => 'शारीरिक गतिविधि';

  @override
  String get lblAllFiles => 'सभी फ़ाइलें';

  @override
  String get lblFilesMedia => 'फ़ाइलें और मीडिया';

  @override
  String get lblPhotos => 'फ़ोटो';

  @override
  String get lblVideos => 'वीडियो';

  @override
  String get lblAudioFiles => 'ऑडियो फ़ाइलें';

  @override
  String get lblOverlay => 'दूसरे ऐप्स के ऊपर दिखना';

  @override
  String get lblInstall => 'दूसरे ऐप्स इंस्टॉल करना';

  @override
  String get lblAppList => 'सभी ऐप्स देखना';

  @override
  String get whyMic => 'ऑडियो रिकॉर्ड कर सकता है।';

  @override
  String get whyCamera => 'कैमरा इस्तेमाल कर सकता है।';

  @override
  String get whyCoarse => 'आपकी अनुमानित लोकेशन देख सकता है।';

  @override
  String get whyFine => 'आपकी सटीक लोकेशन देख सकता है।';

  @override
  String get whyBackground => 'हर समय आपकी लोकेशन ट्रैक कर सकता है।';

  @override
  String get whyContacts => 'आपके संपर्क पढ़ सकता है।';

  @override
  String get whyAccounts => 'आपके फ़ोन के खाते देख सकता है।';

  @override
  String get whyReadSms => 'आपके टेक्स्ट मैसेज पढ़ सकता है।';

  @override
  String get whyReceiveSms => 'आपके टेक्स्ट मैसेज पा सकता है।';

  @override
  String get whySendSms => 'टेक्स्ट मैसेज भेज सकता है।';

  @override
  String get whyCallLog => 'आपकी कॉल हिस्ट्री पढ़ सकता है।';

  @override
  String get whyPhoneState => 'आपके फ़ोन की स्थिति देख सकता है।';

  @override
  String get whyCallPhone => 'फ़ोन कॉल कर सकता है।';

  @override
  String get whyCalendar => 'आपका कैलेंडर पढ़ सकता है।';

  @override
  String get whyBody => 'बॉडी सेंसर पढ़ सकता है।';

  @override
  String get whyActivity => 'आपकी शारीरिक गतिविधि देख सकता है।';

  @override
  String get whyAllFiles => 'आपके फ़ोन की सभी फ़ाइलें खोल सकता है।';

  @override
  String get whyFilesMedia => 'फ़ाइलें और मीडिया पढ़ सकता है।';

  @override
  String get whyPhotos => 'आपकी फ़ोटो पढ़ सकता है।';

  @override
  String get whyVideos => 'आपके वीडियो पढ़ सकता है।';

  @override
  String get whyAudio => 'आपकी ऑडियो फ़ाइलें पढ़ सकता है।';

  @override
  String get whyOverlay => 'दूसरे ऐप्स के ऊपर दिख सकता है।';

  @override
  String get whyInstall => 'दूसरे ऐप्स इंस्टॉल कर सकता है।';

  @override
  String get whyAppList => 'आपके फ़ोन के सभी ऐप्स देख सकता है।';

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsTheme => 'थीम';

  @override
  String get settingsThemeBody => 'डिफ़ॉल्ट रूप से आपके फ़ोन के अनुसार';

  @override
  String get themeSystem => 'सिस्टम';

  @override
  String get themeLight => 'हल्की';

  @override
  String get themeDark => 'गहरी';

  @override
  String get settingsScanning => 'स्कैनिंग';

  @override
  String get settingsAlerts => 'ऐप अलर्ट';

  @override
  String get settingsAlertsBody =>
      'नए ऐप्स और नई अनुमतियों की सूचना दें। लगभग हर 6 घंटे में जाँच।';

  @override
  String get settingsWeekly => 'साप्ताहिक सारांश';

  @override
  String get settingsWeeklyBody =>
      'हफ़्ते में एक सूचना: आपका स्कोर और क्या बदला';

  @override
  String get settingsUsage => 'उपयोग पहुँच';

  @override
  String get settingsUsageOn =>
      'चालू। Peekless देख सकता है कि ऐप्स आखिरी बार कब खुले।';

  @override
  String get settingsUsageOff =>
      'बंद। वैकल्पिक। इससे Peekless वे ऐप्स ढूँढ सकता है जिन्हें आप अब इस्तेमाल नहीं करते। यह आपके फ़ोन में ही रहता है।';

  @override
  String get settingsSystemApps => 'सिस्टम ऐप्स शामिल करें';

  @override
  String get settingsSystemAppsBody =>
      'फ़ोन में पहले से मौजूद ऐप्स भी स्कैन करें';

  @override
  String get settingsRescan => 'अभी दोबारा स्कैन करें';

  @override
  String get settingsRescanBody => 'सभी ऐप्स फिर से जाँचें';

  @override
  String get settingsUpdates => 'अपडेट';

  @override
  String get settingsCheckUpdates => 'अपडेट जाँचें';

  @override
  String settingsVersion(String version) {
    return 'वर्शन $version · सिर्फ़ आपके टैप करने पर';
  }

  @override
  String get settingsAbout => 'जानकारी';

  @override
  String get settingsPrivacy => 'गोपनीयता';

  @override
  String get settingsPrivacyBody => 'सब कुछ आपके फ़ोन में ही रहता है';

  @override
  String get settingsOpenSource => 'ओपन सोर्स';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 लाइसेंस। कोड GitHub पर देखें';

  @override
  String get settingsDeveloped => 'Lumio Apps द्वारा विकसित';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get languageSystem => 'फ़ोन की भाषा के अनुसार';

  @override
  String get updChecking => 'अपडेट जाँचे जा रहे हैं...';

  @override
  String get updLatest => 'आपके पास नवीनतम वर्शन है।';

  @override
  String get updFailed => 'अपडेट नहीं जाँचे जा सके। बाद में फिर कोशिश करें।';

  @override
  String get updTitle => 'अपडेट उपलब्ध है';

  @override
  String updReady(String version) {
    return 'वर्शन $version इंस्टॉल के लिए तैयार है।';
  }

  @override
  String get updDownloadFailed =>
      'डाउनलोड नहीं हो सका। अपना कनेक्शन जाँचकर फिर कोशिश करें।';

  @override
  String get updInstall => 'डाउनलोड और इंस्टॉल करें';

  @override
  String get notifyDenied =>
      'इसे चालू करने के लिए Peekless को सूचनाओं की अनुमति दें।';

  @override
  String get settingChangeFailed => 'यह सेटिंग बदली नहीं जा सकी।';

  @override
  String get usageOpenFailed => 'उपयोग पहुँच की सेटिंग्स नहीं खुल सकीं।';

  @override
  String alertNewTitle(String name) {
    return 'नया ऐप: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'स्कोर $score ($level)। $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name में बदलाव';
  }

  @override
  String alertNowHas(String list) {
    return 'अब मिला: $list।';
  }

  @override
  String alertNowAllowed(String list) {
    return 'अब अनुमति मिली: $list।';
  }

  @override
  String alertNewTracker(String list) {
    return 'नया ट्रैकर: $list।';
  }

  @override
  String alertScore(int score, String level) {
    return 'स्कोर $score ($level)।';
  }

  @override
  String get alertMoreTitle => 'और बदलाव';

  @override
  String alertMoreBody(int count) {
    return 'और बदलाव: $count। देखने के लिए Peekless खोलें।';
  }

  @override
  String get weeklyTitle => 'आपका साप्ताहिक Peekless सारांश';

  @override
  String weeklyUp(int score, int diff) {
    return 'स्कोर $score/100, पिछले हफ़्ते से $diff ऊपर।';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'स्कोर $score/100, पिछले हफ़्ते से $diff नीचे।';
  }

  @override
  String weeklySame(int score) {
    return 'स्कोर $score/100, पिछले हफ़्ते से कोई बदलाव नहीं।';
  }

  @override
  String weeklyScore(int score) {
    return 'स्कोर $score/100।';
  }

  @override
  String weeklyNewApps(int count) {
    return 'नए ऐप्स: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'हटाए गए ऐप्स: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'चालू की गई अनुमतियाँ: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'नए ट्रैकर: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'इस हफ़्ते: $list।';
  }

  @override
  String get weeklyNone => 'इस हफ़्ते कोई बदलाव नहीं।';

  @override
  String weeklyRisky(int count) {
    return 'जोखिम भरे ऐप्स: $count।';
  }

  @override
  String get reportTitle => 'Peekless गोपनीयता रिपोर्ट';

  @override
  String reportScore(int score, String level) {
    return 'स्कोर: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'जाँचे गए ऐप्स: $total। जोखिम भरे: $risky, मध्यम: $medium, सुरक्षित: $safe';
  }

  @override
  String get reportAttention => 'ध्यान देने लायक:';

  @override
  String get reportFooter =>
      'मेरे फ़ोन पर Peekless से जाँचा गया। कुछ भी कहीं नहीं भेजा गया।';

  @override
  String get trendTitle => 'समय के साथ स्कोर';

  @override
  String trendUp(int diff, int days) {
    return '$diff अंक ऊपर (ट्रैक किए गए दिन: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff अंक नीचे (ट्रैक किए गए दिन: $days)';
  }

  @override
  String trendSame(int days) {
    return 'कोई बदलाव नहीं (ट्रैक किए गए दिन: $days)';
  }
}
