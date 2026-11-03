// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get navHome => 'Start';

  @override
  String get navApps => 'Apps';

  @override
  String get navPermissions => 'Berechtigungen';

  @override
  String get navChanges => 'Änderungen';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get levelRisky => 'Riskant';

  @override
  String get levelMedium => 'Mittel';

  @override
  String get levelSafe => 'Sicher';

  @override
  String get overallHigh => 'Hohes Risiko';

  @override
  String get overallMedium => 'Mittleres Risiko';

  @override
  String get overallLow => 'Niedriges Risiko';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get clear => 'Löschen';

  @override
  String get back => 'Zurück';

  @override
  String get later => 'Später';

  @override
  String get noneFound => 'Nichts gefunden';

  @override
  String get scanning => 'Wird gescannt...';

  @override
  String get scanFailed => 'Scan fehlgeschlagen';

  @override
  String get tryAgain => 'Erneut versuchen';

  @override
  String get couldNotOpenSettings =>
      'App-Einstellungen konnten nicht geöffnet werden.';

  @override
  String get homeShare => 'Bericht teilen';

  @override
  String get homeRescan => 'Apps erneut scannen';

  @override
  String homeAppsChecked(int count) {
    return 'Auf diesem Handy geprüfte Apps: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Gezählte Apps: $counted, vertrauenswürdig: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Braucht Aufmerksamkeit';

  @override
  String get homeSeeAll => 'Alle anzeigen';

  @override
  String get homeAllSafe =>
      'Nichts braucht Aufmerksamkeit. Alle Apps wirken sicher.';

  @override
  String get homeShareFailed => 'Bericht konnte nicht geteilt werden.';

  @override
  String get scoreOf100 => 'von 100';

  @override
  String scoreSemantics(int score) {
    return 'Datenschutz-Wert: $score von 100';
  }

  @override
  String wizardCard(int count) {
    return 'Apps mit sensiblem Zugriff prüfen: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Apps: $count, die riskantesten zuerst';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$shown von $total angezeigt';
  }

  @override
  String get appsSearch => 'Apps suchen';

  @override
  String get appsNone => 'Keine Apps gefunden';

  @override
  String get chipMine => 'Meine Apps';

  @override
  String get chipSystem => 'System';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterTrackers => 'Mit Trackern';

  @override
  String get filterSpecial => 'Spezialzugriff';

  @override
  String get filterNotStore => 'Nicht aus dem Store';

  @override
  String get filterOffline => 'Offline';

  @override
  String get filterTrusted => 'Vertrauenswürdig';

  @override
  String get permSubtitle => 'Wer was auf diesem Handy nutzen kann';

  @override
  String get trackersSubtitle => 'Welcher Tracker in welchen Apps steckt';

  @override
  String get segTrackers => 'Tracker';

  @override
  String get noTrackers => 'Keine bekannten Tracker gefunden.';

  @override
  String get noPerms => 'Keine sensiblen Berechtigungen gefunden.';

  @override
  String appsCount(int count) {
    return 'Apps: $count';
  }

  @override
  String get changesSubtitle => 'Neue Apps und Änderungen bei Berechtigungen';

  @override
  String get clearTitle => 'Änderungen löschen?';

  @override
  String get clearBody =>
      'Die Liste der Änderungen wird von diesem Handy entfernt.';

  @override
  String get changesEmpty =>
      'Noch keine Änderungen. Peekless zeigt hier neue und entfernte Apps, neue Berechtigungen und neue Tracker an.';

  @override
  String evInstalled(int score, String level) {
    return 'Installiert. Wert: $score ($level).';
  }

  @override
  String get evRemoved => 'Entfernt.';

  @override
  String evAllowed(String label) {
    return 'Jetzt erlaubt: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Nicht mehr erlaubt: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Neuer Tracker gefunden: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: eingeschaltet.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: ausgeschaltet.';
  }

  @override
  String get checksTitle => 'Sicherheitsprüfungen';

  @override
  String get checksIntro =>
      'Dinge, die einen zweiten Blick wert sind. Tippe auf eine Prüfung, um die Apps zu sehen.';

  @override
  String get checkUnusedTitle => 'Ungenutzte Apps mit sensiblem Zugriff';

  @override
  String get checkDebuggableTitle => 'Debug-Versionen';

  @override
  String get checkOfflineTitle => 'Offline-Apps';

  @override
  String get checkAccessibilityDesc =>
      'Diese Apps können deinen Bildschirm lesen und für dich tippen.';

  @override
  String get checkAdminDesc =>
      'Diese Apps können das Handy sperren oder löschen und das Deinstallieren verhindern.';

  @override
  String get checkNotificationDesc =>
      'Diese Apps können alle deine Benachrichtigungen lesen, auch Codes.';

  @override
  String checkUnusedDesc(int days) {
    return 'Seit $days Tagen nicht geöffnet, können aber weiterhin sensible Berechtigungen nutzen. Überlege, sie zu entfernen.';
  }

  @override
  String get checkNotStoreDesc =>
      'Aus einer Datei oder von einem Computer installiert. Niemand hat sie für dich geprüft.';

  @override
  String get checkDebuggableDesc =>
      'Testversionen, die sich von einem Computer aus untersuchen lassen.';

  @override
  String get checkOldDesc =>
      'Diese Apps umgehen die neuen Datenschutzfunktionen von Android.';

  @override
  String get checkOfflineDesc =>
      'Keine Internetberechtigung, daher können sie keine Daten online senden.';

  @override
  String get usagePromptBody =>
      'Optional. Aktiviere den Nutzungszugriff, um Apps zu finden, die du lange nicht geöffnet hast, die aber weiterhin Mikrofon, Standort oder Kontakte nutzen könnten. Die Daten verlassen dein Handy nicht.';

  @override
  String get usagePromptButton => 'Nutzungszugriff aktivieren';

  @override
  String get securityNone =>
      'Auf diesem Handy wurden keine Sicherheitshinweise gefunden.';

  @override
  String securityOffline(int count) {
    return 'Apps, die komplett offline arbeiten: $count';
  }

  @override
  String get fixWizardTitle => 'Korrektur-Assistent';

  @override
  String wizardStep(int index, int total) {
    return 'App $index von $total';
  }

  @override
  String get wizardQuestion => 'Braucht diese App das wirklich?';

  @override
  String get wizardHint =>
      'Tippe auf „App-Einstellungen öffnen“, dann auf Berechtigungen, und schalte aus, was die App nicht braucht.';

  @override
  String get openAppSettings => 'App-Einstellungen öffnen';

  @override
  String get trustApp => 'Ich vertraue dieser App';

  @override
  String get nextApp => 'Nächste App';

  @override
  String get finish => 'Fertig';

  @override
  String get wizardDone => 'Alles durchgesehen';

  @override
  String get wizardNothing => 'Nichts zu prüfen';

  @override
  String get wizardNothingBody => 'Derzeit hat keine App sensiblen Zugriff.';

  @override
  String get wizardRescanBody =>
      'Scanne erneut, um deinen neuen Wert zu sehen.';

  @override
  String get rescanFinish => 'Erneut scannen und beenden';

  @override
  String get wizardRequested => 'angefragt, noch nicht erlaubt';

  @override
  String scoreTrackers(int count) {
    return 'Bekannte Tracker: $count';
  }

  @override
  String get scoreDebuggable => 'Debug-Version';

  @override
  String get scoreOldTarget => 'Für sehr altes Android gebaut';

  @override
  String unusualFor(String groups) {
    return 'Ungewöhnlich für diese Art von App: $groups';
  }

  @override
  String get noteRequested => 'angefragt, zählt zur Hälfte';

  @override
  String get noteAllowed => 'erlaubt';

  @override
  String noteTrackers(int points, int max) {
    return 'je $points, höchstens $max';
  }

  @override
  String get noteTurnedOn => 'eingeschaltet';

  @override
  String get noteDebuggable => 'von einem Computer aus untersuchbar';

  @override
  String noteApi(int apiLevel) {
    return 'API-Level $apiLevel';
  }

  @override
  String get noteExtra => 'zusätzlicher Abzug';

  @override
  String get explainTitle => 'So funktioniert der Wert';

  @override
  String get explainIntro =>
      'Jede App startet bei 100. Punkte werden abgezogen für das, was die App tun kann.';

  @override
  String get explainStart => 'Start';

  @override
  String get explainNothing => 'Nichts abgezogen';

  @override
  String get explainNothingNote =>
      'Keine sensiblen Berechtigungen oder bekannten Tracker';

  @override
  String get explainScore => 'Wert';

  @override
  String get explainRules => 'Die Regeln';

  @override
  String get rule1 =>
      'In jeder Gruppe zählt nur die schwerwiegendste Berechtigung. Genauer und ungefährer Standort zählen zum Beispiel nur einmal.';

  @override
  String get rule2 =>
      'Spezielle Berechtigungen (alle Dateien, über anderen Apps anzeigen, Apps installieren) zählen zur Hälfte, wenn die App sie nur angefragt hat.';

  @override
  String rule3(int points, int max) {
    return 'Jeder bekannte Tracker zieht $points Punkte ab, höchstens $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Ein eingeschalteter Spezialzugriff zieht Punkte ab: Bedienungshilfen $a, Geräteadministrator $b, Benachrichtigungszugriff $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Eine Debug-Version zieht $a ab. Eine App für Android 7 oder älter zieht $b ab.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Ist eine Berechtigung für diese Art von App ungewöhnlich (zum Beispiel Mikrofon in einer Taschenlampe), werden weitere $points Punkte abgezogen, für höchstens $maxGroups Berechtigungsgruppen.';
  }

  @override
  String get rule7 =>
      '70 oder mehr: Sicher. 40 bis 69: Mittel. Unter 40: Riskant.';

  @override
  String get explainFooter =>
      'Der Wert zeigt, was eine App tun kann, nicht was sie gerade tut.';

  @override
  String get howScore => 'Wie wird dieser Wert berechnet?';

  @override
  String summaryTrackers(int count) {
    return 'Bekannte Tracker: $count.';
  }

  @override
  String get summaryNone =>
      'Keine sensiblen Berechtigungen oder bekannten Tracker.';

  @override
  String metaTrackers(int count) {
    return 'Tracker: $count';
  }

  @override
  String get metaNone => 'Keine sensiblen Berechtigungen';

  @override
  String get detailSecurity => 'Sicherheit';

  @override
  String get detailSource => 'Quelle';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Kann ins Internet';

  @override
  String get detailOffline => 'Offline';

  @override
  String get detailOfflineBody =>
      'Keine Internetberechtigung, daher kann die App keine Daten online senden';

  @override
  String get detailLastOpened => 'Zuletzt geöffnet';

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String daysSince(int days) {
    return 'Tage seit der letzten Nutzung: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Testversion, die sich von einem Computer aus untersuchen lässt';

  @override
  String detailOldBody(int apiLevel) {
    return 'API-Level $apiLevel, daher werden neue Datenschutzfunktionen umgangen';
  }

  @override
  String get detailTrustBody =>
      'Nicht bei Riskant und in Benachrichtigungen zählen';

  @override
  String get detailNoPerms =>
      'Diese App fragt keine sensiblen Berechtigungen an.';

  @override
  String get chipAllowed => 'Erlaubt';

  @override
  String get chipRequested => 'Angefragt';

  @override
  String get chipNotAllowed => 'Nicht erlaubt';

  @override
  String sensitiveNote(String why) {
    return 'Sensibel: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Gefundene Tracker: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless zeigt, was eine App tun kann, nicht was sie gerade tut. Tracker werden im Manifest der App erkannt, daher können manche unentdeckt bleiben.';

  @override
  String get srcBuiltIn => 'In dein Handy eingebaut';

  @override
  String get srcUnknown =>
      'Unbekannt (aus einer Datei oder von einem Computer installiert)';

  @override
  String get srcApk => 'Eine APK-Datei, die du geöffnet hast';

  @override
  String get srcAdb => 'Ein Computer (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Installiert von $name';
  }

  @override
  String get accessibilityLabel => 'Zugriff auf Bedienungshilfen';

  @override
  String get adminLabel => 'Geräteadministrator';

  @override
  String get notificationLabel => 'Benachrichtigungszugriff';

  @override
  String get accessibilityWhy =>
      'Eingeschaltet. Kann lesen, was auf dem Bildschirm steht, und für dich handeln.';

  @override
  String get adminWhy =>
      'Eingeschaltet. Kann das Handy sperren, löschen und das Deinstallieren verhindern.';

  @override
  String get notificationWhy =>
      'Eingeschaltet. Kann alle deine Benachrichtigungen lesen, auch Codes.';

  @override
  String get grpMicrophone => 'Mikrofon';

  @override
  String get grpCamera => 'Kamera';

  @override
  String get grpLocation => 'Standort';

  @override
  String get grpContacts => 'Kontakte';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Anrufliste';

  @override
  String get grpPhone => 'Telefon';

  @override
  String get grpCalendar => 'Kalender';

  @override
  String get grpBodySensors => 'Körpersensoren';

  @override
  String get grpActivity => 'Aktivität';

  @override
  String get grpFiles => 'Dateien';

  @override
  String get grpOverlay => 'Überlagerung';

  @override
  String get grpInstalls => 'Installationen';

  @override
  String get grpAppList => 'App-Liste';

  @override
  String get lblCoarseLocation => 'Ungefährer Standort';

  @override
  String get lblFineLocation => 'Genauer Standort';

  @override
  String get lblBackgroundLocation => 'Standort dauerhaft';

  @override
  String get lblAccounts => 'Konten';

  @override
  String get lblReadSms => 'SMS lesen';

  @override
  String get lblReceiveSms => 'SMS empfangen';

  @override
  String get lblSendSms => 'SMS senden';

  @override
  String get lblPhoneState => 'Telefonstatus';

  @override
  String get lblCallPhone => 'Anrufe tätigen';

  @override
  String get lblActivity => 'Körperliche Aktivität';

  @override
  String get lblAllFiles => 'Alle Dateien';

  @override
  String get lblFilesMedia => 'Dateien und Medien';

  @override
  String get lblPhotos => 'Fotos';

  @override
  String get lblVideos => 'Videos';

  @override
  String get lblAudioFiles => 'Audiodateien';

  @override
  String get lblOverlay => 'Über anderen Apps anzeigen';

  @override
  String get lblInstall => 'Andere Apps installieren';

  @override
  String get lblAppList => 'Alle Apps sehen';

  @override
  String get whyMic => 'Kann Ton aufnehmen.';

  @override
  String get whyCamera => 'Kann die Kamera nutzen.';

  @override
  String get whyCoarse => 'Kann deinen ungefähren Standort sehen.';

  @override
  String get whyFine => 'Kann deinen genauen Standort sehen.';

  @override
  String get whyBackground => 'Kann deinen Standort dauerhaft verfolgen.';

  @override
  String get whyContacts => 'Kann deine Kontakte lesen.';

  @override
  String get whyAccounts => 'Kann die Konten auf dem Handy sehen.';

  @override
  String get whyReadSms => 'Kann deine SMS lesen.';

  @override
  String get whyReceiveSms => 'Kann deine SMS empfangen.';

  @override
  String get whySendSms => 'Kann SMS senden.';

  @override
  String get whyCallLog => 'Kann deinen Anrufverlauf lesen.';

  @override
  String get whyPhoneState => 'Kann den Status deines Handys sehen.';

  @override
  String get whyCallPhone => 'Kann Anrufe tätigen.';

  @override
  String get whyCalendar => 'Kann deinen Kalender lesen.';

  @override
  String get whyBody => 'Kann Körpersensoren lesen.';

  @override
  String get whyActivity => 'Kann deine körperliche Aktivität sehen.';

  @override
  String get whyAllFiles => 'Kann auf alle Dateien auf dem Handy zugreifen.';

  @override
  String get whyFilesMedia => 'Kann Dateien und Medien lesen.';

  @override
  String get whyPhotos => 'Kann deine Fotos lesen.';

  @override
  String get whyVideos => 'Kann deine Videos lesen.';

  @override
  String get whyAudio => 'Kann deine Audiodateien lesen.';

  @override
  String get whyOverlay => 'Kann über anderen Apps angezeigt werden.';

  @override
  String get whyInstall => 'Kann andere Apps installieren.';

  @override
  String get whyAppList => 'Kann alle Apps auf dem Handy sehen.';

  @override
  String get settingsAppearance => 'Darstellung';

  @override
  String get settingsTheme => 'Design';

  @override
  String get settingsThemeBody => 'Folgt standardmäßig deinem Handy';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get settingsScanning => 'Scannen';

  @override
  String get settingsAlerts => 'App-Hinweise';

  @override
  String get settingsAlertsBody =>
      'Meldet neue Apps und neue Berechtigungen. Prüft etwa alle 6 Stunden.';

  @override
  String get settingsWeekly => 'Wöchentliche Zusammenfassung';

  @override
  String get settingsWeeklyBody =>
      'Einmal pro Woche eine Benachrichtigung mit deinem Wert und den Änderungen';

  @override
  String get settingsUsage => 'Nutzungszugriff';

  @override
  String get settingsUsageOn =>
      'Eingeschaltet. Peekless kann sehen, wann Apps zuletzt geöffnet wurden.';

  @override
  String get settingsUsageOff =>
      'Ausgeschaltet. Optional. Hilft Peekless, Apps zu finden, die du nicht mehr nutzt. Bleibt auf deinem Handy.';

  @override
  String get settingsSystemApps => 'System-Apps einbeziehen';

  @override
  String get settingsSystemAppsBody =>
      'Auch Apps scannen, die im Handy eingebaut sind';

  @override
  String get settingsRescan => 'Jetzt scannen';

  @override
  String get settingsRescanBody => 'Alle Apps erneut prüfen';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get settingsCheckUpdates => 'Nach Updates suchen';

  @override
  String settingsVersion(String version) {
    return 'Version $version · nur wenn du tippst';
  }

  @override
  String get settingsAbout => 'Info';

  @override
  String get settingsPrivacy => 'Datenschutz';

  @override
  String get settingsPrivacyBody => 'Alles bleibt auf deinem Handy';

  @override
  String get settingsOpenSource => 'Open Source';

  @override
  String get settingsOpenSourceBody =>
      'GPL-3.0-Lizenz. Code auf GitHub ansehen';

  @override
  String get settingsDeveloped => 'Entwickelt von Lumio Apps';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get languageSystem => 'Sprache des Handys verwenden';

  @override
  String get updChecking => 'Suche nach Updates...';

  @override
  String get updLatest => 'Du hast die neueste Version.';

  @override
  String get updFailed =>
      'Updates konnten nicht geprüft werden. Versuche es später erneut.';

  @override
  String get updTitle => 'Update verfügbar';

  @override
  String updReady(String version) {
    return 'Version $version ist bereit zur Installation.';
  }

  @override
  String get updDownloadFailed =>
      'Download fehlgeschlagen. Prüfe deine Verbindung und versuche es erneut.';

  @override
  String get updInstall => 'Herunterladen und installieren';

  @override
  String get notifyDenied =>
      'Erlaube Peekless Benachrichtigungen, um dies einzuschalten.';

  @override
  String get settingChangeFailed =>
      'Diese Einstellung konnte nicht geändert werden.';

  @override
  String get usageOpenFailed =>
      'Einstellungen für den Nutzungszugriff konnten nicht geöffnet werden.';

  @override
  String alertNewTitle(String name) {
    return 'Neue App: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Wert $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name hat sich geändert';
  }

  @override
  String alertNowHas(String list) {
    return 'Hat jetzt: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Jetzt erlaubt: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Neuer Tracker: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Wert $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Weitere Änderungen';

  @override
  String alertMoreBody(int count) {
    return 'Weitere Änderungen: $count. Öffne Peekless, um sie zu sehen.';
  }

  @override
  String get weeklyTitle => 'Deine wöchentliche Peekless-Zusammenfassung';

  @override
  String weeklyUp(int score, int diff) {
    return 'Wert $score/100, $diff mehr als letzte Woche.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Wert $score/100, $diff weniger als letzte Woche.';
  }

  @override
  String weeklySame(int score) {
    return 'Wert $score/100, unverändert seit letzter Woche.';
  }

  @override
  String weeklyScore(int score) {
    return 'Wert $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Neue Apps: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Entfernte Apps: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Eingeschaltete Berechtigungen: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Neue Tracker: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Diese Woche: $list.';
  }

  @override
  String get weeklyNone => 'Diese Woche keine Änderungen.';

  @override
  String weeklyRisky(int count) {
    return 'Riskante Apps: $count.';
  }

  @override
  String get reportTitle => 'Peekless-Datenschutzbericht';

  @override
  String reportScore(int score, String level) {
    return 'Wert: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Geprüfte Apps: $total. Riskant: $risky, Mittel: $medium, Sicher: $safe';
  }

  @override
  String get reportAttention => 'Braucht Aufmerksamkeit:';

  @override
  String get reportFooter =>
      'Mit Peekless auf meinem Handy geprüft. Nichts wurde irgendwohin gesendet.';

  @override
  String get trendTitle => 'Wert im Zeitverlauf';

  @override
  String trendUp(int diff, int days) {
    return 'Um $diff gestiegen (verfolgte Tage: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Um $diff gesunken (verfolgte Tage: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Keine Änderung (verfolgte Tage: $days)';
  }

  @override
  String get settingsQuick => 'Schnellzugriff';

  @override
  String get quickWidget => 'Startbildschirm-Widget';

  @override
  String get quickWidgetBody =>
      'Zeigt deinen Datenschutz-Wert auf dem Startbildschirm';

  @override
  String get quickTile => 'Schnelleinstellungs-Kachel';

  @override
  String get quickTileBody => 'Sieh deinen Wert im Schnelleinstellungs-Bereich';

  @override
  String get quickManual =>
      'Dein Handy konnte das nicht automatisch hinzufügen. Füge es von Hand hinzu: Startbildschirm lange drücken (Widget) oder Schnelleinstellungen bearbeiten (Kachel).';

  @override
  String get settingsExport => 'Bericht exportieren';

  @override
  String get settingsExportBody =>
      'Speichere den Bericht als PDF oder JSON und teile ihn';

  @override
  String get exportFailed => 'Der Bericht konnte nicht erstellt werden.';

  @override
  String get settingsTrackerList => 'Tracker-Liste';

  @override
  String settingsTrackerListBody(int count) {
    return 'Zum Aktualisieren tippen. $count Tracker bekannt. Nur wenn du tippst.';
  }

  @override
  String get trackerListUpdating => 'Tracker-Liste wird aktualisiert…';

  @override
  String trackerListUpdated(int count) {
    return 'Tracker-Liste aktualisiert. $count Tracker bekannt.';
  }

  @override
  String get trackerListCurrent => 'Die Tracker-Liste ist bereits aktuell.';

  @override
  String get trackerListFailed =>
      'Die Tracker-Liste konnte nicht aktualisiert werden. Prüfe deine Verbindung.';

  @override
  String get homeTagline => 'Sieh, wer dir nachspioniert.';

  @override
  String get homeOverviewBody =>
      'Anteil deiner Apps, die jeweils darauf zugreifen können';

  @override
  String get settingsDeep => 'Tiefenscan';

  @override
  String get settingsDeepBody =>
      'Sucht auch im Code jeder App nach versteckten Trackern. Der erste Scan ist langsamer. Apps, die mit dem Handy kamen, werden übersprungen. Alles bleibt auf deinem Handy.';

  @override
  String trackersFromCode(int count) {
    return 'Im Code der App gefunden (mit Code-Symbol markiert): $count';
  }

  @override
  String get settingsNet => 'Netzwerkmonitor';

  @override
  String get settingsNetBody =>
      'Sieh, welche Apps welche Internetadressen abfragen und welche davon Tracker sind';

  @override
  String get netTitle => 'Netzwerkmonitor';

  @override
  String get netIntro =>
      'Peekless zeigt, welche Domainnamen deine Apps abfragen. Dafür wird ein lokales VPN genutzt, das nur diese Abfragen aufnimmt, die Internetgeschwindigkeit bleibt also gleich. Es sieht nicht, was du sendest oder liest, nur die Namen. Nichts verlässt dein Handy.';

  @override
  String get netLimits =>
      'Apps mit eigenem verschlüsseltem DNS oder bei fest eingestelltem privatem DNS können fehlen. Für die Anzeige der abfragenden App ist Android 10 oder neuer nötig.';

  @override
  String get netSwitch => 'Abfragen überwachen';

  @override
  String get netOn =>
      'An. Nutze ein paar Apps und sieh danach die Ergebnisse an.';

  @override
  String get netOff => 'Aus';

  @override
  String get netEmpty =>
      'Noch nichts gesehen. Nutze ein paar Apps und schau erneut nach.';

  @override
  String netLookups(int count) {
    return '$count Abfragen';
  }

  @override
  String netTrackerCount(int count) {
    return '$count Tracker-Domains';
  }

  @override
  String get netClear => 'Daten löschen';

  @override
  String get netCleared => 'Netzwerkdaten gelöscht.';

  @override
  String get netConsentDenied =>
      'Android hat den Start des Monitors nicht erlaubt.';

  @override
  String get netFailed => 'Der Netzwerkmonitor konnte nicht geändert werden.';

  @override
  String get netUnknownApp => 'Unbekannte App';

  @override
  String netTrackerTag(String name) {
    return 'Tracker: $name';
  }
}
