// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get navHome => 'Home';

  @override
  String get navApps => 'App';

  @override
  String get navPermissions => 'Permessi';

  @override
  String get navChanges => 'Modifiche';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get levelRisky => 'A rischio';

  @override
  String get levelMedium => 'Medie';

  @override
  String get levelSafe => 'Sicure';

  @override
  String get overallHigh => 'Rischio alto';

  @override
  String get overallMedium => 'Rischio medio';

  @override
  String get overallLow => 'Rischio basso';

  @override
  String get cancel => 'Annulla';

  @override
  String get clear => 'Cancella';

  @override
  String get back => 'Indietro';

  @override
  String get later => 'Più tardi';

  @override
  String get noneFound => 'Nessun risultato';

  @override
  String get scanning => 'Scansione in corso...';

  @override
  String get scanFailed => 'Scansione non riuscita';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get couldNotOpenSettings =>
      'Impossibile aprire le impostazioni dell’app.';

  @override
  String get homeShare => 'Condividi il report';

  @override
  String get homeRescan => 'Scansiona di nuovo le app';

  @override
  String homeAppsChecked(int count) {
    return 'App controllate su questo telefono: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'App conteggiate: $counted, attendibili: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Richiedono attenzione';

  @override
  String get homeSeeAll => 'Vedi tutte';

  @override
  String get homeAllSafe =>
      'Niente richiede attenzione. Tutte le app sembrano sicure.';

  @override
  String get homeShareFailed => 'Impossibile condividere il report.';

  @override
  String get scoreOf100 => 'su 100';

  @override
  String scoreSemantics(int score) {
    return 'Punteggio privacy: $score su 100';
  }

  @override
  String wizardCard(int count) {
    return 'Controlla le app con accesso sensibile: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'App: $count, prima le più rischiose';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Mostrate $shown su $total';
  }

  @override
  String get appsSearch => 'Cerca app';

  @override
  String get appsNone => 'Nessuna app trovata';

  @override
  String get chipMine => 'Le mie app';

  @override
  String get chipSystem => 'Sistema';

  @override
  String get filterAll => 'Tutte';

  @override
  String get filterTrackers => 'Con tracker';

  @override
  String get filterSpecial => 'Accesso speciale';

  @override
  String get filterNotStore => 'Fuori dallo store';

  @override
  String get filterOffline => 'Offline';

  @override
  String get filterTrusted => 'Attendibili';

  @override
  String get permSubtitle => 'Chi può usare cosa su questo telefono';

  @override
  String get trackersSubtitle => 'Quale tracker è in quali app';

  @override
  String get segTrackers => 'Tracker';

  @override
  String get noTrackers => 'Nessun tracker noto trovato.';

  @override
  String get noPerms => 'Nessun permesso sensibile trovato.';

  @override
  String appsCount(int count) {
    return 'App: $count';
  }

  @override
  String get changesSubtitle => 'Nuove app e modifiche ai permessi';

  @override
  String get clearTitle => 'Cancellare le modifiche?';

  @override
  String get clearBody =>
      'L’elenco delle modifiche verrà rimosso da questo telefono.';

  @override
  String get changesEmpty =>
      'Ancora nessuna modifica. Peekless mostrerà qui le app nuove e rimosse, i nuovi permessi e i nuovi tracker.';

  @override
  String evInstalled(int score, String level) {
    return 'Installata. Punteggio: $score ($level).';
  }

  @override
  String get evRemoved => 'Rimossa.';

  @override
  String evAllowed(String label) {
    return 'Ora consentito: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Non più consentito: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Trovato un nuovo tracker: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: attivato.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: disattivato.';
  }

  @override
  String get checksTitle => 'Controlli di sicurezza';

  @override
  String get checksIntro =>
      'Cose che vale la pena ricontrollare. Tocca un controllo per vedere le app.';

  @override
  String get checkUnusedTitle => 'App inutilizzate con accesso sensibile';

  @override
  String get checkDebuggableTitle => 'Build di debug';

  @override
  String get checkOfflineTitle => 'App offline';

  @override
  String get checkAccessibilityDesc =>
      'Queste app possono leggere lo schermo e toccare al posto tuo.';

  @override
  String get checkAdminDesc =>
      'Queste app possono bloccare o cancellare il telefono e impedire la disinstallazione.';

  @override
  String get checkNotificationDesc =>
      'Queste app possono leggere tutte le notifiche, compresi i codici.';

  @override
  String checkUnusedDesc(int days) {
    return 'Non aperte da $days giorni, ma possono ancora usare permessi sensibili. Valuta di rimuoverle.';
  }

  @override
  String get checkNotStoreDesc =>
      'Installate da un file o da un computer. Nessuno le ha controllate per te.';

  @override
  String get checkDebuggableDesc =>
      'Build di prova che possono essere ispezionate da un computer.';

  @override
  String get checkOldDesc =>
      'Queste app aggirano le nuove protezioni della privacy di Android.';

  @override
  String get checkOfflineDesc =>
      'Nessun permesso internet, quindi non possono inviare dati online.';

  @override
  String get usagePromptBody =>
      'Facoltativo. Attiva l’accesso all’utilizzo per trovare le app che non apri da tempo ma che possono ancora usare microfono, posizione o contatti. I dati non lasciano il telefono.';

  @override
  String get usagePromptButton => 'Attiva l’accesso all’utilizzo';

  @override
  String get securityNone =>
      'Nessuna segnalazione di sicurezza trovata su questo telefono.';

  @override
  String securityOffline(int count) {
    return 'App che funzionano del tutto offline: $count';
  }

  @override
  String get fixWizardTitle => 'Procedura guidata';

  @override
  String wizardStep(int index, int total) {
    return 'App $index di $total';
  }

  @override
  String get wizardQuestion => 'Questa app ha davvero bisogno di questo?';

  @override
  String get wizardHint =>
      'Tocca «Apri impostazioni app», poi Permessi, e disattiva ciò che l’app non richiede.';

  @override
  String get openAppSettings => 'Apri impostazioni app';

  @override
  String get trustApp => 'Mi fido di questa app';

  @override
  String get nextApp => 'App successiva';

  @override
  String get finish => 'Fine';

  @override
  String get wizardDone => 'Tutto controllato';

  @override
  String get wizardNothing => 'Niente da rivedere';

  @override
  String get wizardNothingBody =>
      'Al momento nessuna app ha accesso sensibile.';

  @override
  String get wizardRescanBody =>
      'Scansiona di nuovo per vedere il nuovo punteggio.';

  @override
  String get rescanFinish => 'Scansiona di nuovo e termina';

  @override
  String get wizardRequested => 'richiesto, non ancora consentito';

  @override
  String scoreTrackers(int count) {
    return 'Tracker noti: $count';
  }

  @override
  String get scoreDebuggable => 'Build di debug';

  @override
  String get scoreOldTarget => 'Creata per un Android molto vecchio';

  @override
  String unusualFor(String groups) {
    return 'Insolito per questo tipo di app: $groups';
  }

  @override
  String get noteRequested => 'richiesto, conta la metà';

  @override
  String get noteAllowed => 'consentito';

  @override
  String noteTrackers(int points, int max) {
    return '$points ciascuno, massimo $max';
  }

  @override
  String get noteTurnedOn => 'attivato';

  @override
  String get noteDebuggable => 'ispezionabile da un computer';

  @override
  String noteApi(int apiLevel) {
    return 'livello API $apiLevel';
  }

  @override
  String get noteExtra => 'riduzione aggiuntiva';

  @override
  String get explainTitle => 'Come funziona il punteggio';

  @override
  String get explainIntro =>
      'Ogni app parte da 100. Si tolgono punti in base a ciò che l’app può fare.';

  @override
  String get explainStart => 'Inizio';

  @override
  String get explainNothing => 'Niente tolto';

  @override
  String get explainNothingNote => 'Nessun permesso sensibile né tracker noto';

  @override
  String get explainScore => 'Punteggio';

  @override
  String get explainRules => 'Le regole';

  @override
  String get rule1 =>
      'In ogni gruppo conta solo il permesso più pesante. Ad esempio, posizione precisa e approssimativa contano una volta sola.';

  @override
  String get rule2 =>
      'I permessi speciali (tutti i file, visualizzazione sopra le altre app, installazione di app) contano la metà se l’app li ha solo richiesti.';

  @override
  String rule3(int points, int max) {
    return 'Ogni tracker noto toglie $points punti, fino a un massimo di $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Un accesso speciale attivo toglie punti: accessibilità $a, amministratore del dispositivo $b, accesso alle notifiche $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Una build di debug toglie $a. Un’app creata per Android 7 o precedente toglie $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Se un permesso è insolito per quel tipo di app (ad esempio il microfono in una torcia), si tolgono altri $points punti, per al massimo $maxGroups gruppi di permessi.';
  }

  @override
  String get rule7 =>
      '70 o più: Sicura. Da 40 a 69: Media. Sotto 40: A rischio.';

  @override
  String get explainFooter =>
      'Il punteggio mostra cosa un’app può fare, non cosa sta facendo ora.';

  @override
  String get howScore => 'Come viene calcolato questo punteggio?';

  @override
  String summaryTrackers(int count) {
    return 'Tracker noti: $count.';
  }

  @override
  String get summaryNone => 'Nessun permesso sensibile né tracker noto.';

  @override
  String metaTrackers(int count) {
    return 'Tracker: $count';
  }

  @override
  String get metaNone => 'Nessun permesso sensibile';

  @override
  String get detailSecurity => 'Sicurezza';

  @override
  String get detailSource => 'Origine';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Può accedere a internet';

  @override
  String get detailOffline => 'Offline';

  @override
  String get detailOfflineBody =>
      'Nessun permesso internet, quindi non può inviare dati online';

  @override
  String get detailLastOpened => 'Ultima apertura';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String daysSince(int days) {
    return 'Giorni dall’ultimo utilizzo: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Build di prova ispezionabile da un computer';

  @override
  String detailOldBody(int apiLevel) {
    return 'Livello API $apiLevel, quindi le nuove protezioni della privacy vengono aggirate';
  }

  @override
  String get detailTrustBody =>
      'Non contare tra le A rischio né nelle notifiche';

  @override
  String get detailNoPerms => 'Questa app non richiede permessi sensibili.';

  @override
  String get chipAllowed => 'Consentito';

  @override
  String get chipRequested => 'Richiesto';

  @override
  String get chipNotAllowed => 'Non consentito';

  @override
  String sensitiveNote(String why) {
    return 'Sensibile: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Tracker trovati: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless mostra cosa un’app può fare, non cosa sta facendo ora. I tracker vengono rilevati dal manifest dell’app, quindi alcuni potrebbero sfuggire.';

  @override
  String get srcBuiltIn => 'Integrata nel telefono';

  @override
  String get srcUnknown =>
      'Sconosciuta (installata da un file o da un computer)';

  @override
  String get srcApk => 'Un file APK che hai aperto';

  @override
  String get srcAdb => 'Un computer (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Installata da $name';
  }

  @override
  String get accessibilityLabel => 'Accesso all’accessibilità';

  @override
  String get adminLabel => 'Amministratore del dispositivo';

  @override
  String get notificationLabel => 'Accesso alle notifiche';

  @override
  String get accessibilityWhy =>
      'Attivo. Può leggere ciò che c’è sullo schermo e agire al posto tuo.';

  @override
  String get adminWhy =>
      'Attivo. Può bloccare il telefono, cancellarlo e impedire la disinstallazione.';

  @override
  String get notificationWhy =>
      'Attivo. Può leggere tutte le notifiche, compresi i codici.';

  @override
  String get grpMicrophone => 'Microfono';

  @override
  String get grpCamera => 'Fotocamera';

  @override
  String get grpLocation => 'Posizione';

  @override
  String get grpContacts => 'Contatti';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Registro chiamate';

  @override
  String get grpPhone => 'Telefono';

  @override
  String get grpCalendar => 'Calendario';

  @override
  String get grpBodySensors => 'Sensori corporei';

  @override
  String get grpActivity => 'Attività';

  @override
  String get grpFiles => 'File';

  @override
  String get grpOverlay => 'Sovrapposizione';

  @override
  String get grpInstalls => 'Installazioni';

  @override
  String get grpAppList => 'Elenco app';

  @override
  String get lblCoarseLocation => 'Posizione approssimativa';

  @override
  String get lblFineLocation => 'Posizione precisa';

  @override
  String get lblBackgroundLocation => 'Posizione sempre';

  @override
  String get lblAccounts => 'Account';

  @override
  String get lblReadSms => 'Leggere SMS';

  @override
  String get lblReceiveSms => 'Ricevere SMS';

  @override
  String get lblSendSms => 'Inviare SMS';

  @override
  String get lblPhoneState => 'Stato del telefono';

  @override
  String get lblCallPhone => 'Fare chiamate';

  @override
  String get lblActivity => 'Attività fisica';

  @override
  String get lblAllFiles => 'Tutti i file';

  @override
  String get lblFilesMedia => 'File e contenuti multimediali';

  @override
  String get lblPhotos => 'Foto';

  @override
  String get lblVideos => 'Video';

  @override
  String get lblAudioFiles => 'File audio';

  @override
  String get lblOverlay => 'Mostrare sopra altre app';

  @override
  String get lblInstall => 'Installare altre app';

  @override
  String get lblAppList => 'Vedere tutte le app';

  @override
  String get whyMic => 'Può registrare l’audio.';

  @override
  String get whyCamera => 'Può usare la fotocamera.';

  @override
  String get whyCoarse => 'Può vedere la tua posizione approssimativa.';

  @override
  String get whyFine => 'Può vedere la tua posizione precisa.';

  @override
  String get whyBackground => 'Può seguire la tua posizione in ogni momento.';

  @override
  String get whyContacts => 'Può leggere i tuoi contatti.';

  @override
  String get whyAccounts => 'Può vedere gli account del telefono.';

  @override
  String get whyReadSms => 'Può leggere i tuoi SMS.';

  @override
  String get whyReceiveSms => 'Può ricevere i tuoi SMS.';

  @override
  String get whySendSms => 'Può inviare SMS.';

  @override
  String get whyCallLog => 'Può leggere la cronologia delle chiamate.';

  @override
  String get whyPhoneState => 'Può vedere lo stato del telefono.';

  @override
  String get whyCallPhone => 'Può fare chiamate.';

  @override
  String get whyCalendar => 'Può leggere il tuo calendario.';

  @override
  String get whyBody => 'Può leggere i sensori corporei.';

  @override
  String get whyActivity => 'Può vedere la tua attività fisica.';

  @override
  String get whyAllFiles => 'Può accedere a tutti i file del telefono.';

  @override
  String get whyFilesMedia => 'Può leggere file e contenuti multimediali.';

  @override
  String get whyPhotos => 'Può leggere le tue foto.';

  @override
  String get whyVideos => 'Può leggere i tuoi video.';

  @override
  String get whyAudio => 'Può leggere i tuoi file audio.';

  @override
  String get whyOverlay => 'Può comparire sopra altre app.';

  @override
  String get whyInstall => 'Può installare altre app.';

  @override
  String get whyAppList => 'Può vedere tutte le app sul telefono.';

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeBody =>
      'Per impostazione predefinita segue il telefono';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get settingsScanning => 'Scansione';

  @override
  String get settingsAlerts => 'Avvisi sulle app';

  @override
  String get settingsAlertsBody =>
      'Segnala app nuove e nuovi permessi. Controlla circa ogni 6 ore.';

  @override
  String get settingsWeekly => 'Riepilogo settimanale';

  @override
  String get settingsWeeklyBody =>
      'Una notifica a settimana con il tuo punteggio e cosa è cambiato';

  @override
  String get settingsUsage => 'Accesso all’utilizzo';

  @override
  String get settingsUsageOn =>
      'Attivo. Peekless può vedere quando le app sono state aperte l’ultima volta.';

  @override
  String get settingsUsageOff =>
      'Disattivato. Facoltativo. Permette a Peekless di trovare le app che non usi più. Resta sul tuo telefono.';

  @override
  String get settingsSystemApps => 'Includi le app di sistema';

  @override
  String get settingsSystemAppsBody =>
      'Scansiona anche le app integrate nel telefono';

  @override
  String get settingsRescan => 'Scansiona ora';

  @override
  String get settingsRescanBody => 'Ricontrolla tutte le app';

  @override
  String get settingsUpdates => 'Aggiornamenti';

  @override
  String get settingsCheckUpdates => 'Cerca aggiornamenti';

  @override
  String settingsVersion(String version) {
    return 'Versione $version · solo quando tocchi tu';
  }

  @override
  String get settingsAbout => 'Informazioni';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsPrivacyBody => 'Tutto resta sul tuo telefono';

  @override
  String get settingsOpenSource => 'Open source';

  @override
  String get settingsOpenSourceBody =>
      'Licenza GPL-3.0. Vedi il codice su GitHub';

  @override
  String get settingsDeveloped => 'Sviluppato da Lumio Apps';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get languageSystem => 'Segui la lingua del telefono';

  @override
  String get updChecking => 'Ricerca aggiornamenti...';

  @override
  String get updLatest => 'Hai l’ultima versione.';

  @override
  String get updFailed =>
      'Impossibile cercare aggiornamenti. Riprova più tardi.';

  @override
  String get updTitle => 'Aggiornamento disponibile';

  @override
  String updReady(String version) {
    return 'La versione $version è pronta per l’installazione.';
  }

  @override
  String get updDownloadFailed =>
      'Download non riuscito. Controlla la connessione e riprova.';

  @override
  String get updInstall => 'Scarica e installa';

  @override
  String get notifyDenied =>
      'Consenti le notifiche a Peekless per attivare questa opzione.';

  @override
  String get settingChangeFailed =>
      'Impossibile modificare questa impostazione.';

  @override
  String get usageOpenFailed =>
      'Impossibile aprire le impostazioni di accesso all’utilizzo.';

  @override
  String alertNewTitle(String name) {
    return 'Nuova app: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Punteggio $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name è cambiata';
  }

  @override
  String alertNowHas(String list) {
    return 'Ora ha: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Ora consentito: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Nuovo tracker: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Punteggio $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Altre modifiche';

  @override
  String alertMoreBody(int count) {
    return 'Altre modifiche: $count. Apri Peekless per vederle.';
  }

  @override
  String get weeklyTitle => 'Il tuo riepilogo settimanale di Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Punteggio $score/100, $diff in più rispetto alla settimana scorsa.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Punteggio $score/100, $diff in meno rispetto alla settimana scorsa.';
  }

  @override
  String weeklySame(int score) {
    return 'Punteggio $score/100, invariato rispetto alla settimana scorsa.';
  }

  @override
  String weeklyScore(int score) {
    return 'Punteggio $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'App nuove: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'App rimosse: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Permessi attivati: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Nuovi tracker: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Questa settimana: $list.';
  }

  @override
  String get weeklyNone => 'Nessuna modifica questa settimana.';

  @override
  String weeklyRisky(int count) {
    return 'App a rischio: $count.';
  }

  @override
  String get reportTitle => 'Report privacy di Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Punteggio: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'App controllate: $total. A rischio: $risky, Medie: $medium, Sicure: $safe';
  }

  @override
  String get reportAttention => 'Richiedono attenzione:';

  @override
  String get reportFooter =>
      'Controllato sul mio telefono con Peekless. Nulla è stato inviato da nessuna parte.';

  @override
  String get trendTitle => 'Punteggio nel tempo';

  @override
  String trendUp(int diff, int days) {
    return 'In aumento di $diff (giorni monitorati: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'In calo di $diff (giorni monitorati: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Nessuna variazione (giorni monitorati: $days)';
  }

  @override
  String get settingsQuick => 'Accesso rapido';

  @override
  String get quickWidget => 'Widget della schermata Home';

  @override
  String get quickWidgetBody =>
      'Mostra il tuo punteggio privacy nella schermata Home';

  @override
  String get quickTile => 'Riquadro Impostazioni rapide';

  @override
  String get quickTileBody =>
      'Vedi il tuo punteggio nel pannello delle impostazioni rapide';

  @override
  String get quickManual =>
      'Il telefono non ha potuto aggiungerlo automaticamente. Aggiungilo a mano: tieni premuta la schermata Home (widget) o modifica il pannello delle impostazioni rapide (riquadro).';

  @override
  String get settingsExport => 'Esporta rapporto';

  @override
  String get settingsExportBody =>
      'Salva il rapporto come file PDF o JSON e condividilo';

  @override
  String get exportFailed => 'Impossibile creare il rapporto.';

  @override
  String get settingsTrackerList => 'Elenco dei tracker';

  @override
  String settingsTrackerListBody(int count) {
    return 'Tocca per aggiornare. $count tracker noti. Solo quando tocchi.';
  }

  @override
  String get trackerListUpdating => 'Aggiornamento dell’elenco dei tracker…';

  @override
  String trackerListUpdated(int count) {
    return 'Elenco dei tracker aggiornato. $count tracker noti.';
  }

  @override
  String get trackerListCurrent => 'L’elenco dei tracker è già aggiornato.';

  @override
  String get trackerListFailed =>
      'Impossibile aggiornare l’elenco dei tracker. Controlla la connessione.';
}
