// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get navHome => 'Start';

  @override
  String get navApps => 'Aplikacje';

  @override
  String get navPermissions => 'Uprawnienia';

  @override
  String get navChanges => 'Zmiany';

  @override
  String get navSettings => 'Ustawienia';

  @override
  String get levelRisky => 'Ryzykowne';

  @override
  String get levelMedium => 'Średnie';

  @override
  String get levelSafe => 'Bezpieczne';

  @override
  String get overallHigh => 'Wysokie ryzyko';

  @override
  String get overallMedium => 'Średnie ryzyko';

  @override
  String get overallLow => 'Niskie ryzyko';

  @override
  String get cancel => 'Anuluj';

  @override
  String get clear => 'Wyczyść';

  @override
  String get back => 'Wstecz';

  @override
  String get later => 'Później';

  @override
  String get noneFound => 'Nic nie znaleziono';

  @override
  String get scanning => 'Skanowanie...';

  @override
  String get scanFailed => 'Skanowanie nie powiodło się';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get couldNotOpenSettings =>
      'Nie udało się otworzyć ustawień aplikacji.';

  @override
  String get homeShare => 'Udostępnij raport';

  @override
  String get homeRescan => 'Skanuj aplikacje ponownie';

  @override
  String homeAppsChecked(int count) {
    return 'Sprawdzone aplikacje na tym telefonie: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Uwzględnione aplikacje: $counted, zaufane: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Wymagają uwagi';

  @override
  String get homeSeeAll => 'Zobacz wszystkie';

  @override
  String get homeAllSafe =>
      'Nic nie wymaga uwagi. Wszystkie aplikacje wyglądają na bezpieczne.';

  @override
  String get homeShareFailed => 'Nie udało się udostępnić raportu.';

  @override
  String get scoreOf100 => 'na 100';

  @override
  String scoreSemantics(int score) {
    return 'Wynik prywatności: $score na 100';
  }

  @override
  String wizardCard(int count) {
    return 'Sprawdź aplikacje z wrażliwym dostępem: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Aplikacje: $count, najbardziej ryzykowne na początku';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Wyświetlono $shown z $total';
  }

  @override
  String get appsSearch => 'Szukaj aplikacji';

  @override
  String get appsNone => 'Nie znaleziono aplikacji';

  @override
  String get chipMine => 'Moje aplikacje';

  @override
  String get chipSystem => 'Systemowe';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get filterTrackers => 'Z trackerami';

  @override
  String get filterSpecial => 'Dostęp specjalny';

  @override
  String get filterNotStore => 'Spoza sklepu';

  @override
  String get filterOffline => 'Offline';

  @override
  String get filterTrusted => 'Zaufane';

  @override
  String get permSubtitle => 'Kto może czego używać na tym telefonie';

  @override
  String get trackersSubtitle => 'Który tracker jest w których aplikacjach';

  @override
  String get segTrackers => 'Trackery';

  @override
  String get noTrackers => 'Nie znaleziono znanych trackerów.';

  @override
  String get noPerms => 'Nie znaleziono wrażliwych uprawnień.';

  @override
  String appsCount(int count) {
    return 'Aplikacje: $count';
  }

  @override
  String get changesSubtitle => 'Nowe aplikacje i zmiany uprawnień';

  @override
  String get clearTitle => 'Wyczyścić zmiany?';

  @override
  String get clearBody => 'Lista zmian zostanie usunięta z tego telefonu.';

  @override
  String get changesEmpty =>
      'Brak zmian. Peekless pokaże tu nowe i usunięte aplikacje, nowe uprawnienia oraz nowe trackery.';

  @override
  String evInstalled(int score, String level) {
    return 'Zainstalowano. Wynik: $score ($level).';
  }

  @override
  String get evRemoved => 'Usunięto.';

  @override
  String evAllowed(String label) {
    return 'Teraz dozwolone: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Już niedozwolone: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Znaleziono nowy tracker: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: włączono.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: wyłączono.';
  }

  @override
  String get checksTitle => 'Kontrole bezpieczeństwa';

  @override
  String get checksIntro =>
      'Rzeczy, którym warto przyjrzeć się jeszcze raz. Dotknij kontroli, aby zobaczyć aplikacje.';

  @override
  String get checkUnusedTitle => 'Nieużywane aplikacje z wrażliwym dostępem';

  @override
  String get checkDebuggableTitle => 'Wersje debugowania';

  @override
  String get checkOfflineTitle => 'Aplikacje offline';

  @override
  String get checkAccessibilityDesc =>
      'Te aplikacje mogą czytać ekran i stukać za Ciebie.';

  @override
  String get checkAdminDesc =>
      'Te aplikacje mogą zablokować lub wyczyścić telefon i utrudnić odinstalowanie.';

  @override
  String get checkNotificationDesc =>
      'Te aplikacje mogą czytać wszystkie powiadomienia, także kody.';

  @override
  String checkUnusedDesc(int days) {
    return 'Nieotwierane od $days dni, ale nadal mogą używać wrażliwych uprawnień. Rozważ ich usunięcie.';
  }

  @override
  String get checkNotStoreDesc =>
      'Zainstalowane z pliku lub komputera. Nikt nie sprawdził ich za Ciebie.';

  @override
  String get checkDebuggableDesc =>
      'Wersje testowe, które można sprawdzać z komputera.';

  @override
  String get checkOldDesc =>
      'Te aplikacje omijają nowe zabezpieczenia prywatności Androida.';

  @override
  String get checkOfflineDesc =>
      'Brak uprawnienia do internetu, więc nie mogą wysyłać danych online.';

  @override
  String get usagePromptBody =>
      'Opcjonalne. Włącz dostęp do danych o użyciu, aby znaleźć aplikacje, których dawno nie otwierano, a które nadal mogą używać mikrofonu, lokalizacji lub kontaktów. Dane nie opuszczają telefonu.';

  @override
  String get usagePromptButton => 'Włącz dostęp do danych o użyciu';

  @override
  String get securityNone =>
      'Na tym telefonie nie znaleziono uwag dotyczących bezpieczeństwa.';

  @override
  String securityOffline(int count) {
    return 'Aplikacje działające całkowicie offline: $count';
  }

  @override
  String get fixWizardTitle => 'Kreator poprawek';

  @override
  String wizardStep(int index, int total) {
    return 'Aplikacja $index z $total';
  }

  @override
  String get wizardQuestion => 'Czy ta aplikacja naprawdę tego potrzebuje?';

  @override
  String get wizardHint =>
      'Dotknij „Otwórz ustawienia aplikacji”, potem Uprawnienia, i wyłącz to, czego aplikacja nie potrzebuje.';

  @override
  String get openAppSettings => 'Otwórz ustawienia aplikacji';

  @override
  String get trustApp => 'Ufam tej aplikacji';

  @override
  String get nextApp => 'Następna aplikacja';

  @override
  String get finish => 'Zakończ';

  @override
  String get wizardDone => 'Wszystko sprawdzono';

  @override
  String get wizardNothing => 'Nie ma nic do sprawdzenia';

  @override
  String get wizardNothingBody =>
      'Obecnie żadna aplikacja nie ma wrażliwego dostępu.';

  @override
  String get wizardRescanBody => 'Skanuj ponownie, aby zobaczyć nowy wynik.';

  @override
  String get rescanFinish => 'Skanuj ponownie i zakończ';

  @override
  String get wizardRequested => 'zażądano, jeszcze niedozwolone';

  @override
  String scoreTrackers(int count) {
    return 'Znane trackery: $count';
  }

  @override
  String get scoreDebuggable => 'Wersja debugowania';

  @override
  String get scoreOldTarget => 'Utworzona dla bardzo starego Androida';

  @override
  String unusualFor(String groups) {
    return 'Nietypowe dla tego rodzaju aplikacji: $groups';
  }

  @override
  String get noteRequested => 'zażądano, liczone w połowie';

  @override
  String get noteAllowed => 'dozwolone';

  @override
  String noteTrackers(int points, int max) {
    return '$points za każdy, maksymalnie $max';
  }

  @override
  String get noteTurnedOn => 'włączone';

  @override
  String get noteDebuggable => 'można sprawdzać z komputera';

  @override
  String noteApi(int apiLevel) {
    return 'poziom API $apiLevel';
  }

  @override
  String get noteExtra => 'dodatkowe obniżenie';

  @override
  String get explainTitle => 'Jak działa wynik';

  @override
  String get explainIntro =>
      'Każda aplikacja zaczyna od 100. Punkty są odejmowane za to, co aplikacja może robić.';

  @override
  String get explainStart => 'Start';

  @override
  String get explainNothing => 'Nic nie odjęto';

  @override
  String get explainNothingNote =>
      'Brak wrażliwych uprawnień i znanych trackerów';

  @override
  String get explainScore => 'Wynik';

  @override
  String get explainRules => 'Zasady';

  @override
  String get rule1 =>
      'W każdej grupie liczy się tylko najcięższe uprawnienie. Na przykład dokładna i przybliżona lokalizacja liczą się raz.';

  @override
  String get rule2 =>
      'Uprawnienia specjalne (wszystkie pliki, wyświetlanie nad innymi aplikacjami, instalowanie aplikacji) liczą się w połowie, jeśli aplikacja tylko o nie poprosiła.';

  @override
  String rule3(int points, int max) {
    return 'Każdy znany tracker odejmuje $points pkt, maksymalnie $max pkt.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Włączony dostęp specjalny odejmuje punkty: ułatwienia dostępu $a, administrator urządzenia $b, dostęp do powiadomień $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Wersja debugowania odejmuje $a. Aplikacja utworzona dla Androida 7 lub starszego odejmuje $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Jeśli uprawnienie jest nietypowe dla danego rodzaju aplikacji (np. mikrofon w latarce), odejmowane jest dodatkowo $points pkt, maksymalnie dla $maxGroups grup uprawnień.';
  }

  @override
  String get rule7 =>
      '70 lub więcej: Bezpieczna. Od 40 do 69: Średnia. Poniżej 40: Ryzykowna.';

  @override
  String get explainFooter =>
      'Wynik pokazuje, co aplikacja może robić, a nie co robi teraz.';

  @override
  String get howScore => 'Jak jest obliczany ten wynik?';

  @override
  String summaryTrackers(int count) {
    return 'Znane trackery: $count.';
  }

  @override
  String get summaryNone => 'Brak wrażliwych uprawnień i znanych trackerów.';

  @override
  String metaTrackers(int count) {
    return 'Trackery: $count';
  }

  @override
  String get metaNone => 'Brak wrażliwych uprawnień';

  @override
  String get detailSecurity => 'Bezpieczeństwo';

  @override
  String get detailSource => 'Źródło';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Może łączyć się z internetem';

  @override
  String get detailOffline => 'Offline';

  @override
  String get detailOfflineBody =>
      'Brak uprawnienia do internetu, więc nie może wysyłać danych online';

  @override
  String get detailLastOpened => 'Ostatnio otwarta';

  @override
  String get today => 'Dzisiaj';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String daysSince(int days) {
    return 'Dni od ostatniego użycia: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Wersja testowa, którą można sprawdzać z komputera';

  @override
  String detailOldBody(int apiLevel) {
    return 'Poziom API $apiLevel, więc nowe zabezpieczenia prywatności są omijane';
  }

  @override
  String get detailTrustBody => 'Nie wliczaj do Ryzykownych ani do alertów';

  @override
  String get detailNoPerms => 'Ta aplikacja nie prosi o wrażliwe uprawnienia.';

  @override
  String get chipAllowed => 'Dozwolone';

  @override
  String get chipRequested => 'Zażądane';

  @override
  String get chipNotAllowed => 'Niedozwolone';

  @override
  String sensitiveNote(String why) {
    return 'Wrażliwe: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Znalezione trackery: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless pokazuje, co aplikacja może robić, a nie co robi teraz. Trackery są wykrywane na podstawie manifestu aplikacji, więc część może zostać pominięta.';

  @override
  String get srcBuiltIn => 'Wbudowana w telefon';

  @override
  String get srcUnknown => 'Nieznane (zainstalowana z pliku lub komputera)';

  @override
  String get srcApk => 'Plik APK, który otworzyłeś(-aś)';

  @override
  String get srcAdb => 'Komputer (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Zainstalowana przez: $name';
  }

  @override
  String get accessibilityLabel => 'Dostęp do ułatwień dostępu';

  @override
  String get adminLabel => 'Administrator urządzenia';

  @override
  String get notificationLabel => 'Dostęp do powiadomień';

  @override
  String get accessibilityWhy =>
      'Włączone. Może czytać zawartość ekranu i działać za Ciebie.';

  @override
  String get adminWhy =>
      'Włączone. Może zablokować telefon, wyczyścić go i utrudnić odinstalowanie.';

  @override
  String get notificationWhy =>
      'Włączone. Może czytać wszystkie powiadomienia, także kody.';

  @override
  String get grpMicrophone => 'Mikrofon';

  @override
  String get grpCamera => 'Aparat';

  @override
  String get grpLocation => 'Lokalizacja';

  @override
  String get grpContacts => 'Kontakty';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Rejestr połączeń';

  @override
  String get grpPhone => 'Telefon';

  @override
  String get grpCalendar => 'Kalendarz';

  @override
  String get grpBodySensors => 'Czujniki ciała';

  @override
  String get grpActivity => 'Aktywność';

  @override
  String get grpFiles => 'Pliki';

  @override
  String get grpOverlay => 'Nakładka';

  @override
  String get grpInstalls => 'Instalacje';

  @override
  String get grpAppList => 'Lista aplikacji';

  @override
  String get lblCoarseLocation => 'Przybliżona lokalizacja';

  @override
  String get lblFineLocation => 'Dokładna lokalizacja';

  @override
  String get lblBackgroundLocation => 'Lokalizacja przez cały czas';

  @override
  String get lblAccounts => 'Konta';

  @override
  String get lblReadSms => 'Odczyt SMS';

  @override
  String get lblReceiveSms => 'Odbieranie SMS';

  @override
  String get lblSendSms => 'Wysyłanie SMS';

  @override
  String get lblPhoneState => 'Stan telefonu';

  @override
  String get lblCallPhone => 'Wykonywanie połączeń';

  @override
  String get lblActivity => 'Aktywność fizyczna';

  @override
  String get lblAllFiles => 'Wszystkie pliki';

  @override
  String get lblFilesMedia => 'Pliki i multimedia';

  @override
  String get lblPhotos => 'Zdjęcia';

  @override
  String get lblVideos => 'Filmy';

  @override
  String get lblAudioFiles => 'Pliki audio';

  @override
  String get lblOverlay => 'Wyświetlanie nad innymi aplikacjami';

  @override
  String get lblInstall => 'Instalowanie innych aplikacji';

  @override
  String get lblAppList => 'Widok wszystkich aplikacji';

  @override
  String get whyMic => 'Może nagrywać dźwięk.';

  @override
  String get whyCamera => 'Może używać aparatu.';

  @override
  String get whyCoarse => 'Może widzieć Twoją przybliżoną lokalizację.';

  @override
  String get whyFine => 'Może widzieć Twoją dokładną lokalizację.';

  @override
  String get whyBackground => 'Może śledzić Twoją lokalizację przez cały czas.';

  @override
  String get whyContacts => 'Może czytać Twoje kontakty.';

  @override
  String get whyAccounts => 'Może widzieć konta na telefonie.';

  @override
  String get whyReadSms => 'Może czytać Twoje SMS-y.';

  @override
  String get whyReceiveSms => 'Może odbierać Twoje SMS-y.';

  @override
  String get whySendSms => 'Może wysyłać SMS-y.';

  @override
  String get whyCallLog => 'Może czytać historię Twoich połączeń.';

  @override
  String get whyPhoneState => 'Może widzieć stan Twojego telefonu.';

  @override
  String get whyCallPhone => 'Może wykonywać połączenia.';

  @override
  String get whyCalendar => 'Może czytać Twój kalendarz.';

  @override
  String get whyBody => 'Może czytać czujniki ciała.';

  @override
  String get whyActivity => 'Może widzieć Twoją aktywność fizyczną.';

  @override
  String get whyAllFiles =>
      'Może mieć dostęp do wszystkich plików na telefonie.';

  @override
  String get whyFilesMedia => 'Może czytać pliki i multimedia.';

  @override
  String get whyPhotos => 'Może czytać Twoje zdjęcia.';

  @override
  String get whyVideos => 'Może czytać Twoje filmy.';

  @override
  String get whyAudio => 'Może czytać Twoje pliki audio.';

  @override
  String get whyOverlay => 'Może wyświetlać się nad innymi aplikacjami.';

  @override
  String get whyInstall => 'Może instalować inne aplikacje.';

  @override
  String get whyAppList => 'Może widzieć wszystkie aplikacje na telefonie.';

  @override
  String get settingsAppearance => 'Wygląd';

  @override
  String get settingsTheme => 'Motyw';

  @override
  String get settingsThemeBody => 'Domyślnie zgodny z telefonem';

  @override
  String get themeSystem => 'Systemowy';

  @override
  String get themeLight => 'Jasny';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get settingsScanning => 'Skanowanie';

  @override
  String get settingsAlerts => 'Alerty o aplikacjach';

  @override
  String get settingsAlertsBody =>
      'Informuje o nowych aplikacjach i nowych uprawnieniach. Sprawdza mniej więcej co 6 godzin.';

  @override
  String get settingsWeekly => 'Podsumowanie tygodniowe';

  @override
  String get settingsWeeklyBody =>
      'Raz w tygodniu powiadomienie z Twoim wynikiem i zmianami';

  @override
  String get settingsUsage => 'Dostęp do danych o użyciu';

  @override
  String get settingsUsageOn =>
      'Włączone. Peekless widzi, kiedy aplikacje były ostatnio otwierane.';

  @override
  String get settingsUsageOff =>
      'Wyłączone. Opcjonalne. Pozwala Peekless znajdować aplikacje, których już nie używasz. Dane zostają na telefonie.';

  @override
  String get settingsSystemApps => 'Uwzględnij aplikacje systemowe';

  @override
  String get settingsSystemAppsBody =>
      'Skanuj także aplikacje wbudowane w telefon';

  @override
  String get settingsRescan => 'Skanuj teraz';

  @override
  String get settingsRescanBody => 'Sprawdź wszystkie aplikacje ponownie';

  @override
  String get settingsUpdates => 'Aktualizacje';

  @override
  String get settingsCheckUpdates => 'Sprawdź aktualizacje';

  @override
  String settingsVersion(String version) {
    return 'Wersja $version · tylko po dotknięciu';
  }

  @override
  String get settingsAbout => 'Informacje';

  @override
  String get settingsPrivacy => 'Prywatność';

  @override
  String get settingsPrivacyBody => 'Wszystko zostaje na Twoim telefonie';

  @override
  String get settingsOpenSource => 'Otwarte oprogramowanie';

  @override
  String get settingsOpenSourceBody =>
      'Licencja GPL-3.0. Zobacz kod na GitHubie';

  @override
  String get settingsDeveloped => 'Stworzone przez Lumio Apps';

  @override
  String get settingsLanguage => 'Język';

  @override
  String get languageSystem => 'Zgodny z językiem telefonu';

  @override
  String get updChecking => 'Sprawdzanie aktualizacji...';

  @override
  String get updLatest => 'Masz najnowszą wersję.';

  @override
  String get updFailed =>
      'Nie udało się sprawdzić aktualizacji. Spróbuj później.';

  @override
  String get updTitle => 'Dostępna aktualizacja';

  @override
  String updReady(String version) {
    return 'Wersja $version jest gotowa do instalacji.';
  }

  @override
  String get updDownloadFailed =>
      'Pobieranie nie powiodło się. Sprawdź połączenie i spróbuj ponownie.';

  @override
  String get updInstall => 'Pobierz i zainstaluj';

  @override
  String get notifyDenied =>
      'Zezwól Peekless na powiadomienia, aby to włączyć.';

  @override
  String get settingChangeFailed => 'Nie udało się zmienić tego ustawienia.';

  @override
  String get usageOpenFailed =>
      'Nie udało się otworzyć ustawień dostępu do danych o użyciu.';

  @override
  String alertNewTitle(String name) {
    return 'Nowa aplikacja: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Wynik $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return 'Zmiana w aplikacji $name';
  }

  @override
  String alertNowHas(String list) {
    return 'Ma teraz: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Teraz dozwolone: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Nowy tracker: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Wynik $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Więcej zmian';

  @override
  String alertMoreBody(int count) {
    return 'Więcej zmian: $count. Otwórz Peekless, aby je zobaczyć.';
  }

  @override
  String get weeklyTitle => 'Twoje tygodniowe podsumowanie Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Wynik $score/100, o $diff więcej niż w zeszłym tygodniu.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Wynik $score/100, o $diff mniej niż w zeszłym tygodniu.';
  }

  @override
  String weeklySame(int score) {
    return 'Wynik $score/100, bez zmian od zeszłego tygodnia.';
  }

  @override
  String weeklyScore(int score) {
    return 'Wynik $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Nowe aplikacje: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Usunięte aplikacje: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Włączone uprawnienia: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Nowe trackery: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'W tym tygodniu: $list.';
  }

  @override
  String get weeklyNone => 'W tym tygodniu bez zmian.';

  @override
  String weeklyRisky(int count) {
    return 'Aplikacje ryzykowne: $count.';
  }

  @override
  String get reportTitle => 'Raport prywatności Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Wynik: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Sprawdzone aplikacje: $total. Ryzykowne: $risky, Średnie: $medium, Bezpieczne: $safe';
  }

  @override
  String get reportAttention => 'Wymagają uwagi:';

  @override
  String get reportFooter =>
      'Sprawdzono na moim telefonie za pomocą Peekless. Nic nie zostało nigdzie wysłane.';

  @override
  String get trendTitle => 'Wynik w czasie';

  @override
  String trendUp(int diff, int days) {
    return 'Wzrost o $diff (śledzone dni: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Spadek o $diff (śledzone dni: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Bez zmian (śledzone dni: $days)';
  }

  @override
  String get settingsQuick => 'Szybki dostęp';

  @override
  String get quickWidget => 'Widżet ekranu głównego';

  @override
  String get quickWidgetBody => 'Pokaż wynik prywatności na ekranie głównym';

  @override
  String get quickTile => 'Kafelek szybkich ustawień';

  @override
  String get quickTileBody => 'Zobacz wynik w panelu szybkich ustawień';

  @override
  String get quickManual =>
      'Telefon nie mógł dodać tego automatycznie. Dodaj ręcznie: przytrzymaj ekran główny (widżet) lub edytuj panel szybkich ustawień (kafelek).';

  @override
  String get settingsExport => 'Eksportuj raport';

  @override
  String get settingsExportBody =>
      'Zapisz raport jako plik PDF lub JSON i udostępnij';

  @override
  String get exportFailed => 'Nie udało się utworzyć raportu.';

  @override
  String get settingsTrackerList => 'Lista trackerów';

  @override
  String settingsTrackerListBody(int count) {
    return 'Dotknij, aby zaktualizować. Znanych trackerów: $count. Tylko po dotknięciu.';
  }

  @override
  String get trackerListUpdating => 'Aktualizowanie listy trackerów…';

  @override
  String trackerListUpdated(int count) {
    return 'Lista trackerów zaktualizowana. Znanych trackerów: $count.';
  }

  @override
  String get trackerListCurrent => 'Lista trackerów jest już aktualna.';

  @override
  String get trackerListFailed =>
      'Nie udało się zaktualizować listy trackerów. Sprawdź połączenie.';
}
