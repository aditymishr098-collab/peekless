import 'security_checks.dart';
import 'install_source.dart';
import 'l10n/app_localizations.dart';
import 'models.dart';
import 'scoring.dart';

/// All the text that is built from data: names of permissions, summaries,
/// score lines and so on. The logic files hold ids and numbers only. Every
/// function here takes the translations and returns text in the user's language.

String levelName(AppLocalizations l, RiskLevel level) => switch (level) {
      RiskLevel.risky => l.levelRisky,
      RiskLevel.medium => l.levelMedium,
      RiskLevel.safe => l.levelSafe,
    };

String overallLabel(AppLocalizations l, RiskLevel level) => switch (level) {
      RiskLevel.risky => l.overallHigh,
      RiskLevel.medium => l.overallMedium,
      RiskLevel.safe => l.overallLow,
    };

/// Name of a permission group id, or of a special access id.
String groupName(AppLocalizations l, String id) => switch (id) {
      'Microphone' => l.grpMicrophone,
      'Camera' => l.grpCamera,
      'Location' => l.grpLocation,
      'Contacts' => l.grpContacts,
      'SMS' => l.grpSms,
      'Call log' => l.grpCallLog,
      'Phone' => l.grpPhone,
      'Calendar' => l.grpCalendar,
      'Body sensors' => l.grpBodySensors,
      'Activity' => l.grpActivity,
      'Files' => l.grpFiles,
      'Overlay' => l.grpOverlay,
      'Installs' => l.grpInstalls,
      'App list' => l.grpAppList,
      accessibilityAccess => l.accessibilityLabel,
      deviceAdminAccess => l.adminLabel,
      notificationAccess => l.notificationLabel,
      _ => id,
    };

String specialLabel(AppLocalizations l, String id) => switch (id) {
      accessibilityAccess => l.accessibilityLabel,
      deviceAdminAccess => l.adminLabel,
      notificationAccess => l.notificationLabel,
      _ => id,
    };

String specialWhy(AppLocalizations l, String id) => switch (id) {
      accessibilityAccess => l.accessibilityWhy,
      deviceAdminAccess => l.adminWhy,
      notificationAccess => l.notificationWhy,
      _ => '',
    };

String ruleLabel(AppLocalizations l, PermissionRule rule) => switch (rule.id) {
      'android.permission.RECORD_AUDIO' => l.grpMicrophone,
      'android.permission.CAMERA' => l.grpCamera,
      'android.permission.ACCESS_COARSE_LOCATION' => l.lblCoarseLocation,
      'android.permission.ACCESS_FINE_LOCATION' => l.lblFineLocation,
      'android.permission.ACCESS_BACKGROUND_LOCATION' => l.lblBackgroundLocation,
      'android.permission.READ_CONTACTS' => l.grpContacts,
      'android.permission.GET_ACCOUNTS' => l.lblAccounts,
      'android.permission.READ_SMS' => l.lblReadSms,
      'android.permission.RECEIVE_SMS' => l.lblReceiveSms,
      'android.permission.SEND_SMS' => l.lblSendSms,
      'android.permission.READ_CALL_LOG' => l.grpCallLog,
      'android.permission.READ_PHONE_STATE' => l.lblPhoneState,
      'android.permission.CALL_PHONE' => l.lblCallPhone,
      'android.permission.READ_CALENDAR' => l.grpCalendar,
      'android.permission.BODY_SENSORS' => l.grpBodySensors,
      'android.permission.ACTIVITY_RECOGNITION' => l.lblActivity,
      'android.permission.MANAGE_EXTERNAL_STORAGE' => l.lblAllFiles,
      'android.permission.READ_EXTERNAL_STORAGE' => l.lblFilesMedia,
      'android.permission.READ_MEDIA_IMAGES' => l.lblPhotos,
      'android.permission.READ_MEDIA_VIDEO' => l.lblVideos,
      'android.permission.READ_MEDIA_AUDIO' => l.lblAudioFiles,
      'android.permission.SYSTEM_ALERT_WINDOW' => l.lblOverlay,
      'android.permission.REQUEST_INSTALL_PACKAGES' => l.lblInstall,
      'android.permission.QUERY_ALL_PACKAGES' => l.lblAppList,
      _ => rule.id,
    };

/// A full sentence, for example "Can record audio."
String ruleWhy(AppLocalizations l, PermissionRule rule) => switch (rule.id) {
      'android.permission.RECORD_AUDIO' => l.whyMic,
      'android.permission.CAMERA' => l.whyCamera,
      'android.permission.ACCESS_COARSE_LOCATION' => l.whyCoarse,
      'android.permission.ACCESS_FINE_LOCATION' => l.whyFine,
      'android.permission.ACCESS_BACKGROUND_LOCATION' => l.whyBackground,
      'android.permission.READ_CONTACTS' => l.whyContacts,
      'android.permission.GET_ACCOUNTS' => l.whyAccounts,
      'android.permission.READ_SMS' => l.whyReadSms,
      'android.permission.RECEIVE_SMS' => l.whyReceiveSms,
      'android.permission.SEND_SMS' => l.whySendSms,
      'android.permission.READ_CALL_LOG' => l.whyCallLog,
      'android.permission.READ_PHONE_STATE' => l.whyPhoneState,
      'android.permission.CALL_PHONE' => l.whyCallPhone,
      'android.permission.READ_CALENDAR' => l.whyCalendar,
      'android.permission.BODY_SENSORS' => l.whyBody,
      'android.permission.ACTIVITY_RECOGNITION' => l.whyActivity,
      'android.permission.MANAGE_EXTERNAL_STORAGE' => l.whyAllFiles,
      'android.permission.READ_EXTERNAL_STORAGE' => l.whyFilesMedia,
      'android.permission.READ_MEDIA_IMAGES' => l.whyPhotos,
      'android.permission.READ_MEDIA_VIDEO' => l.whyVideos,
      'android.permission.READ_MEDIA_AUDIO' => l.whyAudio,
      'android.permission.SYSTEM_ALERT_WINDOW' => l.whyOverlay,
      'android.permission.REQUEST_INSTALL_PACKAGES' => l.whyInstall,
      'android.permission.QUERY_ALL_PACKAGES' => l.whyAppList,
      _ => '',
    };

/// Label of a permission by its Android name.
String permissionLabelById(AppLocalizations l, String id) {
  final rule = ruleById[id];
  return rule == null ? id : ruleLabel(l, rule);
}

/// Short line for list rows, for example "Microphone · Location · Trackers: 4".
String metaFor(AppLocalizations l, AppReport report) {
  final bits = report.findings
      .where((f) => f.active)
      .take(2)
      .map((f) => ruleLabel(l, f.rule))
      .toList();
  final count = report.app.trackers.length;
  if (count > 0) bits.add(l.metaTrackers(count));
  return bits.isEmpty ? l.metaNone : bits.join(' · ');
}

/// The short explanation under the score of an app.
String summaryFor(AppLocalizations l, AppReport report) {
  final parts = <String>[];
  for (final f in report.findings.where((f) => f.active).take(2)) {
    parts.add(ruleWhy(l, f.rule));
  }
  for (final id in report.app.special.where(specialPoints.containsKey)) {
    parts.add(specialWhy(l, id));
  }
  final trackers = report.app.trackers.length;
  if (trackers > 0) parts.add(l.summaryTrackers(trackers));
  if (report.unusualGroups.isNotEmpty) {
    parts.add(l.unusualFor(report.unusualGroups.map((g) => groupName(l, g)).join(', ')));
  }
  if (parts.isEmpty) parts.add(l.summaryNone);
  return parts.join(' ');
}

String lineLabel(AppLocalizations l, ScoreLine line) => switch (line.kind) {
      LineKind.permission => permissionLabelById(l, line.ref),
      LineKind.trackers => l.scoreTrackers(line.number),
      LineKind.special => specialLabel(l, line.ref),
      LineKind.debuggable => l.scoreDebuggable,
      LineKind.oldTarget => l.scoreOldTarget,
      LineKind.unusual => l.unusualFor(groupName(l, line.ref)),
    };

String lineNote(AppLocalizations l, ScoreLine line) => switch (line.kind) {
      LineKind.permission => line.requested ? l.noteRequested : l.noteAllowed,
      LineKind.trackers => l.noteTrackers(trackerPoints, trackerMaxPoints),
      LineKind.special => l.noteTurnedOn,
      LineKind.debuggable => l.noteDebuggable,
      LineKind.oldTarget => l.noteApi(line.number),
      LineKind.unusual => l.noteExtra,
    };

String checkTitle(AppLocalizations l, String id) => switch (id) {
      accessibilityAccess => l.accessibilityLabel,
      deviceAdminAccess => l.adminLabel,
      notificationAccess => l.notificationLabel,
      'unused' => l.checkUnusedTitle,
      'sideloaded' => l.filterNotStore,
      'debuggable' => l.checkDebuggableTitle,
      'oldTarget' => l.scoreOldTarget,
      'offline' => l.checkOfflineTitle,
      _ => id,
    };

String checkDescription(AppLocalizations l, String id) => switch (id) {
      accessibilityAccess => l.checkAccessibilityDesc,
      deviceAdminAccess => l.checkAdminDesc,
      notificationAccess => l.checkNotificationDesc,
      'unused' => l.checkUnusedDesc(unusedDays),
      'sideloaded' => l.checkNotStoreDesc,
      'debuggable' => l.checkDebuggableDesc,
      'oldTarget' => l.checkOldDesc,
      'offline' => l.checkOfflineDesc,
      _ => '',
    };

/// Where an app came from. Store names are brand names and stay as they are.
String sourceLabel(AppLocalizations l, String? installer, {required bool isSystem}) {
  if (isSystem) return l.srcBuiltIn;
  if (installer == null || installer.isEmpty) return l.srcUnknown;
  final store = storeNames[installer];
  if (store != null) return store;
  if (fileInstallers.contains(installer)) return l.srcApk;
  if (installer == adbInstaller) return l.srcAdb;
  return l.srcInstalledBy(installer);
}
