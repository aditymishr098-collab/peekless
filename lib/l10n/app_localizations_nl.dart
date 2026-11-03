// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get navHome => 'Start';

  @override
  String get navApps => 'Apps';

  @override
  String get navPermissions => 'Rechten';

  @override
  String get navChanges => 'Wijzigingen';

  @override
  String get navSettings => 'Instellingen';

  @override
  String get levelRisky => 'Riskant';

  @override
  String get levelMedium => 'Gemiddeld';

  @override
  String get levelSafe => 'Veilig';

  @override
  String get overallHigh => 'Hoog risico';

  @override
  String get overallMedium => 'Gemiddeld risico';

  @override
  String get overallLow => 'Laag risico';

  @override
  String get cancel => 'Annuleren';

  @override
  String get clear => 'Wissen';

  @override
  String get back => 'Terug';

  @override
  String get later => 'Later';

  @override
  String get noneFound => 'Niets gevonden';

  @override
  String get scanning => 'Scannen...';

  @override
  String get scanFailed => 'Scannen mislukt';

  @override
  String get tryAgain => 'Opnieuw proberen';

  @override
  String get couldNotOpenSettings => 'Kan de app-instellingen niet openen.';

  @override
  String get homeShare => 'Rapport delen';

  @override
  String get homeRescan => 'Apps opnieuw scannen';

  @override
  String homeAppsChecked(int count) {
    return 'Gecontroleerde apps op deze telefoon: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Meegetelde apps: $counted, vertrouwd: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Vraagt aandacht';

  @override
  String get homeSeeAll => 'Alles bekijken';

  @override
  String get homeAllSafe => 'Niets vraagt aandacht. Alle apps lijken veilig.';

  @override
  String get homeShareFailed => 'Kan het rapport niet delen.';

  @override
  String get scoreOf100 => 'van 100';

  @override
  String scoreSemantics(int score) {
    return 'Privacyscore: $score van 100';
  }

  @override
  String wizardCard(int count) {
    return 'Bekijk apps met gevoelige toegang: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Apps: $count, de riskantste eerst';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$shown van $total weergegeven';
  }

  @override
  String get appsSearch => 'Apps zoeken';

  @override
  String get appsNone => 'Geen apps gevonden';

  @override
  String get chipMine => 'Mijn apps';

  @override
  String get chipSystem => 'Systeem';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterTrackers => 'Met trackers';

  @override
  String get filterSpecial => 'Speciale toegang';

  @override
  String get filterNotStore => 'Buiten de store';

  @override
  String get filterOffline => 'Offline';

  @override
  String get filterTrusted => 'Vertrouwd';

  @override
  String get permSubtitle => 'Wie wat kan gebruiken op deze telefoon';

  @override
  String get trackersSubtitle => 'Welke tracker in welke apps zit';

  @override
  String get segTrackers => 'Trackers';

  @override
  String get noTrackers => 'Geen bekende trackers gevonden.';

  @override
  String get noPerms => 'Geen gevoelige rechten gevonden.';

  @override
  String appsCount(int count) {
    return 'Apps: $count';
  }

  @override
  String get changesSubtitle => 'Nieuwe apps en wijzigingen in rechten';

  @override
  String get clearTitle => 'Wijzigingen wissen?';

  @override
  String get clearBody =>
      'De lijst met wijzigingen wordt van deze telefoon verwijderd.';

  @override
  String get changesEmpty =>
      'Nog geen wijzigingen. Peekless toont hier nieuwe en verwijderde apps, nieuwe rechten en nieuwe trackers.';

  @override
  String evInstalled(int score, String level) {
    return 'Geïnstalleerd. Score: $score ($level).';
  }

  @override
  String get evRemoved => 'Verwijderd.';

  @override
  String evAllowed(String label) {
    return 'Nu toegestaan: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Niet langer toegestaan: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Nieuwe tracker gevonden: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: ingeschakeld.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: uitgeschakeld.';
  }

  @override
  String get checksTitle => 'Beveiligingscontroles';

  @override
  String get checksIntro =>
      'Dingen die een tweede blik waard zijn. Tik op een controle om de apps te zien.';

  @override
  String get checkUnusedTitle => 'Ongebruikte apps met gevoelige toegang';

  @override
  String get checkDebuggableTitle => 'Debugversies';

  @override
  String get checkOfflineTitle => 'Offline apps';

  @override
  String get checkAccessibilityDesc =>
      'Deze apps kunnen je scherm lezen en namens jou tikken.';

  @override
  String get checkAdminDesc =>
      'Deze apps kunnen de telefoon vergrendelen of wissen en verwijdering tegenhouden.';

  @override
  String get checkNotificationDesc =>
      'Deze apps kunnen al je meldingen lezen, ook codes.';

  @override
  String checkUnusedDesc(int days) {
    return 'Al $days dagen niet geopend, maar kunnen nog steeds gevoelige rechten gebruiken. Overweeg ze te verwijderen.';
  }

  @override
  String get checkNotStoreDesc =>
      'Geïnstalleerd vanuit een bestand of computer. Niemand heeft ze voor je gecontroleerd.';

  @override
  String get checkDebuggableDesc =>
      'Testversies die vanaf een computer kunnen worden geïnspecteerd.';

  @override
  String get checkOldDesc =>
      'Deze apps omzeilen de nieuwe privacybescherming van Android.';

  @override
  String get checkOfflineDesc =>
      'Geen internetrecht, dus ze kunnen geen gegevens online versturen.';

  @override
  String get usagePromptBody =>
      'Optioneel. Schakel toegang tot gebruiksgegevens in om apps te vinden die je lang niet hebt geopend maar nog steeds je microfoon, locatie of contacten kunnen gebruiken. De gegevens verlaten je telefoon niet.';

  @override
  String get usagePromptButton => 'Toegang tot gebruiksgegevens inschakelen';

  @override
  String get securityNone =>
      'Geen beveiligingsopmerkingen gevonden op deze telefoon.';

  @override
  String securityOffline(int count) {
    return 'Apps die volledig offline werken: $count';
  }

  @override
  String get fixWizardTitle => 'Herstelwizard';

  @override
  String wizardStep(int index, int total) {
    return 'App $index van $total';
  }

  @override
  String get wizardQuestion => 'Heeft deze app dit echt nodig?';

  @override
  String get wizardHint =>
      'Tik op ‘App-instellingen openen’, daarna op Rechten, en schakel uit wat de app niet nodig heeft.';

  @override
  String get openAppSettings => 'App-instellingen openen';

  @override
  String get trustApp => 'Ik vertrouw deze app';

  @override
  String get nextApp => 'Volgende app';

  @override
  String get finish => 'Klaar';

  @override
  String get wizardDone => 'Alles bekeken';

  @override
  String get wizardNothing => 'Niets om te bekijken';

  @override
  String get wizardNothingBody =>
      'Op dit moment heeft geen enkele app gevoelige toegang.';

  @override
  String get wizardRescanBody => 'Scan opnieuw om je nieuwe score te zien.';

  @override
  String get rescanFinish => 'Opnieuw scannen en afronden';

  @override
  String get wizardRequested => 'aangevraagd, nog niet toegestaan';

  @override
  String scoreTrackers(int count) {
    return 'Bekende trackers: $count';
  }

  @override
  String get scoreDebuggable => 'Debugversie';

  @override
  String get scoreOldTarget => 'Gemaakt voor erg oud Android';

  @override
  String unusualFor(String groups) {
    return 'Ongebruikelijk voor dit soort app: $groups';
  }

  @override
  String get noteRequested => 'aangevraagd, telt voor de helft';

  @override
  String get noteAllowed => 'toegestaan';

  @override
  String noteTrackers(int points, int max) {
    return '$points per stuk, maximaal $max';
  }

  @override
  String get noteTurnedOn => 'ingeschakeld';

  @override
  String get noteDebuggable => 'kan vanaf een computer worden geïnspecteerd';

  @override
  String noteApi(int apiLevel) {
    return 'API-niveau $apiLevel';
  }

  @override
  String get noteExtra => 'extra aftrek';

  @override
  String get explainTitle => 'Hoe de score werkt';

  @override
  String get explainIntro =>
      'Elke app begint op 100. Er gaan punten af voor wat de app kan doen.';

  @override
  String get explainStart => 'Begin';

  @override
  String get explainNothing => 'Niets afgetrokken';

  @override
  String get explainNothingNote => 'Geen gevoelige rechten of bekende trackers';

  @override
  String get explainScore => 'Score';

  @override
  String get explainRules => 'De regels';

  @override
  String get rule1 =>
      'In elke groep telt alleen het zwaarste recht. Nauwkeurige en geschatte locatie tellen bijvoorbeeld samen één keer.';

  @override
  String get rule2 =>
      'Speciale rechten (alle bestanden, weergeven boven andere apps, apps installeren) tellen voor de helft als de app ze alleen heeft aangevraagd.';

  @override
  String rule3(int points, int max) {
    return 'Elke bekende tracker kost $points punten, tot maximaal $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Ingeschakelde speciale toegang kost punten: toegankelijkheid $a, apparaatbeheerder $b, toegang tot meldingen $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Een debugversie kost $a. Een app gemaakt voor Android 7 of ouder kost $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Is een recht ongebruikelijk voor dat soort app (bijvoorbeeld microfoon in een zaklamp), dan gaan er nog eens $points punten af, voor maximaal $maxGroups rechtengroepen.';
  }

  @override
  String get rule7 =>
      '70 of hoger: Veilig. 40 tot 69: Gemiddeld. Onder 40: Riskant.';

  @override
  String get explainFooter =>
      'De score laat zien wat een app kan doen, niet wat hij nu doet.';

  @override
  String get howScore => 'Hoe wordt deze score berekend?';

  @override
  String summaryTrackers(int count) {
    return 'Bekende trackers: $count.';
  }

  @override
  String get summaryNone => 'Geen gevoelige rechten of bekende trackers.';

  @override
  String metaTrackers(int count) {
    return 'Trackers: $count';
  }

  @override
  String get metaNone => 'Geen gevoelige rechten';

  @override
  String get detailSecurity => 'Beveiliging';

  @override
  String get detailSource => 'Bron';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Kan internet gebruiken';

  @override
  String get detailOffline => 'Offline';

  @override
  String get detailOfflineBody =>
      'Geen internetrecht, dus kan geen gegevens online versturen';

  @override
  String get detailLastOpened => 'Laatst geopend';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';

  @override
  String daysSince(int days) {
    return 'Dagen sinds laatste gebruik: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Testversie die vanaf een computer kan worden geïnspecteerd';

  @override
  String detailOldBody(int apiLevel) {
    return 'API-niveau $apiLevel, dus de nieuwe privacybescherming wordt omzeild';
  }

  @override
  String get detailTrustBody => 'Niet meetellen bij Riskant en in meldingen';

  @override
  String get detailNoPerms => 'Deze app vraagt geen gevoelige rechten aan.';

  @override
  String get chipAllowed => 'Toegestaan';

  @override
  String get chipRequested => 'Aangevraagd';

  @override
  String get chipNotAllowed => 'Niet toegestaan';

  @override
  String sensitiveNote(String why) {
    return 'Gevoelig: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Gevonden trackers: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless laat zien wat een app kan doen, niet wat hij nu doet. Trackers worden gevonden in het manifest van de app, dus sommige kunnen gemist worden.';

  @override
  String get srcBuiltIn => 'Ingebouwd in je telefoon';

  @override
  String get srcUnknown =>
      'Onbekend (geïnstalleerd vanuit een bestand of computer)';

  @override
  String get srcApk => 'Een APK-bestand dat je hebt geopend';

  @override
  String get srcAdb => 'Een computer (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Geïnstalleerd door $name';
  }

  @override
  String get accessibilityLabel => 'Toegankelijkheidstoegang';

  @override
  String get adminLabel => 'Apparaatbeheerder';

  @override
  String get notificationLabel => 'Toegang tot meldingen';

  @override
  String get accessibilityWhy =>
      'Ingeschakeld. Kan lezen wat op het scherm staat en namens jou handelen.';

  @override
  String get adminWhy =>
      'Ingeschakeld. Kan de telefoon vergrendelen, wissen en verwijdering tegenhouden.';

  @override
  String get notificationWhy =>
      'Ingeschakeld. Kan al je meldingen lezen, ook codes.';

  @override
  String get grpMicrophone => 'Microfoon';

  @override
  String get grpCamera => 'Camera';

  @override
  String get grpLocation => 'Locatie';

  @override
  String get grpContacts => 'Contacten';

  @override
  String get grpSms => 'Sms';

  @override
  String get grpCallLog => 'Gesprekslog';

  @override
  String get grpPhone => 'Telefoon';

  @override
  String get grpCalendar => 'Agenda';

  @override
  String get grpBodySensors => 'Lichaamssensoren';

  @override
  String get grpActivity => 'Activiteit';

  @override
  String get grpFiles => 'Bestanden';

  @override
  String get grpOverlay => 'Overlay';

  @override
  String get grpInstalls => 'Installaties';

  @override
  String get grpAppList => 'App-lijst';

  @override
  String get lblCoarseLocation => 'Geschatte locatie';

  @override
  String get lblFineLocation => 'Nauwkeurige locatie';

  @override
  String get lblBackgroundLocation => 'Locatie altijd';

  @override
  String get lblAccounts => 'Accounts';

  @override
  String get lblReadSms => 'Sms lezen';

  @override
  String get lblReceiveSms => 'Sms ontvangen';

  @override
  String get lblSendSms => 'Sms versturen';

  @override
  String get lblPhoneState => 'Telefoonstatus';

  @override
  String get lblCallPhone => 'Bellen';

  @override
  String get lblActivity => 'Lichamelijke activiteit';

  @override
  String get lblAllFiles => 'Alle bestanden';

  @override
  String get lblFilesMedia => 'Bestanden en media';

  @override
  String get lblPhotos => 'Foto’s';

  @override
  String get lblVideos => 'Video’s';

  @override
  String get lblAudioFiles => 'Audiobestanden';

  @override
  String get lblOverlay => 'Weergeven boven andere apps';

  @override
  String get lblInstall => 'Andere apps installeren';

  @override
  String get lblAppList => 'Alle apps zien';

  @override
  String get whyMic => 'Kan geluid opnemen.';

  @override
  String get whyCamera => 'Kan de camera gebruiken.';

  @override
  String get whyCoarse => 'Kan je geschatte locatie zien.';

  @override
  String get whyFine => 'Kan je nauwkeurige locatie zien.';

  @override
  String get whyBackground => 'Kan je locatie altijd volgen.';

  @override
  String get whyContacts => 'Kan je contacten lezen.';

  @override
  String get whyAccounts => 'Kan de accounts op de telefoon zien.';

  @override
  String get whyReadSms => 'Kan je sms’jes lezen.';

  @override
  String get whyReceiveSms => 'Kan je sms’jes ontvangen.';

  @override
  String get whySendSms => 'Kan sms’jes versturen.';

  @override
  String get whyCallLog => 'Kan je gespreksgeschiedenis lezen.';

  @override
  String get whyPhoneState => 'Kan de status van je telefoon zien.';

  @override
  String get whyCallPhone => 'Kan bellen.';

  @override
  String get whyCalendar => 'Kan je agenda lezen.';

  @override
  String get whyBody => 'Kan lichaamssensoren lezen.';

  @override
  String get whyActivity => 'Kan je lichamelijke activiteit zien.';

  @override
  String get whyAllFiles => 'Heeft toegang tot alle bestanden op de telefoon.';

  @override
  String get whyFilesMedia => 'Kan bestanden en media lezen.';

  @override
  String get whyPhotos => 'Kan je foto’s lezen.';

  @override
  String get whyVideos => 'Kan je video’s lezen.';

  @override
  String get whyAudio => 'Kan je audiobestanden lezen.';

  @override
  String get whyOverlay => 'Kan boven andere apps worden weergegeven.';

  @override
  String get whyInstall => 'Kan andere apps installeren.';

  @override
  String get whyAppList => 'Kan alle apps op de telefoon zien.';

  @override
  String get settingsAppearance => 'Weergave';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get settingsThemeBody => 'Volgt standaard je telefoon';

  @override
  String get themeSystem => 'Systeem';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get settingsScanning => 'Scannen';

  @override
  String get settingsAlerts => 'App-meldingen';

  @override
  String get settingsAlertsBody =>
      'Waarschuwt voor nieuwe apps en nieuwe rechten. Controleert ongeveer elke 6 uur.';

  @override
  String get settingsWeekly => 'Wekelijks overzicht';

  @override
  String get settingsWeeklyBody =>
      'Eén melding per week met je score en wat er is veranderd';

  @override
  String get settingsUsage => 'Toegang tot gebruiksgegevens';

  @override
  String get settingsUsageOn =>
      'Ingeschakeld. Peekless kan zien wanneer apps voor het laatst zijn geopend.';

  @override
  String get settingsUsageOff =>
      'Uitgeschakeld. Optioneel. Hiermee kan Peekless apps vinden die je niet meer gebruikt. Blijft op je telefoon.';

  @override
  String get settingsSystemApps => 'Systeemapps meenemen';

  @override
  String get settingsSystemAppsBody =>
      'Ook apps scannen die in de telefoon zijn ingebouwd';

  @override
  String get settingsRescan => 'Nu scannen';

  @override
  String get settingsRescanBody => 'Alle apps opnieuw controleren';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get settingsCheckUpdates => 'Controleren op updates';

  @override
  String settingsVersion(String version) {
    return 'Versie $version · alleen als jij tikt';
  }

  @override
  String get settingsAbout => 'Over';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacyBody => 'Alles blijft op je telefoon';

  @override
  String get settingsOpenSource => 'Open source';

  @override
  String get settingsOpenSourceBody =>
      'GPL-3.0-licentie. Bekijk de code op GitHub';

  @override
  String get settingsDeveloped => 'Ontwikkeld door Lumio Apps';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get languageSystem => 'De taal van de telefoon volgen';

  @override
  String get updChecking => 'Controleren op updates...';

  @override
  String get updLatest => 'Je hebt de nieuwste versie.';

  @override
  String get updFailed =>
      'Kan niet controleren op updates. Probeer het later opnieuw.';

  @override
  String get updTitle => 'Update beschikbaar';

  @override
  String updReady(String version) {
    return 'Versie $version is klaar om te installeren.';
  }

  @override
  String get updDownloadFailed =>
      'Downloaden mislukt. Controleer je verbinding en probeer het opnieuw.';

  @override
  String get updInstall => 'Downloaden en installeren';

  @override
  String get notifyDenied =>
      'Sta meldingen toe voor Peekless om dit in te schakelen.';

  @override
  String get settingChangeFailed => 'Kan deze instelling niet wijzigen.';

  @override
  String get usageOpenFailed =>
      'Kan de instellingen voor toegang tot gebruiksgegevens niet openen.';

  @override
  String alertNewTitle(String name) {
    return 'Nieuwe app: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Score $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name is gewijzigd';
  }

  @override
  String alertNowHas(String list) {
    return 'Heeft nu: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Nu toegestaan: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Nieuwe tracker: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Score $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Meer wijzigingen';

  @override
  String alertMoreBody(int count) {
    return 'Meer wijzigingen: $count. Open Peekless om ze te bekijken.';
  }

  @override
  String get weeklyTitle => 'Je wekelijkse Peekless-overzicht';

  @override
  String weeklyUp(int score, int diff) {
    return 'Score $score/100, $diff hoger dan vorige week.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Score $score/100, $diff lager dan vorige week.';
  }

  @override
  String weeklySame(int score) {
    return 'Score $score/100, ongewijzigd sinds vorige week.';
  }

  @override
  String weeklyScore(int score) {
    return 'Score $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Nieuwe apps: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Verwijderde apps: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Ingeschakelde rechten: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Nieuwe trackers: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Deze week: $list.';
  }

  @override
  String get weeklyNone => 'Deze week geen wijzigingen.';

  @override
  String weeklyRisky(int count) {
    return 'Riskante apps: $count.';
  }

  @override
  String get reportTitle => 'Peekless-privacyrapport';

  @override
  String reportScore(int score, String level) {
    return 'Score: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Gecontroleerde apps: $total. Riskant: $risky, Gemiddeld: $medium, Veilig: $safe';
  }

  @override
  String get reportAttention => 'Vraagt aandacht:';

  @override
  String get reportFooter =>
      'Gecontroleerd op mijn telefoon met Peekless. Er is niets naar ergens verstuurd.';

  @override
  String get trendTitle => 'Score in de tijd';

  @override
  String trendUp(int diff, int days) {
    return 'Gestegen met $diff (gevolgde dagen: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Gedaald met $diff (gevolgde dagen: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Geen verandering (gevolgde dagen: $days)';
  }

  @override
  String get settingsQuick => 'Snelle toegang';

  @override
  String get quickWidget => 'Widget voor het startscherm';

  @override
  String get quickWidgetBody => 'Toon je privacyscore op het startscherm';

  @override
  String get quickTile => 'Tegel voor Snelle instellingen';

  @override
  String get quickTileBody => 'Zie je score in het paneel Snelle instellingen';

  @override
  String get quickManual =>
      'Je telefoon kon dit niet automatisch toevoegen. Voeg het zelf toe: houd het startscherm ingedrukt (widget) of bewerk het paneel Snelle instellingen (tegel).';

  @override
  String get settingsExport => 'Rapport exporteren';

  @override
  String get settingsExportBody =>
      'Sla het rapport op als PDF- of JSON-bestand en deel het';

  @override
  String get exportFailed => 'Het rapport kon niet worden gemaakt.';

  @override
  String get settingsTrackerList => 'Trackerlijst';

  @override
  String settingsTrackerListBody(int count) {
    return 'Tik om bij te werken. $count trackers bekend. Alleen als je tikt.';
  }

  @override
  String get trackerListUpdating => 'Trackerlijst wordt bijgewerkt…';

  @override
  String trackerListUpdated(int count) {
    return 'Trackerlijst bijgewerkt. $count trackers bekend.';
  }

  @override
  String get trackerListCurrent => 'De trackerlijst is al up-to-date.';

  @override
  String get trackerListFailed =>
      'De trackerlijst kon niet worden bijgewerkt. Controleer je verbinding.';

  @override
  String get homeTagline => 'Zie wie er naar je loert.';

  @override
  String get homeOverviewBody =>
      'Aandeel van je apps dat elk onderdeel kan gebruiken';

  @override
  String get settingsDeep => 'Diepe scan';

  @override
  String get settingsDeepBody =>
      'Zoek ook naar verborgen trackers in de code van elke app. De eerste scan is langzamer. Apps die bij je telefoon zaten, worden overgeslagen. Alles blijft op je telefoon.';

  @override
  String trackersFromCode(int count) {
    return 'Gevonden in de code van de app (gemarkeerd met een codepictogram): $count';
  }

  @override
  String get settingsNet => 'Netwerkmonitor';

  @override
  String get settingsNetBody =>
      'Zie welke apps welke internetadressen opvragen en welke trackers zijn';

  @override
  String get netTitle => 'Netwerkmonitor';

  @override
  String get netIntro =>
      'Peekless laat zien welke domeinnamen je apps opvragen. Het gebruikt een lokaal VPN dat alleen deze opvragingen aanneemt, dus je internetsnelheid verandert niet. Het ziet niet wat je verstuurt of leest, alleen de namen. Er verlaat niets je telefoon.';

  @override
  String get netLimits =>
      'Kan apps missen die hun eigen versleutelde DNS gebruiken, of als Privé-DNS op een vaste provider staat. Android 10 of nieuwer is nodig om te tonen welke app vroeg.';

  @override
  String get netSwitch => 'Opvragingen volgen';

  @override
  String get netOn =>
      'Aan. Gebruik een paar apps en kom terug om de resultaten te zien.';

  @override
  String get netOff => 'Uit';

  @override
  String get netEmpty =>
      'Nog niets gezien. Gebruik een paar apps en kijk opnieuw.';

  @override
  String netLookups(int count) {
    return '$count opvragingen';
  }

  @override
  String netTrackerCount(int count) {
    return '$count trackerdomeinen';
  }

  @override
  String get netClear => 'Gegevens wissen';

  @override
  String get netCleared => 'Netwerkgegevens gewist.';

  @override
  String get netConsentDenied =>
      'Android heeft het starten van de monitor niet toegestaan.';

  @override
  String get netFailed => 'De netwerkmonitor kon niet worden gewijzigd.';

  @override
  String get netUnknownApp => 'Onbekende app';

  @override
  String netTrackerTag(String name) {
    return 'Tracker: $name';
  }
}
