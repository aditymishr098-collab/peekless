// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get navHome => 'Inicio';

  @override
  String get navApps => 'Apps';

  @override
  String get navPermissions => 'Permisos';

  @override
  String get navChanges => 'Cambios';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get levelRisky => 'Arriesgadas';

  @override
  String get levelMedium => 'Medias';

  @override
  String get levelSafe => 'Seguras';

  @override
  String get overallHigh => 'Riesgo alto';

  @override
  String get overallMedium => 'Riesgo medio';

  @override
  String get overallLow => 'Riesgo bajo';

  @override
  String get cancel => 'Cancelar';

  @override
  String get clear => 'Borrar';

  @override
  String get back => 'Atrás';

  @override
  String get later => 'Más tarde';

  @override
  String get noneFound => 'No se encontró nada';

  @override
  String get scanning => 'Analizando...';

  @override
  String get scanFailed => 'Error al analizar';

  @override
  String get tryAgain => 'Reintentar';

  @override
  String get couldNotOpenSettings =>
      'No se pudieron abrir los ajustes de la app.';

  @override
  String get homeShare => 'Compartir informe';

  @override
  String get homeRescan => 'Volver a analizar las apps';

  @override
  String homeAppsChecked(int count) {
    return 'Apps revisadas en este teléfono: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Apps contadas: $counted, de confianza: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Requieren atención';

  @override
  String get homeSeeAll => 'Ver todas';

  @override
  String get homeAllSafe =>
      'Nada requiere atención. Todas las apps parecen seguras.';

  @override
  String get homeShareFailed => 'No se pudo compartir el informe.';

  @override
  String get scoreOf100 => 'de 100';

  @override
  String scoreSemantics(int score) {
    return 'Puntuación de privacidad: $score de 100';
  }

  @override
  String wizardCard(int count) {
    return 'Revisa las apps con acceso sensible: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Apps: $count, las más arriesgadas primero';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Mostrando $shown de $total';
  }

  @override
  String get appsSearch => 'Buscar apps';

  @override
  String get appsNone => 'No se encontraron apps';

  @override
  String get chipMine => 'Mis apps';

  @override
  String get chipSystem => 'Sistema';

  @override
  String get filterAll => 'Todas';

  @override
  String get filterTrackers => 'Con rastreadores';

  @override
  String get filterSpecial => 'Acceso especial';

  @override
  String get filterNotStore => 'Fuera de tienda';

  @override
  String get filterOffline => 'Sin conexión';

  @override
  String get filterTrusted => 'De confianza';

  @override
  String get permSubtitle => 'Quién puede usar qué en este teléfono';

  @override
  String get trackersSubtitle => 'Qué rastreador está en qué apps';

  @override
  String get segTrackers => 'Rastreadores';

  @override
  String get noTrackers => 'No se encontraron rastreadores conocidos.';

  @override
  String get noPerms => 'No se encontraron permisos sensibles.';

  @override
  String appsCount(int count) {
    return 'Apps: $count';
  }

  @override
  String get changesSubtitle => 'Apps nuevas y cambios de permisos';

  @override
  String get clearTitle => '¿Borrar los cambios?';

  @override
  String get clearBody => 'La lista de cambios se eliminará de este teléfono.';

  @override
  String get changesEmpty =>
      'Aún no hay cambios. Peekless mostrará aquí las apps nuevas y eliminadas, los permisos nuevos y los rastreadores nuevos.';

  @override
  String evInstalled(int score, String level) {
    return 'Instalada. Puntuación: $score ($level).';
  }

  @override
  String get evRemoved => 'Eliminada.';

  @override
  String evAllowed(String label) {
    return 'Ahora permitido: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Ya no permitido: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Rastreador nuevo encontrado: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: activado.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: desactivado.';
  }

  @override
  String get checksTitle => 'Comprobaciones de seguridad';

  @override
  String get checksIntro =>
      'Cosas que conviene revisar de nuevo. Toca una comprobación para ver las apps.';

  @override
  String get checkUnusedTitle => 'Apps sin usar con acceso sensible';

  @override
  String get checkDebuggableTitle => 'Compilaciones de depuración';

  @override
  String get checkOfflineTitle => 'Apps sin conexión';

  @override
  String get checkAccessibilityDesc =>
      'Estas apps pueden leer tu pantalla y tocar por ti.';

  @override
  String get checkAdminDesc =>
      'Estas apps pueden bloquear o borrar el teléfono e impedir que las desinstales.';

  @override
  String get checkNotificationDesc =>
      'Estas apps pueden leer todas tus notificaciones, incluidos los códigos.';

  @override
  String checkUnusedDesc(int days) {
    return 'No se han abierto en $days días, pero aún pueden usar permisos sensibles. Plantéate eliminarlas.';
  }

  @override
  String get checkNotStoreDesc =>
      'Instaladas desde un archivo o un ordenador. Nadie las ha revisado por ti.';

  @override
  String get checkDebuggableDesc =>
      'Compilaciones de prueba que se pueden inspeccionar desde un ordenador.';

  @override
  String get checkOldDesc =>
      'Estas apps eluden las nuevas protecciones de privacidad de Android.';

  @override
  String get checkOfflineDesc =>
      'No tienen permiso de internet, así que no pueden enviar datos en línea.';

  @override
  String get usagePromptBody =>
      'Opcional. Activa el acceso de uso para encontrar apps que no abres desde hace tiempo pero que aún pueden usar tu micrófono, ubicación o contactos. Los datos no salen de tu teléfono.';

  @override
  String get usagePromptButton => 'Activar acceso de uso';

  @override
  String get securityNone =>
      'No se encontraron avisos de seguridad en este teléfono.';

  @override
  String securityOffline(int count) {
    return 'Apps que funcionan totalmente sin conexión: $count';
  }

  @override
  String get fixWizardTitle => 'Asistente de correcciones';

  @override
  String wizardStep(int index, int total) {
    return 'App $index de $total';
  }

  @override
  String get wizardQuestion => '¿Esta app realmente necesita esto?';

  @override
  String get wizardHint =>
      'Toca «Abrir ajustes de la app», luego Permisos, y desactiva lo que la app no necesite.';

  @override
  String get openAppSettings => 'Abrir ajustes de la app';

  @override
  String get trustApp => 'Confío en esta app';

  @override
  String get nextApp => 'Siguiente app';

  @override
  String get finish => 'Terminar';

  @override
  String get wizardDone => 'Todo revisado';

  @override
  String get wizardNothing => 'Nada que revisar';

  @override
  String get wizardNothingBody =>
      'Ahora mismo ninguna app tiene acceso sensible.';

  @override
  String get wizardRescanBody =>
      'Vuelve a analizar para ver tu nueva puntuación.';

  @override
  String get rescanFinish => 'Analizar de nuevo y terminar';

  @override
  String get wizardRequested => 'solicitado, aún no permitido';

  @override
  String scoreTrackers(int count) {
    return 'Rastreadores conocidos: $count';
  }

  @override
  String get scoreDebuggable => 'Compilación de depuración';

  @override
  String get scoreOldTarget => 'Creada para un Android muy antiguo';

  @override
  String unusualFor(String groups) {
    return 'Inusual para este tipo de app: $groups';
  }

  @override
  String get noteRequested => 'solicitado, cuenta la mitad';

  @override
  String get noteAllowed => 'permitido';

  @override
  String noteTrackers(int points, int max) {
    return '$points cada uno, máximo $max';
  }

  @override
  String get noteTurnedOn => 'activado';

  @override
  String get noteDebuggable => 'se puede inspeccionar desde un ordenador';

  @override
  String noteApi(int apiLevel) {
    return 'nivel de API $apiLevel';
  }

  @override
  String get noteExtra => 'reducción adicional';

  @override
  String get explainTitle => 'Cómo funciona la puntuación';

  @override
  String get explainIntro =>
      'Cada app empieza con 100. Se restan puntos según lo que la app puede hacer.';

  @override
  String get explainStart => 'Inicio';

  @override
  String get explainNothing => 'No se restó nada';

  @override
  String get explainNothingNote =>
      'Sin permisos sensibles ni rastreadores conocidos';

  @override
  String get explainScore => 'Puntuación';

  @override
  String get explainRules => 'Reglas';

  @override
  String get rule1 =>
      'En cada grupo solo cuenta el permiso más grave. Por ejemplo, la ubicación precisa y la aproximada cuentan una sola vez.';

  @override
  String get rule2 =>
      'Los permisos especiales (todos los archivos, mostrar sobre otras apps, instalar apps) cuentan la mitad si la app solo los ha solicitado.';

  @override
  String rule3(int points, int max) {
    return 'Cada rastreador conocido resta $points puntos, hasta un máximo de $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Un acceso especial activado resta puntos: accesibilidad $a, administrador del dispositivo $b, acceso a notificaciones $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Una compilación de depuración resta $a. Una app creada para Android 7 o anterior resta $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Si un permiso es inusual para ese tipo de app (por ejemplo, micrófono en una linterna), se restan $points puntos más, hasta $maxGroups grupos de permisos.';
  }

  @override
  String get rule7 =>
      '70 o más: Segura. De 40 a 69: Media. Menos de 40: Arriesgada.';

  @override
  String get explainFooter =>
      'La puntuación muestra lo que una app puede hacer, no lo que hace ahora.';

  @override
  String get howScore => '¿Cómo se calcula esta puntuación?';

  @override
  String summaryTrackers(int count) {
    return 'Rastreadores conocidos: $count.';
  }

  @override
  String get summaryNone => 'Sin permisos sensibles ni rastreadores conocidos.';

  @override
  String metaTrackers(int count) {
    return 'Rastreadores: $count';
  }

  @override
  String get metaNone => 'Sin permisos sensibles';

  @override
  String get detailSecurity => 'Seguridad';

  @override
  String get detailSource => 'Origen';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Puede conectarse a internet';

  @override
  String get detailOffline => 'Sin conexión';

  @override
  String get detailOfflineBody =>
      'No tiene permiso de internet, así que no puede enviar datos en línea';

  @override
  String get detailLastOpened => 'Última apertura';

  @override
  String get today => 'Hoy';

  @override
  String get yesterday => 'Ayer';

  @override
  String daysSince(int days) {
    return 'Días desde el último uso: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Compilación de prueba que se puede inspeccionar desde un ordenador';

  @override
  String detailOldBody(int apiLevel) {
    return 'Nivel de API $apiLevel, así que elude las nuevas protecciones de privacidad';
  }

  @override
  String get detailTrustBody =>
      'No contar en Arriesgadas ni en las notificaciones';

  @override
  String get detailNoPerms => 'Esta app no solicita permisos sensibles.';

  @override
  String get chipAllowed => 'Permitido';

  @override
  String get chipRequested => 'Solicitado';

  @override
  String get chipNotAllowed => 'No permitido';

  @override
  String sensitiveNote(String why) {
    return 'Sensible: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Rastreadores encontrados: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless muestra lo que una app puede hacer, no lo que hace ahora. Los rastreadores se detectan en el manifiesto de la app, por lo que algunos pueden pasar desapercibidos.';

  @override
  String get srcBuiltIn => 'Integrada en tu teléfono';

  @override
  String get srcUnknown =>
      'Desconocido (instalada desde un archivo o un ordenador)';

  @override
  String get srcApk => 'Un archivo APK que abriste';

  @override
  String get srcAdb => 'Un ordenador (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Instalada por $name';
  }

  @override
  String get accessibilityLabel => 'Acceso de accesibilidad';

  @override
  String get adminLabel => 'Administrador del dispositivo';

  @override
  String get notificationLabel => 'Acceso a notificaciones';

  @override
  String get accessibilityWhy =>
      'Activado. Puede leer lo que hay en pantalla y actuar por ti.';

  @override
  String get adminWhy =>
      'Activado. Puede bloquear el teléfono, borrarlo e impedir la desinstalación.';

  @override
  String get notificationWhy =>
      'Activado. Puede leer todas tus notificaciones, incluidos los códigos.';

  @override
  String get grpMicrophone => 'Micrófono';

  @override
  String get grpCamera => 'Cámara';

  @override
  String get grpLocation => 'Ubicación';

  @override
  String get grpContacts => 'Contactos';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Registro de llamadas';

  @override
  String get grpPhone => 'Teléfono';

  @override
  String get grpCalendar => 'Calendario';

  @override
  String get grpBodySensors => 'Sensores corporales';

  @override
  String get grpActivity => 'Actividad';

  @override
  String get grpFiles => 'Archivos';

  @override
  String get grpOverlay => 'Superposición';

  @override
  String get grpInstalls => 'Instalaciones';

  @override
  String get grpAppList => 'Lista de apps';

  @override
  String get lblCoarseLocation => 'Ubicación aproximada';

  @override
  String get lblFineLocation => 'Ubicación precisa';

  @override
  String get lblBackgroundLocation => 'Ubicación todo el tiempo';

  @override
  String get lblAccounts => 'Cuentas';

  @override
  String get lblReadSms => 'Leer SMS';

  @override
  String get lblReceiveSms => 'Recibir SMS';

  @override
  String get lblSendSms => 'Enviar SMS';

  @override
  String get lblPhoneState => 'Estado del teléfono';

  @override
  String get lblCallPhone => 'Hacer llamadas';

  @override
  String get lblActivity => 'Actividad física';

  @override
  String get lblAllFiles => 'Todos los archivos';

  @override
  String get lblFilesMedia => 'Archivos y multimedia';

  @override
  String get lblPhotos => 'Fotos';

  @override
  String get lblVideos => 'Vídeos';

  @override
  String get lblAudioFiles => 'Archivos de audio';

  @override
  String get lblOverlay => 'Mostrar sobre otras apps';

  @override
  String get lblInstall => 'Instalar otras apps';

  @override
  String get lblAppList => 'Ver todas las apps';

  @override
  String get whyMic => 'Puede grabar sonido.';

  @override
  String get whyCamera => 'Puede usar la cámara.';

  @override
  String get whyCoarse => 'Puede ver tu ubicación aproximada.';

  @override
  String get whyFine => 'Puede ver tu ubicación precisa.';

  @override
  String get whyBackground => 'Puede seguir tu ubicación todo el tiempo.';

  @override
  String get whyContacts => 'Puede leer tus contactos.';

  @override
  String get whyAccounts => 'Puede ver las cuentas del teléfono.';

  @override
  String get whyReadSms => 'Puede leer tus SMS.';

  @override
  String get whyReceiveSms => 'Puede recibir tus SMS.';

  @override
  String get whySendSms => 'Puede enviar SMS.';

  @override
  String get whyCallLog => 'Puede leer tu historial de llamadas.';

  @override
  String get whyPhoneState => 'Puede ver el estado de tu teléfono.';

  @override
  String get whyCallPhone => 'Puede hacer llamadas.';

  @override
  String get whyCalendar => 'Puede leer tu calendario.';

  @override
  String get whyBody => 'Puede leer los sensores corporales.';

  @override
  String get whyActivity => 'Puede ver tu actividad física.';

  @override
  String get whyAllFiles => 'Puede acceder a todos los archivos del teléfono.';

  @override
  String get whyFilesMedia => 'Puede leer archivos y contenido multimedia.';

  @override
  String get whyPhotos => 'Puede leer tus fotos.';

  @override
  String get whyVideos => 'Puede leer tus vídeos.';

  @override
  String get whyAudio => 'Puede leer tus archivos de audio.';

  @override
  String get whyOverlay => 'Puede mostrarse sobre otras apps.';

  @override
  String get whyInstall => 'Puede instalar otras apps.';

  @override
  String get whyAppList => 'Puede ver todas las apps del teléfono.';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeBody => 'Por defecto sigue a tu teléfono';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get settingsScanning => 'Análisis';

  @override
  String get settingsAlerts => 'Avisos de apps';

  @override
  String get settingsAlertsBody =>
      'Avisa de apps nuevas y de permisos nuevos. Comprueba aproximadamente cada 6 horas.';

  @override
  String get settingsWeekly => 'Resumen semanal';

  @override
  String get settingsWeeklyBody =>
      'Una notificación a la semana con tu puntuación y lo que cambió';

  @override
  String get settingsUsage => 'Acceso de uso';

  @override
  String get settingsUsageOn =>
      'Activado. Peekless puede ver cuándo se abrieron las apps por última vez.';

  @override
  String get settingsUsageOff =>
      'Desactivado. Opcional. Permite a Peekless encontrar apps que ya no usas. Se queda en tu teléfono.';

  @override
  String get settingsSystemApps => 'Incluir apps del sistema';

  @override
  String get settingsSystemAppsBody =>
      'Analizar también las apps integradas en el teléfono';

  @override
  String get settingsRescan => 'Analizar ahora';

  @override
  String get settingsRescanBody => 'Volver a revisar todas las apps';

  @override
  String get settingsUpdates => 'Actualizaciones';

  @override
  String get settingsCheckUpdates => 'Buscar actualizaciones';

  @override
  String settingsVersion(String version) {
    return 'Versión $version · solo cuando tú lo pides';
  }

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String get settingsPrivacy => 'Privacidad';

  @override
  String get settingsPrivacyBody => 'Todo se queda en tu teléfono';

  @override
  String get settingsOpenSource => 'Código abierto';

  @override
  String get settingsOpenSourceBody =>
      'Licencia GPL-3.0. Ver el código en GitHub';

  @override
  String get settingsDeveloped => 'Desarrollado por Lumio Apps';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get languageSystem => 'Seguir el idioma del teléfono';

  @override
  String get updChecking => 'Buscando actualizaciones...';

  @override
  String get updLatest => 'Tienes la última versión.';

  @override
  String get updFailed =>
      'No se pudo buscar actualizaciones. Inténtalo más tarde.';

  @override
  String get updTitle => 'Actualización disponible';

  @override
  String updReady(String version) {
    return 'La versión $version está lista para instalar.';
  }

  @override
  String get updDownloadFailed =>
      'Error en la descarga. Comprueba tu conexión e inténtalo de nuevo.';

  @override
  String get updInstall => 'Descargar e instalar';

  @override
  String get notifyDenied =>
      'Permite las notificaciones de Peekless para activar esto.';

  @override
  String get settingChangeFailed => 'No se pudo cambiar este ajuste.';

  @override
  String get usageOpenFailed =>
      'No se pudieron abrir los ajustes de acceso de uso.';

  @override
  String alertNewTitle(String name) {
    return 'App nueva: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Puntuación $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name ha cambiado';
  }

  @override
  String alertNowHas(String list) {
    return 'Ahora tiene: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Ahora permitido: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Rastreador nuevo: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Puntuación $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Más cambios';

  @override
  String alertMoreBody(int count) {
    return 'Más cambios: $count. Abre Peekless para verlos.';
  }

  @override
  String get weeklyTitle => 'Tu resumen semanal de Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Puntuación $score/100, $diff más que la semana pasada.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Puntuación $score/100, $diff menos que la semana pasada.';
  }

  @override
  String weeklySame(int score) {
    return 'Puntuación $score/100, sin cambios desde la semana pasada.';
  }

  @override
  String weeklyScore(int score) {
    return 'Puntuación $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Apps nuevas: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Apps eliminadas: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Permisos activados: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Rastreadores nuevos: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Esta semana: $list.';
  }

  @override
  String get weeklyNone => 'Esta semana no hay cambios.';

  @override
  String weeklyRisky(int count) {
    return 'Apps arriesgadas: $count.';
  }

  @override
  String get reportTitle => 'Informe de privacidad de Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Puntuación: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Apps revisadas: $total. Arriesgadas: $risky, Medias: $medium, Seguras: $safe';
  }

  @override
  String get reportAttention => 'Requieren atención:';

  @override
  String get reportFooter =>
      'Revisado en mi teléfono con Peekless. No se envió nada a ningún sitio.';

  @override
  String get trendTitle => 'Puntuación a lo largo del tiempo';

  @override
  String trendUp(int diff, int days) {
    return 'Sube $diff puntos (días registrados: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Baja $diff puntos (días registrados: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Sin cambios (días registrados: $days)';
  }

  @override
  String get settingsQuick => 'Acceso rápido';

  @override
  String get quickWidget => 'Widget de pantalla de inicio';

  @override
  String get quickWidgetBody =>
      'Muestra tu puntuación de privacidad en la pantalla de inicio';

  @override
  String get quickTile => 'Mosaico de Ajustes rápidos';

  @override
  String get quickTileBody => 'Ve tu puntuación en el panel de ajustes rápidos';

  @override
  String get quickManual =>
      'Tu teléfono no pudo añadirlo automáticamente. Hazlo a mano: mantén pulsada la pantalla de inicio (widget) o edita el panel de ajustes rápidos (mosaico).';

  @override
  String get settingsExport => 'Exportar informe';

  @override
  String get settingsExportBody =>
      'Guarda el informe como PDF o JSON y compártelo';

  @override
  String get exportFailed => 'No se pudo crear el informe.';

  @override
  String get settingsTrackerList => 'Lista de rastreadores';

  @override
  String settingsTrackerListBody(int count) {
    return 'Toca para actualizar. $count rastreadores conocidos. Solo cuando tocas.';
  }

  @override
  String get trackerListUpdating => 'Actualizando la lista de rastreadores…';

  @override
  String trackerListUpdated(int count) {
    return 'Lista de rastreadores actualizada. $count rastreadores conocidos.';
  }

  @override
  String get trackerListCurrent => 'La lista de rastreadores ya está al día.';

  @override
  String get trackerListFailed =>
      'No se pudo actualizar la lista de rastreadores. Revisa tu conexión.';

  @override
  String get homeTagline => 'Mira quién te está espiando.';

  @override
  String get homeOverviewBody =>
      'Porcentaje de tus apps que pueden usar cada uno';
}
