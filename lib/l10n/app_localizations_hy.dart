// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get navHome => 'Գլխավոր';

  @override
  String get navApps => 'Հավելվածներ';

  @override
  String get navPermissions => 'Թույլտվություններ';

  @override
  String get navChanges => 'Փոփոխություններ';

  @override
  String get navSettings => 'Կարգավորումներ';

  @override
  String get levelRisky => 'Վտանգավոր';

  @override
  String get levelMedium => 'Միջին';

  @override
  String get levelSafe => 'Անվտանգ';

  @override
  String get overallHigh => 'Բարձր ռիսկ';

  @override
  String get overallMedium => 'Միջին ռիսկ';

  @override
  String get overallLow => 'Ցածր ռիսկ';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get clear => 'Մաքրել';

  @override
  String get back => 'Հետ';

  @override
  String get later => 'Հետո';

  @override
  String get noneFound => 'Ոչինչ չգտնվեց';

  @override
  String get scanning => 'Սկանավորվում է...';

  @override
  String get scanFailed => 'Սկանավորումը չհաջողվեց';

  @override
  String get tryAgain => 'Կրկին փորձել';

  @override
  String get couldNotOpenSettings =>
      'Չհաջողվեց բացել հավելվածի կարգավորումները։';

  @override
  String get homeShare => 'Կիսվել հաշվետվությամբ';

  @override
  String get homeRescan => 'Նորից սկանավորել հավելվածները';

  @override
  String homeAppsChecked(int count) {
    return 'Այս հեռախոսում ստուգված հավելվածներ՝ $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Հաշվարկված հավելվածներ՝ $counted, վստահելի՝ $trusted';
  }

  @override
  String get homeNeedsAttention => 'Ուշադրության կարիք ունեն';

  @override
  String get homeSeeAll => 'Տեսնել բոլորը';

  @override
  String get homeAllSafe =>
      'Ուշադրության կարիք ունեցող ոչինչ չկա։ Բոլոր հավելվածները անվտանգ են թվում։';

  @override
  String get homeShareFailed => 'Չհաջողվեց կիսվել հաշվետվությամբ։';

  @override
  String get scoreOf100 => '100-ից';

  @override
  String scoreSemantics(int score) {
    return 'Գաղտնիության միավոր՝ $score 100-ից';
  }

  @override
  String wizardCard(int count) {
    return 'Ստուգել զգայուն հասանելիությամբ հավելվածները՝ $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Հավելվածներ՝ $count, ամենավտանգավորը՝ առաջինը';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Ցուցադրվում է $shown՝ $total-ից';
  }

  @override
  String get appsSearch => 'Որոնել հավելվածներ';

  @override
  String get appsNone => 'Հավելվածներ չեն գտնվել';

  @override
  String get chipMine => 'Իմ հավելվածները';

  @override
  String get chipSystem => 'Համակարգային';

  @override
  String get filterAll => 'Բոլորը';

  @override
  String get filterTrackers => 'Հետևիչներով';

  @override
  String get filterSpecial => 'Հատուկ հասանելիություն';

  @override
  String get filterNotStore => 'Ոչ խանութից';

  @override
  String get filterOffline => 'Անցանց';

  @override
  String get filterTrusted => 'Վստահելի';

  @override
  String get permSubtitle => 'Ով ինչ կարող է օգտագործել այս հեռախոսում';

  @override
  String get trackersSubtitle => 'Որ հետևիչը որ հավելվածներում է';

  @override
  String get segTrackers => 'Հետևիչներ';

  @override
  String get noTrackers => 'Հայտնի հետևիչներ չեն գտնվել։';

  @override
  String get noPerms => 'Զգայուն թույլտվություններ չեն գտնվել։';

  @override
  String appsCount(int count) {
    return 'Հավելվածներ՝ $count';
  }

  @override
  String get changesSubtitle =>
      'Նոր հավելվածներ և թույլտվությունների փոփոխություններ';

  @override
  String get clearTitle => 'Մաքրե՞լ փոփոխությունները';

  @override
  String get clearBody => 'Փոփոխությունների ցանկը կհեռացվի այս հեռախոսից։';

  @override
  String get changesEmpty =>
      'Դեռ փոփոխություններ չկան։ Peekless-ն այստեղ կցուցադրի նոր և ջնջված հավելվածները, նոր թույլտվությունները և նոր հետևիչները։';

  @override
  String evInstalled(int score, String level) {
    return 'Տեղադրվեց։ Միավոր՝ $score ($level)։';
  }

  @override
  String get evRemoved => 'Ջնջվեց։';

  @override
  String evAllowed(String label) {
    return 'Այժմ թույլատրված է՝ $label։';
  }

  @override
  String evRevoked(String label) {
    return 'Այլևս թույլատրված չէ՝ $label։';
  }

  @override
  String evTracker(String name) {
    return 'Գտնվեց նոր հետևիչ՝ $name։';
  }

  @override
  String evSpecialOn(String label) {
    return '$label՝ միացվեց։';
  }

  @override
  String evSpecialOff(String label) {
    return '$label՝ անջատվեց։';
  }

  @override
  String get checksTitle => 'Անվտանգության ստուգումներ';

  @override
  String get checksIntro =>
      'Բաներ, որոնց արժե ևս մեկ անգամ նայել։ Հպեք ստուգմանը՝ հավելվածները տեսնելու համար։';

  @override
  String get checkUnusedTitle =>
      'Չօգտագործվող հավելվածներ զգայուն հասանելիությամբ';

  @override
  String get checkDebuggableTitle => 'Վրիպազերծման տարբերակներ';

  @override
  String get checkOfflineTitle => 'Անցանց հավելվածներ';

  @override
  String get checkAccessibilityDesc =>
      'Այս հավելվածները կարող են կարդալ ձեր էկրանը և հպել ձեր փոխարեն։';

  @override
  String get checkAdminDesc =>
      'Այս հավելվածները կարող են արգելափակել կամ մաքրել հեռախոսը և խոչընդոտել ջնջմանը։';

  @override
  String get checkNotificationDesc =>
      'Այս հավելվածները կարող են կարդալ բոլոր ծանուցումները՝ կոդերով հանդերձ։';

  @override
  String checkUnusedDesc(int days) {
    return 'Չեն բացվել $days օր, բայց դեռ կարող են օգտագործել զգայուն թույլտվություններ։ Մտածեք դրանք ջնջելու մասին։';
  }

  @override
  String get checkNotStoreDesc =>
      'Տեղադրված են ֆայլից կամ համակարգչից։ Ոչ ոք դրանք ձեզ համար չի ստուգել։';

  @override
  String get checkDebuggableDesc =>
      'Փորձնական տարբերակներ, որոնք կարելի է ստուգել համակարգչից։';

  @override
  String get checkOldDesc =>
      'Այս հավելվածները շրջանցում են Android-ի նոր գաղտնիության պաշտպանությունը։';

  @override
  String get checkOfflineDesc =>
      'Ինտերնետի թույլտվություն չկա, ուստի չեն կարող տվյալներ ուղարկել առցանց։';

  @override
  String get usagePromptBody =>
      'Ըստ ցանկության։ Միացրեք օգտագործման հասանելիությունը՝ գտնելու համար հավելվածներ, որոնք վաղուց չեք բացել, բայց դեռ կարող են օգտագործել ձեր խոսափողը, գտնվելու վայրը կամ կոնտակտները։ Տվյալները չեն լքում ձեր հեռախոսը։';

  @override
  String get usagePromptButton => 'Միացնել օգտագործման հասանելիությունը';

  @override
  String get securityNone =>
      'Այս հեռախոսում անվտանգության նշումներ չեն գտնվել։';

  @override
  String securityOffline(int count) {
    return 'Լիովին անցանց աշխատող հավելվածներ՝ $count';
  }

  @override
  String get fixWizardTitle => 'Ուղղման օգնական';

  @override
  String wizardStep(int index, int total) {
    return 'Հավելված $index՝ $total-ից';
  }

  @override
  String get wizardQuestion => 'Այս հավելվածին իսկապե՞ս պետք են սրանք։';

  @override
  String get wizardHint =>
      'Հպեք «Բացել հավելվածի կարգավորումները», ապա՝ Թույլտվություններ, և անջատեք այն, ինչ հավելվածին պետք չէ։';

  @override
  String get openAppSettings => 'Բացել հավելվածի կարգավորումները';

  @override
  String get trustApp => 'Ես վստահում եմ այս հավելվածին';

  @override
  String get nextApp => 'Հաջորդ հավելվածը';

  @override
  String get finish => 'Ավարտել';

  @override
  String get wizardDone => 'Ամեն ինչ դիտվեց';

  @override
  String get wizardNothing => 'Դիտելու ոչինչ չկա';

  @override
  String get wizardNothingBody =>
      'Այս պահին ոչ մի հավելված զգայուն հասանելիություն չունի։';

  @override
  String get wizardRescanBody =>
      'Նորից սկանավորեք՝ նոր միավորը տեսնելու համար։';

  @override
  String get rescanFinish => 'Նորից սկանավորել և ավարտել';

  @override
  String get wizardRequested => 'պահանջված է, դեռ չի թույլատրվել';

  @override
  String scoreTrackers(int count) {
    return 'Հայտնի հետևիչներ՝ $count';
  }

  @override
  String get scoreDebuggable => 'Վրիպազերծման տարբերակ';

  @override
  String get scoreOldTarget => 'Ստեղծված է շատ հին Android-ի համար';

  @override
  String unusualFor(String groups) {
    return 'Անսովոր է այս տեսակի հավելվածի համար՝ $groups';
  }

  @override
  String get noteRequested => 'պահանջված է, հաշվվում է կեսը';

  @override
  String get noteAllowed => 'թույլատրված է';

  @override
  String noteTrackers(int points, int max) {
    return 'յուրաքանչյուրը $points միավոր, առավելագույնը $max';
  }

  @override
  String get noteTurnedOn => 'միացված է';

  @override
  String get noteDebuggable => 'կարելի է ստուգել համակարգչից';

  @override
  String noteApi(int apiLevel) {
    return 'API մակարդակ $apiLevel';
  }

  @override
  String get noteExtra => 'լրացուցիչ նվազեցում';

  @override
  String get explainTitle => 'Ինչպես է աշխատում միավորը';

  @override
  String get explainIntro =>
      'Յուրաքանչյուր հավելված սկսում է 100-ից։ Միավորները նվազում են ըստ այն բանի, թե ինչ կարող է անել հավելվածը։';

  @override
  String get explainStart => 'Սկիզբ';

  @override
  String get explainNothing => 'Ոչինչ չի նվազել';

  @override
  String get explainNothingNote =>
      'Զգայուն թույլտվություններ և հայտնի հետևիչներ չկան';

  @override
  String get explainScore => 'Միավոր';

  @override
  String get explainRules => 'Կանոնները';

  @override
  String get rule1 =>
      'Յուրաքանչյուր խմբում հաշվվում է միայն ամենածանր թույլտվությունը։ Օրինակ՝ ճշգրիտ և մոտավոր գտնվելու վայրը հաշվվում են մեկ անգամ։';

  @override
  String get rule2 =>
      'Հատուկ թույլտվությունները (բոլոր ֆայլերը, այլ հավելվածների վրա ցուցադրումը, հավելվածների տեղադրումը) հաշվվում են կեսը, եթե հավելվածը միայն պահանջել է դրանք։';

  @override
  String rule3(int points, int max) {
    return 'Յուրաքանչյուր հայտնի հետևիչ նվազեցնում է $points միավոր, առավելագույնը $max։';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Միացված հատուկ հասանելիությունը նվազեցնում է միավորը՝ հատուկ հնարավորություններ $a, սարքի ադմինիստրատոր $b, ծանուցումների հասանելիություն $c։';
  }

  @override
  String rule5(int a, int b) {
    return 'Վրիպազերծման տարբերակը նվազեցնում է $a միավոր։ Android 7-ի կամ ավելի հինի համար ստեղծված հավելվածը նվազեցնում է $b միավոր։';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Եթե թույլտվությունը անսովոր է այդ տեսակի հավելվածի համար (օրինակ՝ խոսափող լապտերում), հանվում է $points լրացուցիչ միավոր՝ առավելագույնը $maxGroups թույլտվության խմբի համար։';
  }

  @override
  String get rule7 =>
      '70 և ավելին՝ Անվտանգ։ 40-ից 69՝ Միջին։ 40-ից ցածր՝ Վտանգավոր։';

  @override
  String get explainFooter =>
      'Միավորը ցույց է տալիս, թե ինչ կարող է անել հավելվածը, այլ ոչ թե ինչ է անում հիմա։';

  @override
  String get howScore => 'Ինչպե՞ս է հաշվարկվում այս միավորը։';

  @override
  String summaryTrackers(int count) {
    return 'Հայտնի հետևիչներ՝ $count։';
  }

  @override
  String get summaryNone =>
      'Զգայուն թույլտվություններ և հայտնի հետևիչներ չկան։';

  @override
  String metaTrackers(int count) {
    return 'Հետևիչներ՝ $count';
  }

  @override
  String get metaNone => 'Զգայուն թույլտվություններ չկան';

  @override
  String get detailSecurity => 'Անվտանգություն';

  @override
  String get detailSource => 'Աղբյուր';

  @override
  String get detailInternet => 'Ինտերնետ';

  @override
  String get detailInternetYes => 'Կարող է օգտագործել ինտերնետը';

  @override
  String get detailOffline => 'Անցանց';

  @override
  String get detailOfflineBody =>
      'Ինտերնետի թույլտվություն չկա, ուստի չի կարող տվյալներ ուղարկել առցանց';

  @override
  String get detailLastOpened => 'Վերջին բացումը';

  @override
  String get today => 'Այսօր';

  @override
  String get yesterday => 'Երեկ';

  @override
  String daysSince(int days) {
    return 'Վերջին օգտագործումից անցած օրեր՝ $days';
  }

  @override
  String get detailDebuggableBody =>
      'Փորձնական տարբերակ, որը կարելի է ստուգել համակարգչից';

  @override
  String detailOldBody(int apiLevel) {
    return 'API մակարդակ $apiLevel, ուստի նոր գաղտնիության պաշտպանությունը շրջանցվում է';
  }

  @override
  String get detailTrustBody => 'Չհաշվել Վտանգավորների թվում և ծանուցումներում';

  @override
  String get detailNoPerms =>
      'Այս հավելվածը զգայուն թույլտվություններ չի պահանջում։';

  @override
  String get chipAllowed => 'Թույլատրված';

  @override
  String get chipRequested => 'Պահանջված';

  @override
  String get chipNotAllowed => 'Չթույլատրված';

  @override
  String sensitiveNote(String why) {
    return 'Զգայուն՝ $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Գտնված հետևիչներ՝ $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless-ը ցույց է տալիս, թե ինչ կարող է անել հավելվածը, այլ ոչ թե ինչ է անում հիմա։ Հետևիչները գտնվում են հավելվածի մանիֆեստից, ուստի ոմանք կարող են բաց թողնվել։';

  @override
  String get srcBuiltIn => 'Ներկառուցված է ձեր հեռախոսում';

  @override
  String get srcUnknown => 'Անհայտ (տեղադրված է ֆայլից կամ համակարգչից)';

  @override
  String get srcApk => 'Ձեր բացած APK ֆայլ';

  @override
  String get srcAdb => 'Համակարգիչ (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Տեղադրել է՝ $name';
  }

  @override
  String get accessibilityLabel => 'Հատուկ հնարավորությունների հասանելիություն';

  @override
  String get adminLabel => 'Սարքի ադմինիստրատոր';

  @override
  String get notificationLabel => 'Ծանուցումների հասանելիություն';

  @override
  String get accessibilityWhy =>
      'Միացված է։ Կարող է կարդալ ձեր էկրանին եղածը և գործել ձեր փոխարեն։';

  @override
  String get adminWhy =>
      'Միացված է։ Կարող է արգելափակել հեռախոսը, մաքրել այն և խոչընդոտել ջնջմանը։';

  @override
  String get notificationWhy =>
      'Միացված է։ Կարող է կարդալ բոլոր ծանուցումները՝ կոդերով հանդերձ։';

  @override
  String get grpMicrophone => 'Խոսափող';

  @override
  String get grpCamera => 'Տեսախցիկ';

  @override
  String get grpLocation => 'Գտնվելու վայր';

  @override
  String get grpContacts => 'Կոնտակտներ';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Զանգերի մատյան';

  @override
  String get grpPhone => 'Հեռախոս';

  @override
  String get grpCalendar => 'Օրացույց';

  @override
  String get grpBodySensors => 'Մարմնի սենսորներ';

  @override
  String get grpActivity => 'Ակտիվություն';

  @override
  String get grpFiles => 'Ֆայլեր';

  @override
  String get grpOverlay => 'Վերադրում';

  @override
  String get grpInstalls => 'Տեղադրումներ';

  @override
  String get grpAppList => 'Հավելվածների ցանկ';

  @override
  String get lblCoarseLocation => 'Մոտավոր գտնվելու վայր';

  @override
  String get lblFineLocation => 'Ճշգրիտ գտնվելու վայր';

  @override
  String get lblBackgroundLocation => 'Գտնվելու վայրը անընդհատ';

  @override
  String get lblAccounts => 'Հաշիվներ';

  @override
  String get lblReadSms => 'SMS կարդալ';

  @override
  String get lblReceiveSms => 'SMS ստանալ';

  @override
  String get lblSendSms => 'SMS ուղարկել';

  @override
  String get lblPhoneState => 'Հեռախոսի վիճակ';

  @override
  String get lblCallPhone => 'Զանգեր կատարել';

  @override
  String get lblActivity => 'Ֆիզիկական ակտիվություն';

  @override
  String get lblAllFiles => 'Բոլոր ֆայլերը';

  @override
  String get lblFilesMedia => 'Ֆայլեր և մեդիա';

  @override
  String get lblPhotos => 'Լուսանկարներ';

  @override
  String get lblVideos => 'Տեսանյութեր';

  @override
  String get lblAudioFiles => 'Աուդիո ֆայլեր';

  @override
  String get lblOverlay => 'Ցուցադրվել այլ հավելվածների վրա';

  @override
  String get lblInstall => 'Տեղադրել այլ հավելվածներ';

  @override
  String get lblAppList => 'Տեսնել բոլոր հավելվածները';

  @override
  String get whyMic => 'Կարող է ձայն ձայնագրել։';

  @override
  String get whyCamera => 'Կարող է օգտագործել տեսախցիկը։';

  @override
  String get whyCoarse => 'Կարող է տեսնել ձեր մոտավոր գտնվելու վայրը։';

  @override
  String get whyFine => 'Կարող է տեսնել ձեր ճշգրիտ գտնվելու վայրը։';

  @override
  String get whyBackground => 'Կարող է անընդհատ հետևել ձեր գտնվելու վայրին։';

  @override
  String get whyContacts => 'Կարող է կարդալ ձեր կոնտակտները։';

  @override
  String get whyAccounts => 'Կարող է տեսնել հեռախոսի հաշիվները։';

  @override
  String get whyReadSms => 'Կարող է կարդալ ձեր SMS-ները։';

  @override
  String get whyReceiveSms => 'Կարող է ստանալ ձեր SMS-ները։';

  @override
  String get whySendSms => 'Կարող է SMS ուղարկել։';

  @override
  String get whyCallLog => 'Կարող է կարդալ ձեր զանգերի պատմությունը։';

  @override
  String get whyPhoneState => 'Կարող է տեսնել ձեր հեռախոսի վիճակը։';

  @override
  String get whyCallPhone => 'Կարող է զանգեր կատարել։';

  @override
  String get whyCalendar => 'Կարող է կարդալ ձեր օրացույցը։';

  @override
  String get whyBody => 'Կարող է կարդալ մարմնի սենսորները։';

  @override
  String get whyActivity => 'Կարող է տեսնել ձեր ֆիզիկական ակտիվությունը։';

  @override
  String get whyAllFiles => 'Կարող է մուտք ունենալ հեռախոսի բոլոր ֆայլերին։';

  @override
  String get whyFilesMedia => 'Կարող է կարդալ ֆայլեր և մեդիա։';

  @override
  String get whyPhotos => 'Կարող է կարդալ ձեր լուսանկարները։';

  @override
  String get whyVideos => 'Կարող է կարդալ ձեր տեսանյութերը։';

  @override
  String get whyAudio => 'Կարող է կարդալ ձեր աուդիո ֆայլերը։';

  @override
  String get whyOverlay => 'Կարող է ցուցադրվել այլ հավելվածների վրա։';

  @override
  String get whyInstall => 'Կարող է տեղադրել այլ հավելվածներ։';

  @override
  String get whyAppList => 'Կարող է տեսնել հեռախոսի բոլոր հավելվածները։';

  @override
  String get settingsAppearance => 'Արտաքին տեսք';

  @override
  String get settingsTheme => 'Թեմա';

  @override
  String get settingsThemeBody => 'Լռելյայն հետևում է ձեր հեռախոսին';

  @override
  String get themeSystem => 'Համակարգային';

  @override
  String get themeLight => 'Լուսավոր';

  @override
  String get themeDark => 'Մուգ';

  @override
  String get settingsScanning => 'Սկանավորում';

  @override
  String get settingsAlerts => 'Հավելվածների ծանուցումներ';

  @override
  String get settingsAlertsBody =>
      'Ծանուցել նոր հավելվածների և նոր թույլտվությունների մասին։ Ստուգում է մոտ յուրաքանչյուր 6 ժամը մեկ։';

  @override
  String get settingsWeekly => 'Շաբաթական ամփոփում';

  @override
  String get settingsWeeklyBody =>
      'Շաբաթը մեկ ծանուցում՝ ձեր միավորը և ինչ է փոխվել';

  @override
  String get settingsUsage => 'Օգտագործման հասանելիություն';

  @override
  String get settingsUsageOn =>
      'Միացված է։ Peekless-ը կարող է տեսնել, թե երբ են հավելվածները վերջին անգամ բացվել։';

  @override
  String get settingsUsageOff =>
      'Անջատված է։ Ըստ ցանկության։ Թույլ է տալիս Peekless-ին գտնել հավելվածներ, որոնք այլևս չեք օգտագործում։ Մնում է ձեր հեռախոսում։';

  @override
  String get settingsSystemApps => 'Ներառել համակարգային հավելվածները';

  @override
  String get settingsSystemAppsBody =>
      'Սկանավորել նաև հեռախոսում ներկառուցված հավելվածները';

  @override
  String get settingsRescan => 'Սկանավորել հիմա';

  @override
  String get settingsRescanBody => 'Նորից ստուգել բոլոր հավելվածները';

  @override
  String get settingsUpdates => 'Թարմացումներ';

  @override
  String get settingsCheckUpdates => 'Ստուգել թարմացումները';

  @override
  String settingsVersion(String version) {
    return 'Տարբերակ $version · միայն երբ հպեք';
  }

  @override
  String get settingsAbout => 'Մասին';

  @override
  String get settingsPrivacy => 'Գաղտնիություն';

  @override
  String get settingsPrivacyBody => 'Ամեն ինչ մնում է ձեր հեռախոսում';

  @override
  String get settingsOpenSource => 'Բաց կոդ';

  @override
  String get settingsOpenSourceBody =>
      'GPL-3.0 լիցենզիա։ Տեսեք կոդը GitHub-ում';

  @override
  String get settingsDeveloped => 'Մշակված է Lumio Apps-ի կողմից';

  @override
  String get settingsLanguage => 'Լեզու';

  @override
  String get languageSystem => 'Հետևել հեռախոսի լեզվին';

  @override
  String get updChecking => 'Թարմացումները ստուգվում են...';

  @override
  String get updLatest => 'Դուք ունեք վերջին տարբերակը։';

  @override
  String get updFailed => 'Չհաջողվեց ստուգել թարմացումները։ Փորձեք ավելի ուշ։';

  @override
  String get updTitle => 'Հասանելի է թարմացում';

  @override
  String updReady(String version) {
    return 'Տարբերակ $version-ը պատրաստ է տեղադրման։';
  }

  @override
  String get updDownloadFailed =>
      'Ներբեռնումը չհաջողվեց։ Ստուգեք կապը և փորձեք կրկին։';

  @override
  String get updInstall => 'Ներբեռնել և տեղադրել';

  @override
  String get notifyDenied =>
      'Թույլ տվեք Peekless-ին ծանուցումներ՝ սա միացնելու համար։';

  @override
  String get settingChangeFailed => 'Չհաջողվեց փոխել այս կարգավորումը։';

  @override
  String get usageOpenFailed =>
      'Չհաջողվեց բացել օգտագործման հասանելիության կարգավորումները։';

  @override
  String alertNewTitle(String name) {
    return 'Նոր հավելված՝ $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Միավոր $score ($level)։ $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name-ը փոխվել է';
  }

  @override
  String alertNowHas(String list) {
    return 'Այժմ ունի՝ $list։';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Այժմ թույլատրված է՝ $list։';
  }

  @override
  String alertNewTracker(String list) {
    return 'Նոր հետևիչ՝ $list։';
  }

  @override
  String alertScore(int score, String level) {
    return 'Միավոր $score ($level)։';
  }

  @override
  String get alertMoreTitle => 'Ավելի շատ փոփոխություններ';

  @override
  String alertMoreBody(int count) {
    return 'Ավելի շատ փոփոխություններ՝ $count։ Բացեք Peekless-ը՝ դրանք տեսնելու համար։';
  }

  @override
  String get weeklyTitle => 'Ձեր շաբաթական Peekless ամփոփումը';

  @override
  String weeklyUp(int score, int diff) {
    return 'Միավոր $score/100, անցյալ շաբաթվա համեմատ՝ $diff-ով ավելի։';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Միավոր $score/100, անցյալ շաբաթվա համեմատ՝ $diff-ով պակաս։';
  }

  @override
  String weeklySame(int score) {
    return 'Միավոր $score/100, անցյալ շաբաթվա համեմատ փոփոխություն չկա։';
  }

  @override
  String weeklyScore(int score) {
    return 'Միավոր $score/100։';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Նոր հավելվածներ՝ $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Ջնջված հավելվածներ՝ $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Միացված թույլտվություններ՝ $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Նոր հետևիչներ՝ $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Այս շաբաթ՝ $list։';
  }

  @override
  String get weeklyNone => 'Այս շաբաթ փոփոխություններ չկան։';

  @override
  String weeklyRisky(int count) {
    return 'Վտանգավոր հավելվածներ՝ $count։';
  }

  @override
  String get reportTitle => 'Peekless գաղտնիության հաշվետվություն';

  @override
  String reportScore(int score, String level) {
    return 'Միավոր՝ $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Ստուգված հավելվածներ՝ $total։ Վտանգավոր՝ $risky, Միջին՝ $medium, Անվտանգ՝ $safe';
  }

  @override
  String get reportAttention => 'Ուշադրության կարիք ունեն՝';

  @override
  String get reportFooter =>
      'Ստուգվել է իմ հեռախոսում Peekless-ով։ Ոչինչ ոչ մի տեղ չի ուղարկվել։';

  @override
  String get trendTitle => 'Միավորը ժամանակի ընթացքում';

  @override
  String trendUp(int diff, int days) {
    return 'Աճ $diff միավորով (հետևված օրեր՝ $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Նվազում $diff միավորով (հետևված օրեր՝ $days)';
  }

  @override
  String trendSame(int days) {
    return 'Փոփոխություն չկա (հետևված օրեր՝ $days)';
  }

  @override
  String get settingsQuick => 'Արագ հասանելիություն';

  @override
  String get quickWidget => 'Գլխավոր էկրանի վիջեթ';

  @override
  String get quickWidgetBody =>
      'Ցույց տալ գաղտնիության միավորը գլխավոր էկրանին';

  @override
  String get quickTile => 'Արագ կարգավորումների սալիկ';

  @override
  String get quickTileBody =>
      'Տեսեք ձեր միավորը արագ կարգավորումների վահանակում';

  @override
  String get quickManual =>
      'Ձեր հեռախոսը չկարողացավ դա ավտոմատ ավելացնել։ Ավելացրեք ձեռքով՝ երկար սեղմեք գլխավոր էկրանին (վիջեթ) կամ խմբագրեք արագ կարգավորումների վահանակը (սալիկ)։';

  @override
  String get settingsExport => 'Արտահանել հաշվետվությունը';

  @override
  String get settingsExportBody =>
      'Պահեք հաշվետվությունը PDF կամ JSON ֆայլով և կիսվեք';

  @override
  String get exportFailed => 'Հաշվետվությունը չհաջողվեց ստեղծել։';

  @override
  String get settingsTrackerList => 'Հետագծողների ցանկ';

  @override
  String settingsTrackerListBody(int count) {
    return 'Սեղմեք թարմացնելու համար։ Հայտնի է $count հետագծող։ Միայն ձեր սեղմելիս։';
  }

  @override
  String get trackerListUpdating => 'Հետագծողների ցանկը թարմացվում է…';

  @override
  String trackerListUpdated(int count) {
    return 'Հետագծողների ցանկը թարմացվեց։ Հայտնի է $count հետագծող։';
  }

  @override
  String get trackerListCurrent => 'Հետագծողների ցանկն արդեն թարմ է։';

  @override
  String get trackerListFailed =>
      'Չհաջողվեց թարմացնել հետագծողների ցանկը։ Ստուգեք կապը։';

  @override
  String get homeTagline => 'Տեսեք՝ ով է ձեզ հետևում։';

  @override
  String get homeOverviewBody =>
      'Ձեր հավելվածների ո՞ր մասը կարող է օգտագործել յուրաքանչյուրը';

  @override
  String get settingsDeep => 'Խորը սկանավորում';

  @override
  String get settingsDeepBody =>
      'Նաև փնտրել թաքնված հետագծողներ յուրաքանչյուր հավելվածի կոդի ներսում։ Առաջին սկանավորումը ավելի դանդաղ է։ Հեռախոսի հետ եկած հավելվածները բաց են թողնվում։ Ամեն ինչ մնում է ձեր հեռախոսում։';

  @override
  String trackersFromCode(int count) {
    return 'Գտնվել է հավելվածի կոդի ներսում (նշված կոդի պատկերակով)՝ $count';
  }
}
