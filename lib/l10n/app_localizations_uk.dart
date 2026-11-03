// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get navHome => 'Головна';

  @override
  String get navApps => 'Застосунки';

  @override
  String get navPermissions => 'Дозволи';

  @override
  String get navChanges => 'Зміни';

  @override
  String get navSettings => 'Налаштування';

  @override
  String get levelRisky => 'Небезпечні';

  @override
  String get levelMedium => 'Середні';

  @override
  String get levelSafe => 'Безпечні';

  @override
  String get overallHigh => 'Високий ризик';

  @override
  String get overallMedium => 'Середній ризик';

  @override
  String get overallLow => 'Низький ризик';

  @override
  String get cancel => 'Скасувати';

  @override
  String get clear => 'Очистити';

  @override
  String get back => 'Назад';

  @override
  String get later => 'Пізніше';

  @override
  String get noneFound => 'Нічого не знайдено';

  @override
  String get scanning => 'Сканування...';

  @override
  String get scanFailed => 'Не вдалося виконати сканування';

  @override
  String get tryAgain => 'Спробувати ще раз';

  @override
  String get couldNotOpenSettings =>
      'Не вдалося відкрити налаштування застосунку.';

  @override
  String get homeShare => 'Поділитися звітом';

  @override
  String get homeRescan => 'Сканувати застосунки знову';

  @override
  String homeAppsChecked(int count) {
    return 'Перевірено застосунків на цьому телефоні: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Враховано застосунків: $counted, довірених: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Потребують уваги';

  @override
  String get homeSeeAll => 'Показати всі';

  @override
  String get homeAllSafe =>
      'Нічого не потребує уваги. Усі застосунки виглядають безпечними.';

  @override
  String get homeShareFailed => 'Не вдалося поділитися звітом.';

  @override
  String get scoreOf100 => 'зі 100';

  @override
  String scoreSemantics(int score) {
    return 'Оцінка приватності: $score зі 100';
  }

  @override
  String wizardCard(int count) {
    return 'Перегляньте застосунки з чутливим доступом: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Застосунків: $count, спершу найризикованіші';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Показано $shown із $total';
  }

  @override
  String get appsSearch => 'Пошук застосунків';

  @override
  String get appsNone => 'Застосунків не знайдено';

  @override
  String get chipMine => 'Мої застосунки';

  @override
  String get chipSystem => 'Системні';

  @override
  String get filterAll => 'Усі';

  @override
  String get filterTrackers => 'З трекерами';

  @override
  String get filterSpecial => 'Особливий доступ';

  @override
  String get filterNotStore => 'Не з магазину';

  @override
  String get filterOffline => 'Офлайн';

  @override
  String get filterTrusted => 'Довірені';

  @override
  String get permSubtitle => 'Хто що може використовувати на цьому телефоні';

  @override
  String get trackersSubtitle => 'Який трекер у яких застосунках';

  @override
  String get segTrackers => 'Трекери';

  @override
  String get noTrackers => 'Відомих трекерів не знайдено.';

  @override
  String get noPerms => 'Чутливих дозволів не знайдено.';

  @override
  String appsCount(int count) {
    return 'Застосунків: $count';
  }

  @override
  String get changesSubtitle => 'Нові застосунки та зміни дозволів';

  @override
  String get clearTitle => 'Очистити зміни?';

  @override
  String get clearBody => 'Список змін буде видалено з цього телефона.';

  @override
  String get changesEmpty =>
      'Змін поки немає. Peekless показуватиме тут нові й видалені застосунки, нові дозволи та нові трекери.';

  @override
  String evInstalled(int score, String level) {
    return 'Встановлено. Оцінка: $score ($level).';
  }

  @override
  String get evRemoved => 'Видалено.';

  @override
  String evAllowed(String label) {
    return 'Тепер дозволено: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Більше не дозволено: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Знайдено новий трекер: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: увімкнено.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: вимкнено.';
  }

  @override
  String get checksTitle => 'Перевірки безпеки';

  @override
  String get checksIntro =>
      'Те, на що варто глянути ще раз. Торкніться перевірки, щоб побачити застосунки.';

  @override
  String get checkUnusedTitle =>
      'Невикористовувані застосунки з чутливим доступом';

  @override
  String get checkDebuggableTitle => 'Збірки для налагодження';

  @override
  String get checkOfflineTitle => 'Застосунки без інтернету';

  @override
  String get checkAccessibilityDesc =>
      'Ці застосунки можуть читати ваш екран і натискати замість вас.';

  @override
  String get checkAdminDesc =>
      'Ці застосунки можуть блокувати або стирати телефон і заважати їх видаленню.';

  @override
  String get checkNotificationDesc =>
      'Ці застосунки можуть читати всі ваші сповіщення, зокрема коди.';

  @override
  String checkUnusedDesc(int days) {
    return 'Не відкривалися $days дн., але все ще можуть використовувати чутливі дозволи. Подумайте про видалення.';
  }

  @override
  String get checkNotStoreDesc =>
      'Встановлені з файлу або з комп’ютера. Ніхто не перевіряв їх для вас.';

  @override
  String get checkDebuggableDesc =>
      'Тестові збірки, які можна перевіряти з комп’ютера.';

  @override
  String get checkOldDesc =>
      'Ці застосунки обходять нові засоби захисту приватності Android.';

  @override
  String get checkOfflineDesc =>
      'Немає дозволу на інтернет, тому вони не можуть надсилати дані в мережу.';

  @override
  String get usagePromptBody =>
      'За бажанням. Увімкніть доступ до статистики використання, щоб знаходити застосунки, які ви давно не відкривали, але які все ще можуть використовувати мікрофон, місцезнаходження чи контакти. Дані не залишають ваш телефон.';

  @override
  String get usagePromptButton => 'Увімкнути доступ до статистики';

  @override
  String get securityNone =>
      'На цьому телефоні не знайдено зауважень щодо безпеки.';

  @override
  String securityOffline(int count) {
    return 'Застосунків, що працюють повністю без інтернету: $count';
  }

  @override
  String get fixWizardTitle => 'Помічник виправлення';

  @override
  String wizardStep(int index, int total) {
    return 'Застосунок $index із $total';
  }

  @override
  String get wizardQuestion => 'Чи справді цьому застосунку це потрібно?';

  @override
  String get wizardHint =>
      'Торкніться «Відкрити налаштування застосунку», потім «Дозволи» й вимкніть те, що застосунку не потрібне.';

  @override
  String get openAppSettings => 'Відкрити налаштування застосунку';

  @override
  String get trustApp => 'Я довіряю цьому застосунку';

  @override
  String get nextApp => 'Наступний застосунок';

  @override
  String get finish => 'Готово';

  @override
  String get wizardDone => 'Усе переглянуто';

  @override
  String get wizardNothing => 'Нічого переглядати';

  @override
  String get wizardNothingBody =>
      'Наразі жоден застосунок не має чутливого доступу.';

  @override
  String get wizardRescanBody => 'Скануйте знову, щоб побачити нову оцінку.';

  @override
  String get rescanFinish => 'Сканувати знову й завершити';

  @override
  String get wizardRequested => 'запитано, ще не дозволено';

  @override
  String scoreTrackers(int count) {
    return 'Відомі трекери: $count';
  }

  @override
  String get scoreDebuggable => 'Збірка для налагодження';

  @override
  String get scoreOldTarget => 'Створено для дуже старого Android';

  @override
  String unusualFor(String groups) {
    return 'Незвично для застосунку такого типу: $groups';
  }

  @override
  String get noteRequested => 'запитано, враховується половина';

  @override
  String get noteAllowed => 'дозволено';

  @override
  String noteTrackers(int points, int max) {
    return '$points за кожен, максимум $max';
  }

  @override
  String get noteTurnedOn => 'увімкнено';

  @override
  String get noteDebuggable => 'можна перевіряти з комп’ютера';

  @override
  String noteApi(int apiLevel) {
    return 'рівень API $apiLevel';
  }

  @override
  String get noteExtra => 'додаткове зниження';

  @override
  String get explainTitle => 'Як рахується оцінка';

  @override
  String get explainIntro =>
      'Кожен застосунок починає зі 100. Бали знімаються за те, що застосунок може робити.';

  @override
  String get explainStart => 'Початок';

  @override
  String get explainNothing => 'Нічого не знято';

  @override
  String get explainNothingNote => 'Немає чутливих дозволів і відомих трекерів';

  @override
  String get explainScore => 'Оцінка';

  @override
  String get explainRules => 'Правила';

  @override
  String get rule1 =>
      'У кожній групі враховується лише найважчий дозвіл. Наприклад, точне й приблизне місцезнаходження рахуються один раз.';

  @override
  String get rule2 =>
      'Особливі дозволи (усі файли, показ поверх інших застосунків, встановлення застосунків) враховуються наполовину, якщо застосунок лише запитав їх.';

  @override
  String rule3(int points, int max) {
    return 'За кожен відомий трекер знімається $points б., але не більше $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Увімкнений особливий доступ знімає бали: спеціальні можливості $a, адміністратор пристрою $b, доступ до сповіщень $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Збірка для налагодження знімає $a. Застосунок, створений для Android 7 або старішого, знімає $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Якщо дозвіл незвичний для такого типу застосунків (наприклад, мікрофон у ліхтарику), знімається ще $points б., не більше ніж для $maxGroups груп дозволів.';
  }

  @override
  String get rule7 =>
      '70 і більше — Безпечний. Від 40 до 69 — Середній. Нижче за 40 — Небезпечний.';

  @override
  String get explainFooter =>
      'Оцінка показує, що застосунок може робити, а не що він робить зараз.';

  @override
  String get howScore => 'Як обчислюється ця оцінка?';

  @override
  String summaryTrackers(int count) {
    return 'Відомі трекери: $count.';
  }

  @override
  String get summaryNone => 'Немає чутливих дозволів і відомих трекерів.';

  @override
  String metaTrackers(int count) {
    return 'Трекерів: $count';
  }

  @override
  String get metaNone => 'Немає чутливих дозволів';

  @override
  String get detailSecurity => 'Безпека';

  @override
  String get detailSource => 'Джерело';

  @override
  String get detailInternet => 'Інтернет';

  @override
  String get detailInternetYes => 'Може виходити в інтернет';

  @override
  String get detailOffline => 'Без інтернету';

  @override
  String get detailOfflineBody =>
      'Немає дозволу на інтернет, тому не може надсилати дані в мережу';

  @override
  String get detailLastOpened => 'Востаннє відкрито';

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'Учора';

  @override
  String daysSince(int days) {
    return 'Днів від останнього використання: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Тестова збірка, яку можна перевіряти з комп’ютера';

  @override
  String detailOldBody(int apiLevel) {
    return 'Рівень API $apiLevel, тому нові засоби захисту приватності обходяться';
  }

  @override
  String get detailTrustBody =>
      'Не враховувати в «Небезпечних» і в сповіщеннях';

  @override
  String get detailNoPerms => 'Цей застосунок не запитує чутливих дозволів.';

  @override
  String get chipAllowed => 'Дозволено';

  @override
  String get chipRequested => 'Запитано';

  @override
  String get chipNotAllowed => 'Не дозволено';

  @override
  String sensitiveNote(String why) {
    return 'Чутливе: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Знайдено трекерів: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless показує, що застосунок може робити, а не що він робить зараз. Трекери визначаються за маніфестом застосунку, тож частину може бути пропущено.';

  @override
  String get srcBuiltIn => 'Вбудовано у ваш телефон';

  @override
  String get srcUnknown => 'Невідомо (встановлено з файлу або з комп’ютера)';

  @override
  String get srcApk => 'APK-файл, який ви відкрили';

  @override
  String get srcAdb => 'Комп’ютер (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Встановив: $name';
  }

  @override
  String get accessibilityLabel => 'Доступ до спеціальних можливостей';

  @override
  String get adminLabel => 'Адміністратор пристрою';

  @override
  String get notificationLabel => 'Доступ до сповіщень';

  @override
  String get accessibilityWhy =>
      'Увімкнено. Може читати те, що на екрані, і діяти замість вас.';

  @override
  String get adminWhy =>
      'Увімкнено. Може блокувати телефон, стирати його й заважати видаленню.';

  @override
  String get notificationWhy =>
      'Увімкнено. Може читати всі ваші сповіщення, зокрема коди.';

  @override
  String get grpMicrophone => 'Мікрофон';

  @override
  String get grpCamera => 'Камера';

  @override
  String get grpLocation => 'Місцезнаходження';

  @override
  String get grpContacts => 'Контакти';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Журнал викликів';

  @override
  String get grpPhone => 'Телефон';

  @override
  String get grpCalendar => 'Календар';

  @override
  String get grpBodySensors => 'Датчики тіла';

  @override
  String get grpActivity => 'Активність';

  @override
  String get grpFiles => 'Файли';

  @override
  String get grpOverlay => 'Показ поверх інших';

  @override
  String get grpInstalls => 'Встановлення';

  @override
  String get grpAppList => 'Список застосунків';

  @override
  String get lblCoarseLocation => 'Приблизне місцезнаходження';

  @override
  String get lblFineLocation => 'Точне місцезнаходження';

  @override
  String get lblBackgroundLocation => 'Місцезнаходження постійно';

  @override
  String get lblAccounts => 'Облікові записи';

  @override
  String get lblReadSms => 'Читання SMS';

  @override
  String get lblReceiveSms => 'Отримання SMS';

  @override
  String get lblSendSms => 'Надсилання SMS';

  @override
  String get lblPhoneState => 'Стан телефона';

  @override
  String get lblCallPhone => 'Здійснення дзвінків';

  @override
  String get lblActivity => 'Фізична активність';

  @override
  String get lblAllFiles => 'Усі файли';

  @override
  String get lblFilesMedia => 'Файли та медіа';

  @override
  String get lblPhotos => 'Фото';

  @override
  String get lblVideos => 'Відео';

  @override
  String get lblAudioFiles => 'Аудіофайли';

  @override
  String get lblOverlay => 'Показ поверх інших застосунків';

  @override
  String get lblInstall => 'Встановлення інших застосунків';

  @override
  String get lblAppList => 'Перегляд усіх застосунків';

  @override
  String get whyMic => 'Може записувати звук.';

  @override
  String get whyCamera => 'Може використовувати камеру.';

  @override
  String get whyCoarse => 'Може бачити ваше приблизне місцезнаходження.';

  @override
  String get whyFine => 'Може бачити ваше точне місцезнаходження.';

  @override
  String get whyBackground =>
      'Може постійно відстежувати ваше місцезнаходження.';

  @override
  String get whyContacts => 'Може читати ваші контакти.';

  @override
  String get whyAccounts => 'Може бачити облікові записи на телефоні.';

  @override
  String get whyReadSms => 'Може читати ваші SMS.';

  @override
  String get whyReceiveSms => 'Може отримувати ваші SMS.';

  @override
  String get whySendSms => 'Може надсилати SMS.';

  @override
  String get whyCallLog => 'Може читати історію ваших дзвінків.';

  @override
  String get whyPhoneState => 'Може бачити стан вашого телефона.';

  @override
  String get whyCallPhone => 'Може здійснювати дзвінки.';

  @override
  String get whyCalendar => 'Може читати ваш календар.';

  @override
  String get whyBody => 'Може читати датчики тіла.';

  @override
  String get whyActivity => 'Може бачити вашу фізичну активність.';

  @override
  String get whyAllFiles => 'Може мати доступ до всіх файлів на телефоні.';

  @override
  String get whyFilesMedia => 'Може читати файли та медіа.';

  @override
  String get whyPhotos => 'Може читати ваші фото.';

  @override
  String get whyVideos => 'Може читати ваші відео.';

  @override
  String get whyAudio => 'Може читати ваші аудіофайли.';

  @override
  String get whyOverlay => 'Може відображатися поверх інших застосунків.';

  @override
  String get whyInstall => 'Може встановлювати інші застосунки.';

  @override
  String get whyAppList => 'Може бачити всі застосунки на телефоні.';

  @override
  String get settingsAppearance => 'Вигляд';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeBody => 'За замовчуванням як на телефоні';

  @override
  String get themeSystem => 'Системна';

  @override
  String get themeLight => 'Світла';

  @override
  String get themeDark => 'Темна';

  @override
  String get settingsScanning => 'Сканування';

  @override
  String get settingsAlerts => 'Сповіщення про застосунки';

  @override
  String get settingsAlertsBody =>
      'Повідомляє про нові застосунки й нові дозволи. Перевіряє приблизно кожні 6 годин.';

  @override
  String get settingsWeekly => 'Щотижневий підсумок';

  @override
  String get settingsWeeklyBody =>
      'Раз на тиждень сповіщення з вашою оцінкою та змінами';

  @override
  String get settingsUsage => 'Доступ до статистики використання';

  @override
  String get settingsUsageOn =>
      'Увімкнено. Peekless бачить, коли застосунки відкривали востаннє.';

  @override
  String get settingsUsageOff =>
      'Вимкнено. За бажанням. Дає змогу Peekless знаходити застосунки, якими ви більше не користуєтеся. Дані залишаються на телефоні.';

  @override
  String get settingsSystemApps => 'Враховувати системні застосунки';

  @override
  String get settingsSystemAppsBody =>
      'Сканувати також застосунки, вбудовані в телефон';

  @override
  String get settingsRescan => 'Сканувати зараз';

  @override
  String get settingsRescanBody => 'Перевірити всі застосунки знову';

  @override
  String get settingsUpdates => 'Оновлення';

  @override
  String get settingsCheckUpdates => 'Перевірити оновлення';

  @override
  String settingsVersion(String version) {
    return 'Версія $version · лише коли ви торкнетеся';
  }

  @override
  String get settingsAbout => 'Про застосунок';

  @override
  String get settingsPrivacy => 'Приватність';

  @override
  String get settingsPrivacyBody => 'Усе залишається на вашому телефоні';

  @override
  String get settingsOpenSource => 'Відкритий код';

  @override
  String get settingsOpenSourceBody =>
      'Ліцензія GPL-3.0. Дивіться код на GitHub';

  @override
  String get settingsDeveloped => 'Розроблено Lumio Apps';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get languageSystem => 'Як на телефоні';

  @override
  String get updChecking => 'Перевірка оновлень...';

  @override
  String get updLatest => 'У вас остання версія.';

  @override
  String get updFailed => 'Не вдалося перевірити оновлення. Спробуйте пізніше.';

  @override
  String get updTitle => 'Доступне оновлення';

  @override
  String updReady(String version) {
    return 'Версія $version готова до встановлення.';
  }

  @override
  String get updDownloadFailed =>
      'Не вдалося завантажити. Перевірте з’єднання й повторіть спробу.';

  @override
  String get updInstall => 'Завантажити й встановити';

  @override
  String get notifyDenied =>
      'Дозвольте Peekless надсилати сповіщення, щоб увімкнути це.';

  @override
  String get settingChangeFailed => 'Не вдалося змінити це налаштування.';

  @override
  String get usageOpenFailed =>
      'Не вдалося відкрити налаштування доступу до статистики використання.';

  @override
  String alertNewTitle(String name) {
    return 'Новий застосунок: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Оцінка $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return 'Зміни в $name';
  }

  @override
  String alertNowHas(String list) {
    return 'Тепер має: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Тепер дозволено: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Новий трекер: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Оцінка $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Ще зміни';

  @override
  String alertMoreBody(int count) {
    return 'Ще змін: $count. Відкрийте Peekless, щоб переглянути.';
  }

  @override
  String get weeklyTitle => 'Ваш щотижневий підсумок Peekless';

  @override
  String weeklyUp(int score, int diff) {
    return 'Оцінка $score/100, на $diff вище, ніж минулого тижня.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Оцінка $score/100, на $diff нижче, ніж минулого тижня.';
  }

  @override
  String weeklySame(int score) {
    return 'Оцінка $score/100, без змін порівняно з минулим тижнем.';
  }

  @override
  String weeklyScore(int score) {
    return 'Оцінка $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Нові застосунки: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Видалені застосунки: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Увімкнені дозволи: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Нові трекери: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Цього тижня: $list.';
  }

  @override
  String get weeklyNone => 'Цього тижня змін немає.';

  @override
  String weeklyRisky(int count) {
    return 'Небезпечних застосунків: $count.';
  }

  @override
  String get reportTitle => 'Звіт про приватність Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Оцінка: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Перевірено застосунків: $total. Небезпечних: $risky, середніх: $medium, безпечних: $safe';
  }

  @override
  String get reportAttention => 'Потребують уваги:';

  @override
  String get reportFooter =>
      'Перевірено на моєму телефоні за допомогою Peekless. Нічого нікуди не надсилалося.';

  @override
  String get trendTitle => 'Оцінка в часі';

  @override
  String trendUp(int diff, int days) {
    return 'Зросла на $diff (днів відстеження: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Знизилась на $diff (днів відстеження: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Без змін (днів відстеження: $days)';
  }

  @override
  String get settingsQuick => 'Швидкий доступ';

  @override
  String get quickWidget => 'Віджет на головному екрані';

  @override
  String get quickWidgetBody =>
      'Показувати оцінку приватності на головному екрані';

  @override
  String get quickTile => 'Плитка швидких налаштувань';

  @override
  String get quickTileBody => 'Оцінка на панелі швидких налаштувань';

  @override
  String get quickManual =>
      'Телефон не зміг додати це автоматично. Додайте вручну: довге натискання на головному екрані (віджет) або зміна панелі швидких налаштувань (плитка).';

  @override
  String get settingsExport => 'Експорт звіту';

  @override
  String get settingsExportBody =>
      'Збережіть звіт як PDF або JSON і поділіться ним';

  @override
  String get exportFailed => 'Не вдалося створити звіт.';

  @override
  String get settingsTrackerList => 'Список трекерів';

  @override
  String settingsTrackerListBody(int count) {
    return 'Торкніться, щоб оновити. Відомих трекерів: $count. Лише коли ви торкаєтесь.';
  }

  @override
  String get trackerListUpdating => 'Оновлення списку трекерів…';

  @override
  String trackerListUpdated(int count) {
    return 'Список трекерів оновлено. Відомих трекерів: $count.';
  }

  @override
  String get trackerListCurrent => 'Список трекерів уже актуальний.';

  @override
  String get trackerListFailed =>
      'Не вдалося оновити список трекерів. Перевірте підключення.';

  @override
  String get homeTagline => 'Дізнайтеся, хто за вами підглядає.';

  @override
  String get homeOverviewBody =>
      'Частка ваших застосунків, які можуть цим користуватися';

  @override
  String get settingsDeep => 'Глибоке сканування';

  @override
  String get settingsDeepBody =>
      'Шукати приховані трекери також усередині коду кожного застосунку. Перше сканування повільніше. Застосунки, що були на телефоні від початку, пропускаються. Усе залишається на вашому телефоні.';

  @override
  String trackersFromCode(int count) {
    return 'Знайдено всередині коду застосунку (позначені значком коду): $count';
  }

  @override
  String get settingsNet => 'Мережевий монітор';

  @override
  String get settingsNetBody =>
      'Які застосунки запитують які інтернет-адреси і які з них трекери';

  @override
  String get netTitle => 'Мережевий монітор';

  @override
  String get netIntro =>
      'Peekless показує, які доменні імена запитують ваші застосунки. Для цього використовується локальний VPN, який приймає лише такі запити, тож швидкість інтернету не змінюється. Він не бачить, що ви надсилаєте чи читаєте, лише імена. Нічого не залишає ваш телефон.';

  @override
  String get netLimits =>
      'Може пропустити застосунки зі своїм зашифрованим DNS або якщо Private DNS заданий на конкретного провайдера. Щоб бачити, який застосунок запитав, потрібен Android 10 або новіший.';

  @override
  String get netSwitch => 'Стежити за запитами';

  @override
  String get netOn =>
      'Увімкнено. Скористайтеся кількома застосунками й поверніться подивитися результат.';

  @override
  String get netOff => 'Вимкнено';

  @override
  String get netEmpty =>
      'Поки нічого немає. Скористайтеся застосунками й загляньте знову.';

  @override
  String netLookups(int count) {
    return 'Запитів: $count';
  }

  @override
  String netTrackerCount(int count) {
    return 'Доменів трекерів: $count';
  }

  @override
  String get netClear => 'Очистити дані';

  @override
  String get netCleared => 'Мережеві дані очищено.';

  @override
  String get netConsentDenied => 'Android не дозволив запустити монітор.';

  @override
  String get netFailed => 'Не вдалося змінити мережевий монітор.';

  @override
  String get netUnknownApp => 'Невідомий застосунок';

  @override
  String netTrackerTag(String name) {
    return 'Трекер: $name';
  }
}
