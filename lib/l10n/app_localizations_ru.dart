// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get navHome => 'Главная';

  @override
  String get navApps => 'Приложения';

  @override
  String get navPermissions => 'Разрешения';

  @override
  String get navChanges => 'Изменения';

  @override
  String get navSettings => 'Настройки';

  @override
  String get levelRisky => 'Опасные';

  @override
  String get levelMedium => 'Средние';

  @override
  String get levelSafe => 'Безопасные';

  @override
  String get overallHigh => 'Высокий риск';

  @override
  String get overallMedium => 'Средний риск';

  @override
  String get overallLow => 'Низкий риск';

  @override
  String get cancel => 'Отмена';

  @override
  String get clear => 'Очистить';

  @override
  String get back => 'Назад';

  @override
  String get later => 'Позже';

  @override
  String get noneFound => 'Ничего не найдено';

  @override
  String get scanning => 'Сканирование...';

  @override
  String get scanFailed => 'Не удалось выполнить сканирование';

  @override
  String get tryAgain => 'Повторить';

  @override
  String get couldNotOpenSettings => 'Не удалось открыть настройки приложения.';

  @override
  String get homeShare => 'Поделиться отчётом';

  @override
  String get homeRescan => 'Сканировать приложения заново';

  @override
  String homeAppsChecked(int count) {
    return 'Проверено приложений на этом телефоне: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Учтено приложений: $counted, доверенных: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Требуют внимания';

  @override
  String get homeSeeAll => 'Показать все';

  @override
  String get homeAllSafe =>
      'Ничего не требует внимания. Все приложения выглядят безопасными.';

  @override
  String get homeShareFailed => 'Не удалось поделиться отчётом.';

  @override
  String get scoreOf100 => 'из 100';

  @override
  String scoreSemantics(int score) {
    return 'Оценка приватности: $score из 100';
  }

  @override
  String wizardCard(int count) {
    return 'Проверьте приложения с чувствительным доступом: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Приложений: $count, сначала самые рискованные';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Показано $shown из $total';
  }

  @override
  String get appsSearch => 'Поиск приложений';

  @override
  String get appsNone => 'Приложения не найдены';

  @override
  String get chipMine => 'Мои приложения';

  @override
  String get chipSystem => 'Системные';

  @override
  String get filterAll => 'Все';

  @override
  String get filterTrackers => 'С трекерами';

  @override
  String get filterSpecial => 'Особый доступ';

  @override
  String get filterNotStore => 'Не из магазина';

  @override
  String get filterOffline => 'Без интернета';

  @override
  String get filterTrusted => 'Доверенные';

  @override
  String get permSubtitle => 'Кто и что может использовать на этом телефоне';

  @override
  String get trackersSubtitle => 'Какой трекер в каких приложениях';

  @override
  String get segTrackers => 'Трекеры';

  @override
  String get noTrackers => 'Известные трекеры не найдены.';

  @override
  String get noPerms => 'Чувствительные разрешения не найдены.';

  @override
  String appsCount(int count) {
    return 'Приложений: $count';
  }

  @override
  String get changesSubtitle => 'Новые приложения и изменения разрешений';

  @override
  String get clearTitle => 'Очистить изменения?';

  @override
  String get clearBody => 'Список изменений будет удалён с этого телефона.';

  @override
  String get changesEmpty =>
      'Изменений пока нет. Peekless будет показывать здесь новые и удалённые приложения, новые разрешения и новые трекеры.';

  @override
  String evInstalled(int score, String level) {
    return 'Установлено. Оценка: $score ($level).';
  }

  @override
  String get evRemoved => 'Удалено.';

  @override
  String evAllowed(String label) {
    return 'Теперь разрешено: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Больше не разрешено: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Найден новый трекер: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: включено.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: выключено.';
  }

  @override
  String get checksTitle => 'Проверки безопасности';

  @override
  String get checksIntro =>
      'На что стоит взглянуть ещё раз. Нажмите на проверку, чтобы увидеть приложения.';

  @override
  String get checkUnusedTitle =>
      'Неиспользуемые приложения с чувствительным доступом';

  @override
  String get checkDebuggableTitle => 'Отладочные сборки';

  @override
  String get checkOfflineTitle => 'Приложения без интернета';

  @override
  String get checkAccessibilityDesc =>
      'Эти приложения могут читать ваш экран и нажимать за вас.';

  @override
  String get checkAdminDesc =>
      'Эти приложения могут блокировать или стирать телефон и мешать удалению.';

  @override
  String get checkNotificationDesc =>
      'Эти приложения могут читать все уведомления, включая коды.';

  @override
  String checkUnusedDesc(int days) {
    return 'Не открывались $days дн., но всё ещё могут использовать чувствительные разрешения. Подумайте об удалении.';
  }

  @override
  String get checkNotStoreDesc =>
      'Установлены из файла или с компьютера. Никто не проверял их за вас.';

  @override
  String get checkDebuggableDesc =>
      'Тестовые сборки, которые можно проверять с компьютера.';

  @override
  String get checkOldDesc =>
      'Эти приложения обходят новые защиты приватности Android.';

  @override
  String get checkOfflineDesc =>
      'Нет разрешения на интернет, поэтому они не могут отправлять данные в сеть.';

  @override
  String get usagePromptBody =>
      'По желанию. Включите доступ к статистике использования, чтобы находить приложения, которые вы давно не открывали, но которые всё ещё могут использовать микрофон, местоположение или контакты. Данные не покидают ваш телефон.';

  @override
  String get usagePromptButton => 'Включить доступ к статистике';

  @override
  String get securityNone =>
      'На этом телефоне не найдено замечаний по безопасности.';

  @override
  String securityOffline(int count) {
    return 'Приложений, работающих полностью без интернета: $count';
  }

  @override
  String get fixWizardTitle => 'Помощник по исправлению';

  @override
  String wizardStep(int index, int total) {
    return 'Приложение $index из $total';
  }

  @override
  String get wizardQuestion => 'Действительно ли этому приложению это нужно?';

  @override
  String get wizardHint =>
      'Нажмите «Открыть настройки приложения», затем «Разрешения» и отключите то, что приложению не нужно.';

  @override
  String get openAppSettings => 'Открыть настройки приложения';

  @override
  String get trustApp => 'Я доверяю этому приложению';

  @override
  String get nextApp => 'Следующее приложение';

  @override
  String get finish => 'Готово';

  @override
  String get wizardDone => 'Всё просмотрено';

  @override
  String get wizardNothing => 'Смотреть нечего';

  @override
  String get wizardNothingBody =>
      'Сейчас ни у одного приложения нет чувствительного доступа.';

  @override
  String get wizardRescanBody =>
      'Выполните сканирование заново, чтобы увидеть новую оценку.';

  @override
  String get rescanFinish => 'Сканировать заново и завершить';

  @override
  String get wizardRequested => 'запрошено, пока не разрешено';

  @override
  String scoreTrackers(int count) {
    return 'Известные трекеры: $count';
  }

  @override
  String get scoreDebuggable => 'Отладочная сборка';

  @override
  String get scoreOldTarget => 'Создано для очень старого Android';

  @override
  String unusualFor(String groups) {
    return 'Необычно для приложения такого типа: $groups';
  }

  @override
  String get noteRequested => 'запрошено, засчитывается половина';

  @override
  String get noteAllowed => 'разрешено';

  @override
  String noteTrackers(int points, int max) {
    return '$points за каждый, максимум $max';
  }

  @override
  String get noteTurnedOn => 'включено';

  @override
  String get noteDebuggable => 'можно проверять с компьютера';

  @override
  String noteApi(int apiLevel) {
    return 'уровень API $apiLevel';
  }

  @override
  String get noteExtra => 'дополнительное снижение';

  @override
  String get explainTitle => 'Как считается оценка';

  @override
  String get explainIntro =>
      'Каждое приложение начинает со 100. Баллы снимаются за то, что приложение может делать.';

  @override
  String get explainStart => 'Начало';

  @override
  String get explainNothing => 'Ничего не снято';

  @override
  String get explainNothingNote =>
      'Нет чувствительных разрешений и известных трекеров';

  @override
  String get explainScore => 'Оценка';

  @override
  String get explainRules => 'Правила';

  @override
  String get rule1 =>
      'В каждой группе учитывается только самое тяжёлое разрешение. Например, точное и примерное местоположение считаются один раз.';

  @override
  String get rule2 =>
      'Особые разрешения (все файлы, показ поверх других приложений, установка приложений) считаются наполовину, если приложение лишь запросило их.';

  @override
  String rule3(int points, int max) {
    return 'За каждый известный трекер снимается $points б., но не более $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Включённый особый доступ снижает оценку: специальные возможности $a, администратор устройства $b, доступ к уведомлениям $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Отладочная сборка снимает $a. Приложение, созданное для Android 7 или старше, снимает $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Если разрешение необычно для такого типа приложений (например, микрофон у фонарика), снимается ещё $points — не более чем для $maxGroups групп разрешений.';
  }

  @override
  String get rule7 =>
      '70 и выше — Безопасное. От 40 до 69 — Среднее. Ниже 40 — Опасное.';

  @override
  String get explainFooter =>
      'Оценка показывает, что приложение может делать, а не что оно делает сейчас.';

  @override
  String get howScore => 'Как считается эта оценка?';

  @override
  String summaryTrackers(int count) {
    return 'Известные трекеры: $count.';
  }

  @override
  String get summaryNone =>
      'Нет чувствительных разрешений и известных трекеров.';

  @override
  String metaTrackers(int count) {
    return 'Трекеров: $count';
  }

  @override
  String get metaNone => 'Нет чувствительных разрешений';

  @override
  String get detailSecurity => 'Безопасность';

  @override
  String get detailSource => 'Источник';

  @override
  String get detailInternet => 'Интернет';

  @override
  String get detailInternetYes => 'Может выходить в интернет';

  @override
  String get detailOffline => 'Без интернета';

  @override
  String get detailOfflineBody =>
      'Нет разрешения на интернет, поэтому приложение не может отправлять данные в сеть';

  @override
  String get detailLastOpened => 'Последнее открытие';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String daysSince(int days) {
    return 'Дней с последнего использования: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Тестовая сборка, которую можно проверять с компьютера';

  @override
  String detailOldBody(int apiLevel) {
    return 'Уровень API $apiLevel, поэтому новые защиты приватности обходятся';
  }

  @override
  String get detailTrustBody => 'Не учитывать в «Опасных» и в уведомлениях';

  @override
  String get detailNoPerms =>
      'Это приложение не запрашивает чувствительных разрешений.';

  @override
  String get chipAllowed => 'Разрешено';

  @override
  String get chipRequested => 'Запрошено';

  @override
  String get chipNotAllowed => 'Не разрешено';

  @override
  String sensitiveNote(String why) {
    return 'Чувствительное: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Найдено трекеров: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless показывает, что приложение может делать, а не что оно делает сейчас. Трекеры определяются по манифесту приложения, поэтому часть может быть пропущена.';

  @override
  String get srcBuiltIn => 'Встроено в ваш телефон';

  @override
  String get srcUnknown => 'Неизвестно (установлено из файла или с компьютера)';

  @override
  String get srcApk => 'APK-файл, который вы открыли';

  @override
  String get srcAdb => 'Компьютер (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Установил: $name';
  }

  @override
  String get accessibilityLabel => 'Доступ к специальным возможностям';

  @override
  String get adminLabel => 'Администратор устройства';

  @override
  String get notificationLabel => 'Доступ к уведомлениям';

  @override
  String get accessibilityWhy =>
      'Включено. Может читать то, что на экране, и действовать за вас.';

  @override
  String get adminWhy =>
      'Включено. Может блокировать телефон, стирать его и мешать удалению.';

  @override
  String get notificationWhy =>
      'Включено. Может читать все уведомления, включая коды.';

  @override
  String get grpMicrophone => 'Микрофон';

  @override
  String get grpCamera => 'Камера';

  @override
  String get grpLocation => 'Местоположение';

  @override
  String get grpContacts => 'Контакты';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Журнал вызовов';

  @override
  String get grpPhone => 'Телефон';

  @override
  String get grpCalendar => 'Календарь';

  @override
  String get grpBodySensors => 'Датчики тела';

  @override
  String get grpActivity => 'Активность';

  @override
  String get grpFiles => 'Файлы';

  @override
  String get grpOverlay => 'Показ поверх других';

  @override
  String get grpInstalls => 'Установка приложений';

  @override
  String get grpAppList => 'Список приложений';

  @override
  String get lblCoarseLocation => 'Примерное местоположение';

  @override
  String get lblFineLocation => 'Точное местоположение';

  @override
  String get lblBackgroundLocation => 'Местоположение всё время';

  @override
  String get lblAccounts => 'Аккаунты';

  @override
  String get lblReadSms => 'Чтение SMS';

  @override
  String get lblReceiveSms => 'Получение SMS';

  @override
  String get lblSendSms => 'Отправка SMS';

  @override
  String get lblPhoneState => 'Состояние телефона';

  @override
  String get lblCallPhone => 'Совершать звонки';

  @override
  String get lblActivity => 'Физическая активность';

  @override
  String get lblAllFiles => 'Все файлы';

  @override
  String get lblFilesMedia => 'Файлы и медиа';

  @override
  String get lblPhotos => 'Фото';

  @override
  String get lblVideos => 'Видео';

  @override
  String get lblAudioFiles => 'Аудиофайлы';

  @override
  String get lblOverlay => 'Показ поверх других приложений';

  @override
  String get lblInstall => 'Установка других приложений';

  @override
  String get lblAppList => 'Просмотр всех приложений';

  @override
  String get whyMic => 'Может записывать звук.';

  @override
  String get whyCamera => 'Может использовать камеру.';

  @override
  String get whyCoarse => 'Может видеть ваше примерное местоположение.';

  @override
  String get whyFine => 'Может видеть ваше точное местоположение.';

  @override
  String get whyBackground =>
      'Может постоянно отслеживать ваше местоположение.';

  @override
  String get whyContacts => 'Может читать ваши контакты.';

  @override
  String get whyAccounts => 'Может видеть аккаунты на телефоне.';

  @override
  String get whyReadSms => 'Может читать ваши SMS.';

  @override
  String get whyReceiveSms => 'Может получать ваши SMS.';

  @override
  String get whySendSms => 'Может отправлять SMS.';

  @override
  String get whyCallLog => 'Может читать историю ваших звонков.';

  @override
  String get whyPhoneState => 'Может видеть состояние вашего телефона.';

  @override
  String get whyCallPhone => 'Может совершать звонки.';

  @override
  String get whyCalendar => 'Может читать ваш календарь.';

  @override
  String get whyBody => 'Может читать датчики тела.';

  @override
  String get whyActivity => 'Может видеть вашу физическую активность.';

  @override
  String get whyAllFiles => 'Может получать доступ ко всем файлам на телефоне.';

  @override
  String get whyFilesMedia => 'Может читать файлы и медиа.';

  @override
  String get whyPhotos => 'Может читать ваши фото.';

  @override
  String get whyVideos => 'Может читать ваши видео.';

  @override
  String get whyAudio => 'Может читать ваши аудиофайлы.';

  @override
  String get whyOverlay => 'Может отображаться поверх других приложений.';

  @override
  String get whyInstall => 'Может устанавливать другие приложения.';

  @override
  String get whyAppList => 'Может видеть все приложения на телефоне.';

  @override
  String get settingsAppearance => 'Оформление';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeBody => 'По умолчанию как на телефоне';

  @override
  String get themeSystem => 'Системная';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get settingsScanning => 'Сканирование';

  @override
  String get settingsAlerts => 'Уведомления о приложениях';

  @override
  String get settingsAlertsBody =>
      'Сообщать о новых приложениях и новых разрешениях. Проверка примерно каждые 6 часов.';

  @override
  String get settingsWeekly => 'Еженедельная сводка';

  @override
  String get settingsWeeklyBody =>
      'Раз в неделю уведомление с вашей оценкой и изменениями';

  @override
  String get settingsUsage => 'Доступ к статистике использования';

  @override
  String get settingsUsageOn =>
      'Включено. Peekless видит, когда приложения открывались в последний раз.';

  @override
  String get settingsUsageOff =>
      'Выключено. По желанию. Позволяет Peekless находить приложения, которыми вы больше не пользуетесь. Данные остаются на телефоне.';

  @override
  String get settingsSystemApps => 'Включить системные приложения';

  @override
  String get settingsSystemAppsBody =>
      'Сканировать также приложения, встроенные в телефон';

  @override
  String get settingsRescan => 'Сканировать сейчас';

  @override
  String get settingsRescanBody => 'Проверить все приложения заново';

  @override
  String get settingsUpdates => 'Обновления';

  @override
  String get settingsCheckUpdates => 'Проверить обновления';

  @override
  String settingsVersion(String version) {
    return 'Версия $version · только по вашему нажатию';
  }

  @override
  String get settingsAbout => 'О приложении';

  @override
  String get settingsPrivacy => 'Конфиденциальность';

  @override
  String get settingsPrivacyBody => 'Всё остаётся на вашем телефоне';

  @override
  String get settingsOpenSource => 'Открытый код';

  @override
  String get settingsOpenSourceBody =>
      'Лицензия GPL-3.0. Смотрите код на GitHub';

  @override
  String get settingsDeveloped => 'Разработано Lumio Apps';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get languageSystem => 'Как на телефоне';

  @override
  String get updChecking => 'Проверка обновлений...';

  @override
  String get updLatest => 'У вас последняя версия.';

  @override
  String get updFailed => 'Не удалось проверить обновления. Попробуйте позже.';

  @override
  String get updTitle => 'Доступно обновление';

  @override
  String updReady(String version) {
    return 'Версия $version готова к установке.';
  }

  @override
  String get updDownloadFailed =>
      'Не удалось скачать. Проверьте соединение и повторите.';

  @override
  String get updInstall => 'Скачать и установить';

  @override
  String get notifyDenied =>
      'Разрешите Peekless показывать уведомления, чтобы включить это.';

  @override
  String get settingChangeFailed => 'Не удалось изменить эту настройку.';

  @override
  String get usageOpenFailed =>
      'Не удалось открыть настройки доступа к статистике использования.';

  @override
  String alertNewTitle(String name) {
    return 'Новое приложение: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Оценка $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return 'Изменилось: $name';
  }

  @override
  String alertNowHas(String list) {
    return 'Теперь есть: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Теперь разрешено: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Новый трекер: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Оценка $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Ещё изменения';

  @override
  String alertMoreBody(int count) {
    return 'Ещё изменений: $count. Откройте Peekless, чтобы посмотреть.';
  }

  @override
  String get weeklyTitle => 'Ваша еженедельная сводка Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Оценка $score/100, на $diff выше, чем на прошлой неделе.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Оценка $score/100, на $diff ниже, чем на прошлой неделе.';
  }

  @override
  String weeklySame(int score) {
    return 'Оценка $score/100, без изменений с прошлой недели.';
  }

  @override
  String weeklyScore(int score) {
    return 'Оценка $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Новые приложения: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Удалённые приложения: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Включённые разрешения: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Новые трекеры: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'На этой неделе: $list.';
  }

  @override
  String get weeklyNone => 'На этой неделе изменений нет.';

  @override
  String weeklyRisky(int count) {
    return 'Опасных приложений: $count.';
  }

  @override
  String get reportTitle => 'Отчёт о приватности Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Оценка: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Проверено приложений: $total. Опасных: $risky, средних: $medium, безопасных: $safe';
  }

  @override
  String get reportAttention => 'Требуют внимания:';

  @override
  String get reportFooter =>
      'Проверено на моём телефоне с помощью Peekless. Ничего никуда не отправлялось.';

  @override
  String get trendTitle => 'Оценка во времени';

  @override
  String trendUp(int diff, int days) {
    return 'Выросла на $diff (дней отслеживания: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Снизилась на $diff (дней отслеживания: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Без изменений (дней отслеживания: $days)';
  }

  @override
  String get settingsQuick => 'Быстрый доступ';

  @override
  String get quickWidget => 'Виджет на главном экране';

  @override
  String get quickWidgetBody =>
      'Показывать оценку приватности на главном экране';

  @override
  String get quickTile => 'Плитка быстрых настроек';

  @override
  String get quickTileBody => 'Оценка в панели быстрых настроек';

  @override
  String get quickManual =>
      'Телефон не смог добавить это автоматически. Добавьте вручную: долгое нажатие на главном экране (виджет) или изменение панели быстрых настроек (плитка).';

  @override
  String get settingsExport => 'Экспорт отчёта';

  @override
  String get settingsExportBody =>
      'Сохраните отчёт как PDF или JSON и поделитесь им';

  @override
  String get exportFailed => 'Не удалось создать отчёт.';

  @override
  String get settingsTrackerList => 'Список трекеров';

  @override
  String settingsTrackerListBody(int count) {
    return 'Нажмите, чтобы обновить. Известно трекеров: $count. Только по вашему нажатию.';
  }

  @override
  String get trackerListUpdating => 'Обновление списка трекеров…';

  @override
  String trackerListUpdated(int count) {
    return 'Список трекеров обновлён. Известно трекеров: $count.';
  }

  @override
  String get trackerListCurrent => 'Список трекеров уже актуален.';

  @override
  String get trackerListFailed =>
      'Не удалось обновить список трекеров. Проверьте подключение.';

  @override
  String get homeTagline => 'Узнайте, кто за вами подглядывает.';

  @override
  String get homeOverviewBody =>
      'Доля ваших приложений, которые могут этим пользоваться';

  @override
  String get settingsDeep => 'Глубокое сканирование';

  @override
  String get settingsDeepBody =>
      'Искать скрытые трекеры также внутри кода каждого приложения. Первое сканирование медленнее. Приложения, которые были на телефоне изначально, пропускаются. Всё остаётся на вашем телефоне.';

  @override
  String trackersFromCode(int count) {
    return 'Найдено внутри кода приложения (отмечены значком кода): $count';
  }

  @override
  String get settingsNet => 'Сетевой монитор';

  @override
  String get settingsNetBody =>
      'Какие приложения запрашивают какие интернет-адреса и какие из них трекеры';

  @override
  String get netTitle => 'Сетевой монитор';

  @override
  String get netIntro =>
      'Peekless показывает, какие доменные имена запрашивают ваши приложения. Для этого используется локальный VPN, который принимает только такие запросы, поэтому скорость интернета не меняется. Он не видит, что вы отправляете или читаете, только имена. Ничего не покидает ваш телефон.';

  @override
  String get netLimits =>
      'Может пропустить приложения со своим зашифрованным DNS или если Private DNS задан на конкретного провайдера. Чтобы видеть, какое приложение спросило, нужен Android 10 или новее.';

  @override
  String get netSwitch => 'Следить за запросами';

  @override
  String get netOn =>
      'Включено. Попользуйтесь приложениями и вернитесь посмотреть результат.';

  @override
  String get netOff => 'Выключено';

  @override
  String get netEmpty =>
      'Пока ничего нет. Попользуйтесь приложениями и загляните снова.';

  @override
  String netLookups(int count) {
    return 'Запросов: $count';
  }

  @override
  String netTrackerCount(int count) {
    return 'Доменов трекеров: $count';
  }

  @override
  String get netClear => 'Очистить данные';

  @override
  String get netCleared => 'Сетевые данные очищены.';

  @override
  String get netConsentDenied => 'Android не разрешил запуск монитора.';

  @override
  String get netFailed => 'Не удалось изменить сетевой монитор.';

  @override
  String get netUnknownApp => 'Неизвестное приложение';

  @override
  String netTrackerTag(String name) {
    return 'Трекер: $name';
  }

  @override
  String get netBlockTitle => 'Блокировать домены трекеров';

  @override
  String get netBlockBody =>
      'Известные имена трекеров получают пустой ответ, поэтому приложения не могут до них достучаться. Некоторые приложения могут потерять рекламу, статистику или другие функции. По умолчанию выключено.';

  @override
  String netBlockedCount(int count) {
    return 'Заблокировано: $count';
  }

  @override
  String get netExport => 'Экспорт в CSV';
}
