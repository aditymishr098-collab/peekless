// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get navHome => 'Accueil';

  @override
  String get navApps => 'Applis';

  @override
  String get navPermissions => 'Autorisations';

  @override
  String get navChanges => 'Changements';

  @override
  String get navSettings => 'Réglages';

  @override
  String get levelRisky => 'À risque';

  @override
  String get levelMedium => 'Moyennes';

  @override
  String get levelSafe => 'Sûres';

  @override
  String get overallHigh => 'Risque élevé';

  @override
  String get overallMedium => 'Risque moyen';

  @override
  String get overallLow => 'Risque faible';

  @override
  String get cancel => 'Annuler';

  @override
  String get clear => 'Effacer';

  @override
  String get back => 'Retour';

  @override
  String get later => 'Plus tard';

  @override
  String get noneFound => 'Rien trouvé';

  @override
  String get scanning => 'Analyse en cours...';

  @override
  String get scanFailed => 'Échec de l’analyse';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get couldNotOpenSettings =>
      'Impossible d’ouvrir les réglages de l’appli.';

  @override
  String get homeShare => 'Partager le rapport';

  @override
  String get homeRescan => 'Analyser à nouveau les applis';

  @override
  String homeAppsChecked(int count) {
    return 'Applis vérifiées sur ce téléphone : $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Applis comptées : $counted, de confiance : $trusted';
  }

  @override
  String get homeNeedsAttention => 'À surveiller';

  @override
  String get homeSeeAll => 'Tout voir';

  @override
  String get homeAllSafe =>
      'Rien à signaler. Toutes les applis semblent sûres.';

  @override
  String get homeShareFailed => 'Impossible de partager le rapport.';

  @override
  String get scoreOf100 => 'sur 100';

  @override
  String scoreSemantics(int score) {
    return 'Score de confidentialité : $score sur 100';
  }

  @override
  String wizardCard(int count) {
    return 'Vérifiez les applis à accès sensible : $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Applis : $count, les plus risquées d’abord';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Affichage de $shown sur $total';
  }

  @override
  String get appsSearch => 'Rechercher des applis';

  @override
  String get appsNone => 'Aucune appli trouvée';

  @override
  String get chipMine => 'Mes applis';

  @override
  String get chipSystem => 'Système';

  @override
  String get filterAll => 'Toutes';

  @override
  String get filterTrackers => 'Avec traqueurs';

  @override
  String get filterSpecial => 'Accès spécial';

  @override
  String get filterNotStore => 'Hors boutique';

  @override
  String get filterOffline => 'Hors ligne';

  @override
  String get filterTrusted => 'De confiance';

  @override
  String get permSubtitle => 'Qui peut utiliser quoi sur ce téléphone';

  @override
  String get trackersSubtitle => 'Quel traqueur se trouve dans quelles applis';

  @override
  String get segTrackers => 'Traqueurs';

  @override
  String get noTrackers => 'Aucun traqueur connu trouvé.';

  @override
  String get noPerms => 'Aucune autorisation sensible trouvée.';

  @override
  String appsCount(int count) {
    return 'Applis : $count';
  }

  @override
  String get changesSubtitle =>
      'Nouvelles applis et changements d’autorisations';

  @override
  String get clearTitle => 'Effacer les changements ?';

  @override
  String get clearBody =>
      'La liste des changements sera supprimée de ce téléphone.';

  @override
  String get changesEmpty =>
      'Aucun changement pour l’instant. Peekless affichera ici les applis ajoutées ou supprimées, les nouvelles autorisations et les nouveaux traqueurs.';

  @override
  String evInstalled(int score, String level) {
    return 'Installée. Score : $score ($level).';
  }

  @override
  String get evRemoved => 'Supprimée.';

  @override
  String evAllowed(String label) {
    return 'Désormais autorisé : $label.';
  }

  @override
  String evRevoked(String label) {
    return 'N’est plus autorisé : $label.';
  }

  @override
  String evTracker(String name) {
    return 'Nouveau traqueur détecté : $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label : activé.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label : désactivé.';
  }

  @override
  String get checksTitle => 'Contrôles de sécurité';

  @override
  String get checksIntro =>
      'Des points à revoir. Touchez un contrôle pour voir les applis concernées.';

  @override
  String get checkUnusedTitle => 'Applis inutilisées à accès sensible';

  @override
  String get checkDebuggableTitle => 'Versions de débogage';

  @override
  String get checkOfflineTitle => 'Applis hors ligne';

  @override
  String get checkAccessibilityDesc =>
      'Ces applis peuvent lire votre écran et appuyer à votre place.';

  @override
  String get checkAdminDesc =>
      'Ces applis peuvent verrouiller ou effacer le téléphone et empêcher leur désinstallation.';

  @override
  String get checkNotificationDesc =>
      'Ces applis peuvent lire toutes vos notifications, y compris les codes.';

  @override
  String checkUnusedDesc(int days) {
    return 'Non ouvertes depuis $days jours, mais elles peuvent toujours utiliser des autorisations sensibles. Pensez à les supprimer.';
  }

  @override
  String get checkNotStoreDesc =>
      'Installées depuis un fichier ou un ordinateur. Personne ne les a vérifiées pour vous.';

  @override
  String get checkDebuggableDesc =>
      'Versions de test qui peuvent être inspectées depuis un ordinateur.';

  @override
  String get checkOldDesc =>
      'Ces applis contournent les nouvelles protections de confidentialité d’Android.';

  @override
  String get checkOfflineDesc =>
      'Pas d’autorisation Internet : elles ne peuvent pas envoyer de données en ligne.';

  @override
  String get usagePromptBody =>
      'Facultatif. Activez l’accès à l’usage pour repérer les applis que vous n’ouvrez plus depuis longtemps mais qui peuvent encore utiliser votre micro, votre position ou vos contacts. Les données ne quittent pas votre téléphone.';

  @override
  String get usagePromptButton => 'Activer l’accès à l’usage';

  @override
  String get securityNone => 'Aucun point de sécurité trouvé sur ce téléphone.';

  @override
  String securityOffline(int count) {
    return 'Applis fonctionnant entièrement hors ligne : $count';
  }

  @override
  String get fixWizardTitle => 'Assistant de correction';

  @override
  String wizardStep(int index, int total) {
    return 'Appli $index sur $total';
  }

  @override
  String get wizardQuestion => 'Cette appli a-t-elle vraiment besoin de cela ?';

  @override
  String get wizardHint =>
      'Touchez « Ouvrir les réglages de l’appli », puis Autorisations, et désactivez ce dont l’appli n’a pas besoin.';

  @override
  String get openAppSettings => 'Ouvrir les réglages de l’appli';

  @override
  String get trustApp => 'Je fais confiance à cette appli';

  @override
  String get nextApp => 'Appli suivante';

  @override
  String get finish => 'Terminer';

  @override
  String get wizardDone => 'Tout est passé en revue';

  @override
  String get wizardNothing => 'Rien à examiner';

  @override
  String get wizardNothingBody =>
      'Aucune appli n’a d’accès sensible pour le moment.';

  @override
  String get wizardRescanBody =>
      'Relancez une analyse pour voir votre nouveau score.';

  @override
  String get rescanFinish => 'Réanalyser et terminer';

  @override
  String get wizardRequested => 'demandé, pas encore autorisé';

  @override
  String scoreTrackers(int count) {
    return 'Traqueurs connus : $count';
  }

  @override
  String get scoreDebuggable => 'Version de débogage';

  @override
  String get scoreOldTarget => 'Conçue pour un Android très ancien';

  @override
  String unusualFor(String groups) {
    return 'Inhabituel pour ce type d’appli : $groups';
  }

  @override
  String get noteRequested => 'demandé, compte pour moitié';

  @override
  String get noteAllowed => 'autorisé';

  @override
  String noteTrackers(int points, int max) {
    return '$points chacun, maximum $max';
  }

  @override
  String get noteTurnedOn => 'activé';

  @override
  String get noteDebuggable => 'peut être inspecté depuis un ordinateur';

  @override
  String noteApi(int apiLevel) {
    return 'niveau d’API $apiLevel';
  }

  @override
  String get noteExtra => 'réduction supplémentaire';

  @override
  String get explainTitle => 'Comment fonctionne le score';

  @override
  String get explainIntro =>
      'Chaque appli part de 100. Des points sont retirés selon ce que l’appli peut faire.';

  @override
  String get explainStart => 'Départ';

  @override
  String get explainNothing => 'Rien retiré';

  @override
  String get explainNothingNote =>
      'Aucune autorisation sensible ni traqueur connu';

  @override
  String get explainScore => 'Score';

  @override
  String get explainRules => 'Les règles';

  @override
  String get rule1 =>
      'Dans chaque groupe, seule l’autorisation la plus lourde compte. Par exemple, la position précise et approximative ne comptent qu’une fois.';

  @override
  String get rule2 =>
      'Les autorisations spéciales (tous les fichiers, affichage par-dessus d’autres applis, installation d’applis) comptent pour moitié si l’appli les a seulement demandées.';

  @override
  String rule3(int points, int max) {
    return 'Chaque traqueur connu retire $points points, jusqu’à $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Un accès spécial activé retire des points : accessibilité $a, administrateur de l’appareil $b, accès aux notifications $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Une version de débogage retire $a. Une appli conçue pour Android 7 ou plus ancien retire $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Si une autorisation est inhabituelle pour ce type d’appli (par exemple le micro dans une lampe de poche), $points points de plus sont retirés, pour $maxGroups groupes d’autorisations au maximum.';
  }

  @override
  String get rule7 =>
      '70 ou plus : Sûre. De 40 à 69 : Moyenne. Moins de 40 : À risque.';

  @override
  String get explainFooter =>
      'Le score montre ce qu’une appli peut faire, pas ce qu’elle fait en ce moment.';

  @override
  String get howScore => 'Comment ce score est-il calculé ?';

  @override
  String summaryTrackers(int count) {
    return 'Traqueurs connus : $count.';
  }

  @override
  String get summaryNone => 'Aucune autorisation sensible ni traqueur connu.';

  @override
  String metaTrackers(int count) {
    return 'Traqueurs : $count';
  }

  @override
  String get metaNone => 'Aucune autorisation sensible';

  @override
  String get detailSecurity => 'Sécurité';

  @override
  String get detailSource => 'Source';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Peut accéder à Internet';

  @override
  String get detailOffline => 'Hors ligne';

  @override
  String get detailOfflineBody =>
      'Pas d’autorisation Internet : elle ne peut pas envoyer de données en ligne';

  @override
  String get detailLastOpened => 'Dernière ouverture';

  @override
  String get today => 'Aujourd’hui';

  @override
  String get yesterday => 'Hier';

  @override
  String daysSince(int days) {
    return 'Jours depuis la dernière utilisation : $days';
  }

  @override
  String get detailDebuggableBody =>
      'Version de test pouvant être inspectée depuis un ordinateur';

  @override
  String detailOldBody(int apiLevel) {
    return 'Niveau d’API $apiLevel : les nouvelles protections de confidentialité sont donc contournées';
  }

  @override
  String get detailTrustBody =>
      'Ne pas compter dans À risque ni dans les alertes';

  @override
  String get detailNoPerms =>
      'Cette appli ne demande aucune autorisation sensible.';

  @override
  String get chipAllowed => 'Autorisé';

  @override
  String get chipRequested => 'Demandé';

  @override
  String get chipNotAllowed => 'Non autorisé';

  @override
  String sensitiveNote(String why) {
    return 'Sensible : $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Traqueurs trouvés : $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless montre ce qu’une appli peut faire, pas ce qu’elle fait en ce moment. Les traqueurs sont détectés dans le manifeste de l’appli ; certains peuvent donc passer inaperçus.';

  @override
  String get srcBuiltIn => 'Intégrée à votre téléphone';

  @override
  String get srcUnknown =>
      'Inconnue (installée depuis un fichier ou un ordinateur)';

  @override
  String get srcApk => 'Un fichier APK que vous avez ouvert';

  @override
  String get srcAdb => 'Un ordinateur (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Installée par $name';
  }

  @override
  String get accessibilityLabel => 'Accès à l’accessibilité';

  @override
  String get adminLabel => 'Administrateur de l’appareil';

  @override
  String get notificationLabel => 'Accès aux notifications';

  @override
  String get accessibilityWhy =>
      'Activé. Peut lire ce qui s’affiche à l’écran et agir à votre place.';

  @override
  String get adminWhy =>
      'Activé. Peut verrouiller le téléphone, l’effacer et empêcher la désinstallation.';

  @override
  String get notificationWhy =>
      'Activé. Peut lire toutes vos notifications, y compris les codes.';

  @override
  String get grpMicrophone => 'Micro';

  @override
  String get grpCamera => 'Appareil photo';

  @override
  String get grpLocation => 'Position';

  @override
  String get grpContacts => 'Contacts';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Journal d’appels';

  @override
  String get grpPhone => 'Téléphone';

  @override
  String get grpCalendar => 'Agenda';

  @override
  String get grpBodySensors => 'Capteurs corporels';

  @override
  String get grpActivity => 'Activité';

  @override
  String get grpFiles => 'Fichiers';

  @override
  String get grpOverlay => 'Superposition';

  @override
  String get grpInstalls => 'Installations';

  @override
  String get grpAppList => 'Liste des applis';

  @override
  String get lblCoarseLocation => 'Position approximative';

  @override
  String get lblFineLocation => 'Position précise';

  @override
  String get lblBackgroundLocation => 'Position en permanence';

  @override
  String get lblAccounts => 'Comptes';

  @override
  String get lblReadSms => 'Lire les SMS';

  @override
  String get lblReceiveSms => 'Recevoir des SMS';

  @override
  String get lblSendSms => 'Envoyer des SMS';

  @override
  String get lblPhoneState => 'État du téléphone';

  @override
  String get lblCallPhone => 'Passer des appels';

  @override
  String get lblActivity => 'Activité physique';

  @override
  String get lblAllFiles => 'Tous les fichiers';

  @override
  String get lblFilesMedia => 'Fichiers et médias';

  @override
  String get lblPhotos => 'Photos';

  @override
  String get lblVideos => 'Vidéos';

  @override
  String get lblAudioFiles => 'Fichiers audio';

  @override
  String get lblOverlay => 'Affichage par-dessus d’autres applis';

  @override
  String get lblInstall => 'Installer d’autres applis';

  @override
  String get lblAppList => 'Voir toutes les applis';

  @override
  String get whyMic => 'Peut enregistrer du son.';

  @override
  String get whyCamera => 'Peut utiliser l’appareil photo.';

  @override
  String get whyCoarse => 'Peut voir votre position approximative.';

  @override
  String get whyFine => 'Peut voir votre position précise.';

  @override
  String get whyBackground => 'Peut suivre votre position en permanence.';

  @override
  String get whyContacts => 'Peut lire vos contacts.';

  @override
  String get whyAccounts => 'Peut voir les comptes du téléphone.';

  @override
  String get whyReadSms => 'Peut lire vos SMS.';

  @override
  String get whyReceiveSms => 'Peut recevoir vos SMS.';

  @override
  String get whySendSms => 'Peut envoyer des SMS.';

  @override
  String get whyCallLog => 'Peut lire l’historique de vos appels.';

  @override
  String get whyPhoneState => 'Peut voir l’état de votre téléphone.';

  @override
  String get whyCallPhone => 'Peut passer des appels.';

  @override
  String get whyCalendar => 'Peut lire votre agenda.';

  @override
  String get whyBody => 'Peut lire les capteurs corporels.';

  @override
  String get whyActivity => 'Peut voir votre activité physique.';

  @override
  String get whyAllFiles => 'Peut accéder à tous les fichiers du téléphone.';

  @override
  String get whyFilesMedia => 'Peut lire les fichiers et les médias.';

  @override
  String get whyPhotos => 'Peut lire vos photos.';

  @override
  String get whyVideos => 'Peut lire vos vidéos.';

  @override
  String get whyAudio => 'Peut lire vos fichiers audio.';

  @override
  String get whyOverlay => 'Peut s’afficher par-dessus d’autres applis.';

  @override
  String get whyInstall => 'Peut installer d’autres applis.';

  @override
  String get whyAppList => 'Peut voir toutes les applis du téléphone.';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get settingsThemeBody => 'Suit votre téléphone par défaut';

  @override
  String get themeSystem => 'Système';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get settingsScanning => 'Analyse';

  @override
  String get settingsAlerts => 'Alertes d’applis';

  @override
  String get settingsAlertsBody =>
      'Prévient des nouvelles applis et des nouvelles autorisations. Vérifie environ toutes les 6 heures.';

  @override
  String get settingsWeekly => 'Résumé hebdomadaire';

  @override
  String get settingsWeeklyBody =>
      'Une notification par semaine avec votre score et ce qui a changé';

  @override
  String get settingsUsage => 'Accès à l’usage';

  @override
  String get settingsUsageOn =>
      'Activé. Peekless peut voir quand les applis ont été ouvertes pour la dernière fois.';

  @override
  String get settingsUsageOff =>
      'Désactivé. Facultatif. Permet à Peekless de repérer les applis que vous n’utilisez plus. Reste sur votre téléphone.';

  @override
  String get settingsSystemApps => 'Inclure les applis système';

  @override
  String get settingsSystemAppsBody =>
      'Analyser aussi les applis intégrées au téléphone';

  @override
  String get settingsRescan => 'Analyser maintenant';

  @override
  String get settingsRescanBody => 'Revérifier toutes les applis';

  @override
  String get settingsUpdates => 'Mises à jour';

  @override
  String get settingsCheckUpdates => 'Rechercher des mises à jour';

  @override
  String settingsVersion(String version) {
    return 'Version $version · uniquement quand vous le demandez';
  }

  @override
  String get settingsAbout => 'À propos';

  @override
  String get settingsPrivacy => 'Confidentialité';

  @override
  String get settingsPrivacyBody => 'Tout reste sur votre téléphone';

  @override
  String get settingsOpenSource => 'Open source';

  @override
  String get settingsOpenSourceBody =>
      'Licence GPL-3.0. Voir le code sur GitHub';

  @override
  String get settingsDeveloped => 'Développé par Lumio Apps';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get languageSystem => 'Suivre la langue du téléphone';

  @override
  String get updChecking => 'Recherche de mises à jour...';

  @override
  String get updLatest => 'Vous avez la dernière version.';

  @override
  String get updFailed =>
      'Impossible de rechercher des mises à jour. Réessayez plus tard.';

  @override
  String get updTitle => 'Mise à jour disponible';

  @override
  String updReady(String version) {
    return 'La version $version est prête à être installée.';
  }

  @override
  String get updDownloadFailed =>
      'Échec du téléchargement. Vérifiez votre connexion et réessayez.';

  @override
  String get updInstall => 'Télécharger et installer';

  @override
  String get notifyDenied =>
      'Autorisez les notifications de Peekless pour activer cette option.';

  @override
  String get settingChangeFailed => 'Impossible de modifier ce réglage.';

  @override
  String get usageOpenFailed =>
      'Impossible d’ouvrir les réglages d’accès à l’usage.';

  @override
  String alertNewTitle(String name) {
    return 'Nouvelle appli : $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Score $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name a changé';
  }

  @override
  String alertNowHas(String list) {
    return 'A maintenant : $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Désormais autorisé : $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Nouveau traqueur : $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Score $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Autres changements';

  @override
  String alertMoreBody(int count) {
    return 'Autres changements : $count. Ouvrez Peekless pour les voir.';
  }

  @override
  String get weeklyTitle => 'Votre résumé hebdomadaire Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Score $score/100, en hausse de $diff par rapport à la semaine dernière.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Score $score/100, en baisse de $diff par rapport à la semaine dernière.';
  }

  @override
  String weeklySame(int score) {
    return 'Score $score/100, inchangé depuis la semaine dernière.';
  }

  @override
  String weeklyScore(int score) {
    return 'Score $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Nouvelles applis : $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Applis supprimées : $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Autorisations activées : $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Nouveaux traqueurs : $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Cette semaine : $list.';
  }

  @override
  String get weeklyNone => 'Aucun changement cette semaine.';

  @override
  String weeklyRisky(int count) {
    return 'Applis à risque : $count.';
  }

  @override
  String get reportTitle => 'Rapport de confidentialité Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Score : $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Applis vérifiées : $total. À risque : $risky, Moyennes : $medium, Sûres : $safe';
  }

  @override
  String get reportAttention => 'À surveiller :';

  @override
  String get reportFooter =>
      'Vérifié sur mon téléphone avec Peekless. Rien n’a été envoyé nulle part.';

  @override
  String get trendTitle => 'Score dans le temps';

  @override
  String trendUp(int diff, int days) {
    return 'En hausse de $diff (jours suivis : $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'En baisse de $diff (jours suivis : $days)';
  }

  @override
  String trendSame(int days) {
    return 'Aucun changement (jours suivis : $days)';
  }

  @override
  String get settingsQuick => 'Accès rapide';

  @override
  String get quickWidget => 'Widget d’écran d’accueil';

  @override
  String get quickWidgetBody =>
      'Affichez votre score de confidentialité sur l’écran d’accueil';

  @override
  String get quickTile => 'Tuile des réglages rapides';

  @override
  String get quickTileBody =>
      'Voyez votre score dans le panneau des réglages rapides';

  @override
  String get quickManual =>
      'Votre téléphone n’a pas pu l’ajouter automatiquement. Ajoutez-le à la main : appui long sur l’écran d’accueil (widget) ou modifiez le panneau des réglages rapides (tuile).';

  @override
  String get settingsExport => 'Exporter le rapport';

  @override
  String get settingsExportBody =>
      'Enregistrez le rapport en PDF ou JSON et partagez-le';

  @override
  String get exportFailed => 'Impossible de créer le rapport.';

  @override
  String get settingsTrackerList => 'Liste des traqueurs';

  @override
  String settingsTrackerListBody(int count) {
    return 'Touchez pour mettre à jour. $count traqueurs connus. Uniquement quand vous touchez.';
  }

  @override
  String get trackerListUpdating => 'Mise à jour de la liste des traqueurs…';

  @override
  String trackerListUpdated(int count) {
    return 'Liste des traqueurs mise à jour. $count traqueurs connus.';
  }

  @override
  String get trackerListCurrent => 'La liste des traqueurs est déjà à jour.';

  @override
  String get trackerListFailed =>
      'Impossible de mettre à jour la liste des traqueurs. Vérifiez votre connexion.';

  @override
  String get homeTagline => 'Voyez qui vous espionne.';

  @override
  String get homeOverviewBody =>
      'Part de vos applis qui peuvent utiliser chacun';
}
