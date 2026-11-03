// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get navHome => 'ホーム';

  @override
  String get navApps => 'アプリ';

  @override
  String get navPermissions => '権限';

  @override
  String get navChanges => '変更履歴';

  @override
  String get navSettings => '設定';

  @override
  String get levelRisky => '危険';

  @override
  String get levelMedium => '注意';

  @override
  String get levelSafe => '安全';

  @override
  String get overallHigh => 'リスク高';

  @override
  String get overallMedium => 'リスク中';

  @override
  String get overallLow => 'リスク低';

  @override
  String get cancel => 'キャンセル';

  @override
  String get clear => '消去';

  @override
  String get back => '戻る';

  @override
  String get later => 'あとで';

  @override
  String get noneFound => '見つかりませんでした';

  @override
  String get scanning => 'スキャン中…';

  @override
  String get scanFailed => 'スキャンに失敗しました';

  @override
  String get tryAgain => '再試行';

  @override
  String get couldNotOpenSettings => 'アプリの設定を開けませんでした。';

  @override
  String get homeShare => 'レポートを共有';

  @override
  String get homeRescan => 'アプリを再スキャン';

  @override
  String homeAppsChecked(int count) {
    return 'このスマートフォンで確認したアプリ：$count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return '集計対象のアプリ：$counted、信頼済み：$trusted';
  }

  @override
  String get homeNeedsAttention => '要確認';

  @override
  String get homeSeeAll => 'すべて表示';

  @override
  String get homeAllSafe => '確認が必要なものはありません。すべてのアプリが安全に見えます。';

  @override
  String get homeShareFailed => 'レポートを共有できませんでした。';

  @override
  String get scoreOf100 => '100点満点';

  @override
  String scoreSemantics(int score) {
    return 'プライバシースコア：100点中$score点';
  }

  @override
  String wizardCard(int count) {
    return '機密性の高いアクセス権を持つアプリを確認：$count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'アプリ：$count、リスクの高い順';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$total件中$shown件を表示';
  }

  @override
  String get appsSearch => 'アプリを検索';

  @override
  String get appsNone => 'アプリが見つかりません';

  @override
  String get chipMine => '自分のアプリ';

  @override
  String get chipSystem => 'システム';

  @override
  String get filterAll => 'すべて';

  @override
  String get filterTrackers => 'トラッカーあり';

  @override
  String get filterSpecial => '特別なアクセス';

  @override
  String get filterNotStore => 'ストア外';

  @override
  String get filterOffline => 'オフライン';

  @override
  String get filterTrusted => '信頼済み';

  @override
  String get permSubtitle => 'このスマートフォンで誰が何を使えるか';

  @override
  String get trackersSubtitle => 'どのトラッカーがどのアプリにあるか';

  @override
  String get segTrackers => 'トラッカー';

  @override
  String get noTrackers => '既知のトラッカーは見つかりませんでした。';

  @override
  String get noPerms => '機密性の高い権限は見つかりませんでした。';

  @override
  String appsCount(int count) {
    return 'アプリ：$count';
  }

  @override
  String get changesSubtitle => '新しいアプリと権限の変更';

  @override
  String get clearTitle => '変更履歴を消去しますか？';

  @override
  String get clearBody => '変更履歴の一覧がこのスマートフォンから削除されます。';

  @override
  String get changesEmpty =>
      'まだ変更はありません。Peekless は新規・削除されたアプリ、新しい権限、新しいトラッカーをここに表示します。';

  @override
  String evInstalled(int score, String level) {
    return 'インストールされました。スコア：$score（$level）。';
  }

  @override
  String get evRemoved => '削除されました。';

  @override
  String evAllowed(String label) {
    return '許可されました：$label。';
  }

  @override
  String evRevoked(String label) {
    return '許可されなくなりました：$label。';
  }

  @override
  String evTracker(String name) {
    return '新しいトラッカーを検出：$name。';
  }

  @override
  String evSpecialOn(String label) {
    return '$label：オンになりました。';
  }

  @override
  String evSpecialOff(String label) {
    return '$label：オフになりました。';
  }

  @override
  String get checksTitle => 'セキュリティチェック';

  @override
  String get checksIntro => 'もう一度確認しておきたい項目です。チェックをタップするとアプリが表示されます。';

  @override
  String get checkUnusedTitle => '機密性の高いアクセス権を持つ未使用アプリ';

  @override
  String get checkDebuggableTitle => 'デバッグビルド';

  @override
  String get checkOfflineTitle => 'オフラインのアプリ';

  @override
  String get checkAccessibilityDesc => 'これらのアプリは画面を読み取り、あなたの代わりにタップできます。';

  @override
  String get checkAdminDesc => 'これらのアプリは端末のロックや初期化ができ、アンインストールを妨げることもあります。';

  @override
  String get checkNotificationDesc => 'これらのアプリは認証コードを含むすべての通知を読み取れます。';

  @override
  String checkUnusedDesc(int days) {
    return '$days日間開かれていませんが、機密性の高い権限を使える状態です。削除を検討してください。';
  }

  @override
  String get checkNotStoreDesc => 'ファイルやパソコンからインストールされました。誰も代わりに確認していません。';

  @override
  String get checkDebuggableDesc => 'パソコンから調べられるテスト用ビルドです。';

  @override
  String get checkOldDesc => 'これらのアプリは Android の新しいプライバシー保護を回避します。';

  @override
  String get checkOfflineDesc => 'インターネット権限がないため、データをオンラインに送信できません。';

  @override
  String get usagePromptBody =>
      '任意設定です。使用状況へのアクセスをオンにすると、長く開いていないのにマイク・位置情報・連絡先を使える可能性のあるアプリを見つけられます。データは端末の外に出ません。';

  @override
  String get usagePromptButton => '使用状況へのアクセスをオンにする';

  @override
  String get securityNone => 'このスマートフォンでセキュリティ上の注意点は見つかりませんでした。';

  @override
  String securityOffline(int count) {
    return '完全にオフラインで動作するアプリ：$count';
  }

  @override
  String get fixWizardTitle => '修正ウィザード';

  @override
  String wizardStep(int index, int total) {
    return 'アプリ $index/$total';
  }

  @override
  String get wizardQuestion => 'このアプリは本当にこれを必要としていますか？';

  @override
  String get wizardHint => '「アプリの設定を開く」をタップし、「権限」を開いて、アプリに不要なものをオフにしてください。';

  @override
  String get openAppSettings => 'アプリの設定を開く';

  @override
  String get trustApp => 'このアプリを信頼する';

  @override
  String get nextApp => '次のアプリ';

  @override
  String get finish => '完了';

  @override
  String get wizardDone => 'すべて確認しました';

  @override
  String get wizardNothing => '確認するものはありません';

  @override
  String get wizardNothingBody => '現在、機密性の高いアクセス権を持つアプリはありません。';

  @override
  String get wizardRescanBody => '再スキャンして新しいスコアを確認しましょう。';

  @override
  String get rescanFinish => '再スキャンして完了';

  @override
  String get wizardRequested => 'リクエスト済み・未許可';

  @override
  String scoreTrackers(int count) {
    return '既知のトラッカー：$count';
  }

  @override
  String get scoreDebuggable => 'デバッグビルド';

  @override
  String get scoreOldTarget => '非常に古い Android 向けに作成';

  @override
  String unusualFor(String groups) {
    return 'この種類のアプリとしては珍しい：$groups';
  }

  @override
  String get noteRequested => 'リクエスト済み、半分で計算';

  @override
  String get noteAllowed => '許可済み';

  @override
  String noteTrackers(int points, int max) {
    return '1件につき$points点、最大$max点';
  }

  @override
  String get noteTurnedOn => 'オン';

  @override
  String get noteDebuggable => 'パソコンから調べられます';

  @override
  String noteApi(int apiLevel) {
    return 'API レベル $apiLevel';
  }

  @override
  String get noteExtra => '追加の減点';

  @override
  String get explainTitle => 'スコアの仕組み';

  @override
  String get explainIntro => 'すべてのアプリは100点から始まります。アプリにできることに応じて減点されます。';

  @override
  String get explainStart => '開始';

  @override
  String get explainNothing => '減点なし';

  @override
  String get explainNothingNote => '機密性の高い権限も既知のトラッカーもありません';

  @override
  String get explainScore => 'スコア';

  @override
  String get explainRules => 'ルール';

  @override
  String get rule1 => '各グループでは最も重い権限だけが計上されます。たとえば、正確な位置情報とおおよその位置情報は1回だけ数えます。';

  @override
  String get rule2 =>
      '特別な権限（すべてのファイル、他のアプリの上に表示、アプリのインストール）は、アプリがリクエストしただけの場合は半分で計算します。';

  @override
  String rule3(int points, int max) {
    return '既知のトラッカー1件につき$points点減点、最大$max点です。';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'オンになっている特別なアクセスは減点されます：ユーザー補助 $a、デバイス管理者 $b、通知へのアクセス $c。';
  }

  @override
  String rule5(int a, int b) {
    return 'デバッグビルドは$a点減点。Android 7 以前向けに作られたアプリは$b点減点です。';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'その種類のアプリとして珍しい権限（たとえばライトアプリのマイク）には、さらに$points点を減点します。対象は最大$maxGroupsつの権限グループです。';
  }

  @override
  String get rule7 => '70点以上：安全。40〜69点：注意。40点未満：危険。';

  @override
  String get explainFooter => 'スコアは、アプリが今何をしているかではなく、何ができるかを示します。';

  @override
  String get howScore => 'このスコアはどう計算されますか？';

  @override
  String summaryTrackers(int count) {
    return '既知のトラッカー：$count。';
  }

  @override
  String get summaryNone => '機密性の高い権限も既知のトラッカーもありません。';

  @override
  String metaTrackers(int count) {
    return 'トラッカー：$count';
  }

  @override
  String get metaNone => '機密性の高い権限なし';

  @override
  String get detailSecurity => 'セキュリティ';

  @override
  String get detailSource => '入手元';

  @override
  String get detailInternet => 'インターネット';

  @override
  String get detailInternetYes => 'インターネットに接続できます';

  @override
  String get detailOffline => 'オフライン';

  @override
  String get detailOfflineBody => 'インターネット権限がないため、データをオンラインに送信できません';

  @override
  String get detailLastOpened => '最後に開いた日';

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String daysSince(int days) {
    return '最後に使ってからの日数：$days';
  }

  @override
  String get detailDebuggableBody => 'パソコンから調べられるテスト用ビルド';

  @override
  String detailOldBody(int apiLevel) {
    return 'API レベル $apiLevel のため、新しいプライバシー保護が回避されます';
  }

  @override
  String get detailTrustBody => '「危険」の集計や通知に含めない';

  @override
  String get detailNoPerms => 'このアプリは機密性の高い権限をリクエストしていません。';

  @override
  String get chipAllowed => '許可';

  @override
  String get chipRequested => 'リクエスト済み';

  @override
  String get chipNotAllowed => '許可なし';

  @override
  String sensitiveNote(String why) {
    return '機密：$why';
  }

  @override
  String detailTrackers(int count) {
    return '検出されたトラッカー：$count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless は、アプリが今何をしているかではなく、何ができるかを示します。トラッカーはアプリのマニフェストから検出するため、見逃すものがある場合があります。';

  @override
  String get srcBuiltIn => '端末に内蔵';

  @override
  String get srcUnknown => '不明（ファイルやパソコンからインストール）';

  @override
  String get srcApk => '開いた APK ファイル';

  @override
  String get srcAdb => 'パソコン（adb）';

  @override
  String srcInstalledBy(String name) {
    return 'インストール元：$name';
  }

  @override
  String get accessibilityLabel => 'ユーザー補助へのアクセス';

  @override
  String get adminLabel => 'デバイス管理者';

  @override
  String get notificationLabel => '通知へのアクセス';

  @override
  String get accessibilityWhy => 'オンです。画面の内容を読み取り、あなたの代わりに操作できます。';

  @override
  String get adminWhy => 'オンです。端末のロックや初期化ができ、アンインストールを妨げられます。';

  @override
  String get notificationWhy => 'オンです。認証コードを含むすべての通知を読み取れます。';

  @override
  String get grpMicrophone => 'マイク';

  @override
  String get grpCamera => 'カメラ';

  @override
  String get grpLocation => '位置情報';

  @override
  String get grpContacts => '連絡先';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => '通話履歴';

  @override
  String get grpPhone => '電話';

  @override
  String get grpCalendar => 'カレンダー';

  @override
  String get grpBodySensors => '身体センサー';

  @override
  String get grpActivity => 'アクティビティ';

  @override
  String get grpFiles => 'ファイル';

  @override
  String get grpOverlay => '他のアプリの上に表示';

  @override
  String get grpInstalls => 'インストール';

  @override
  String get grpAppList => 'アプリ一覧';

  @override
  String get lblCoarseLocation => 'おおよその位置情報';

  @override
  String get lblFineLocation => '正確な位置情報';

  @override
  String get lblBackgroundLocation => '常時の位置情報';

  @override
  String get lblAccounts => 'アカウント';

  @override
  String get lblReadSms => 'SMSの読み取り';

  @override
  String get lblReceiveSms => 'SMSの受信';

  @override
  String get lblSendSms => 'SMSの送信';

  @override
  String get lblPhoneState => '端末の状態';

  @override
  String get lblCallPhone => '電話の発信';

  @override
  String get lblActivity => '身体活動';

  @override
  String get lblAllFiles => 'すべてのファイル';

  @override
  String get lblFilesMedia => 'ファイルとメディア';

  @override
  String get lblPhotos => '写真';

  @override
  String get lblVideos => '動画';

  @override
  String get lblAudioFiles => '音声ファイル';

  @override
  String get lblOverlay => '他のアプリの上に表示';

  @override
  String get lblInstall => '他のアプリのインストール';

  @override
  String get lblAppList => 'すべてのアプリの表示';

  @override
  String get whyMic => '音声を録音できます。';

  @override
  String get whyCamera => 'カメラを使えます。';

  @override
  String get whyCoarse => 'おおよその位置情報を見られます。';

  @override
  String get whyFine => '正確な位置情報を見られます。';

  @override
  String get whyBackground => '常に位置情報を追跡できます。';

  @override
  String get whyContacts => '連絡先を読み取れます。';

  @override
  String get whyAccounts => '端末のアカウントを見られます。';

  @override
  String get whyReadSms => 'SMSを読み取れます。';

  @override
  String get whyReceiveSms => 'SMSを受信できます。';

  @override
  String get whySendSms => 'SMSを送信できます。';

  @override
  String get whyCallLog => '通話履歴を読み取れます。';

  @override
  String get whyPhoneState => '端末の状態を見られます。';

  @override
  String get whyCallPhone => '電話を発信できます。';

  @override
  String get whyCalendar => 'カレンダーを読み取れます。';

  @override
  String get whyBody => '身体センサーを読み取れます。';

  @override
  String get whyActivity => '身体活動を見られます。';

  @override
  String get whyAllFiles => '端末内のすべてのファイルにアクセスできます。';

  @override
  String get whyFilesMedia => 'ファイルとメディアを読み取れます。';

  @override
  String get whyPhotos => '写真を読み取れます。';

  @override
  String get whyVideos => '動画を読み取れます。';

  @override
  String get whyAudio => '音声ファイルを読み取れます。';

  @override
  String get whyOverlay => '他のアプリの上に表示できます。';

  @override
  String get whyInstall => '他のアプリをインストールできます。';

  @override
  String get whyAppList => '端末内のすべてのアプリを見られます。';

  @override
  String get settingsAppearance => '外観';

  @override
  String get settingsTheme => 'テーマ';

  @override
  String get settingsThemeBody => 'デフォルトでは端末の設定に従います';

  @override
  String get themeSystem => 'システム';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get settingsScanning => 'スキャン';

  @override
  String get settingsAlerts => 'アプリの通知';

  @override
  String get settingsAlertsBody => '新しいアプリや新しい権限をお知らせします。約6時間ごとに確認します。';

  @override
  String get settingsWeekly => '週間サマリー';

  @override
  String get settingsWeeklyBody => 'スコアと変更点を週に1回通知します';

  @override
  String get settingsUsage => '使用状況へのアクセス';

  @override
  String get settingsUsageOn => 'オンです。Peekless はアプリを最後に開いた日時を確認できます。';

  @override
  String get settingsUsageOff =>
      'オフです。任意設定です。使わなくなったアプリを Peekless が見つけられるようになります。データは端末内にとどまります。';

  @override
  String get settingsSystemApps => 'システムアプリを含める';

  @override
  String get settingsSystemAppsBody => '端末に内蔵されているアプリもスキャンします';

  @override
  String get settingsRescan => '今すぐスキャン';

  @override
  String get settingsRescanBody => 'すべてのアプリを再確認します';

  @override
  String get settingsUpdates => 'アップデート';

  @override
  String get settingsCheckUpdates => 'アップデートを確認';

  @override
  String settingsVersion(String version) {
    return 'バージョン $version · タップしたときだけ確認します';
  }

  @override
  String get settingsAbout => 'アプリについて';

  @override
  String get settingsPrivacy => 'プライバシー';

  @override
  String get settingsPrivacyBody => 'すべてのデータは端末内にとどまります';

  @override
  String get settingsOpenSource => 'オープンソース';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 ライセンス。コードは GitHub で確認できます';

  @override
  String get settingsDeveloped => '開発：Lumio Apps';

  @override
  String get settingsLanguage => '言語';

  @override
  String get languageSystem => '端末の言語に合わせる';

  @override
  String get updChecking => 'アップデートを確認中…';

  @override
  String get updLatest => '最新バージョンです。';

  @override
  String get updFailed => 'アップデートを確認できませんでした。後でもう一度お試しください。';

  @override
  String get updTitle => 'アップデートがあります';

  @override
  String updReady(String version) {
    return 'バージョン $version をインストールできます。';
  }

  @override
  String get updDownloadFailed => 'ダウンロードに失敗しました。接続を確認して、もう一度お試しください。';

  @override
  String get updInstall => 'ダウンロードしてインストール';

  @override
  String get notifyDenied => 'これをオンにするには、Peekless の通知を許可してください。';

  @override
  String get settingChangeFailed => 'この設定を変更できませんでした。';

  @override
  String get usageOpenFailed => '使用状況へのアクセス設定を開けませんでした。';

  @override
  String alertNewTitle(String name) {
    return '新しいアプリ：$name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'スコア $score（$level）。$summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name が変更されました';
  }

  @override
  String alertNowHas(String list) {
    return '新たに追加：$list。';
  }

  @override
  String alertNowAllowed(String list) {
    return '許可されました：$list。';
  }

  @override
  String alertNewTracker(String list) {
    return '新しいトラッカー：$list。';
  }

  @override
  String alertScore(int score, String level) {
    return 'スコア $score（$level）。';
  }

  @override
  String get alertMoreTitle => 'ほかの変更';

  @override
  String alertMoreBody(int count) {
    return 'ほかに$count件の変更があります。Peekless を開いて確認してください。';
  }

  @override
  String get weeklyTitle => '今週の Peekless サマリー';

  @override
  String weeklyUp(int score, int diff) {
    return 'スコア $score/100、先週より$diff点上昇。';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'スコア $score/100、先週より$diff点低下。';
  }

  @override
  String weeklySame(int score) {
    return 'スコア $score/100、先週から変化なし。';
  }

  @override
  String weeklyScore(int score) {
    return 'スコア $score/100。';
  }

  @override
  String weeklyNewApps(int count) {
    return '新しいアプリ：$count';
  }

  @override
  String weeklyRemoved(int count) {
    return '削除されたアプリ：$count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'オンになった権限：$count';
  }

  @override
  String weeklyTrackers(int count) {
    return '新しいトラッカー：$count';
  }

  @override
  String weeklyChanges(String list) {
    return '今週：$list。';
  }

  @override
  String get weeklyNone => '今週は変更がありませんでした。';

  @override
  String weeklyRisky(int count) {
    return '危険なアプリ：$count。';
  }

  @override
  String get reportTitle => 'Peekless プライバシーレポート';

  @override
  String reportScore(int score, String level) {
    return 'スコア：$score/100（$level）';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return '確認したアプリ：$total。危険：$risky、注意：$medium、安全：$safe';
  }

  @override
  String get reportAttention => '要確認：';

  @override
  String get reportFooter => '私のスマートフォンで Peekless を使って確認しました。どこにも何も送信していません。';

  @override
  String get trendTitle => 'スコアの推移';

  @override
  String trendUp(int diff, int days) {
    return '$diff点上昇（追跡日数：$days）';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff点低下（追跡日数：$days）';
  }

  @override
  String trendSame(int days) {
    return '変化なし（追跡日数：$days）';
  }

  @override
  String get settingsQuick => 'クイックアクセス';

  @override
  String get quickWidget => 'ホーム画面ウィジェット';

  @override
  String get quickWidgetBody => 'プライバシースコアをホーム画面に表示します';

  @override
  String get quickTile => 'クイック設定タイル';

  @override
  String get quickTileBody => 'クイック設定パネルでスコアを確認できます';

  @override
  String get quickManual =>
      '自動で追加できませんでした。手動で追加してください：ホーム画面を長押し（ウィジェット）、またはクイック設定パネルを編集（タイル）。';

  @override
  String get settingsExport => 'レポートをエクスポート';

  @override
  String get settingsExportBody => 'レポートをPDFまたはJSONファイルとして保存して共有します';

  @override
  String get exportFailed => 'レポートを作成できませんでした。';

  @override
  String get settingsTrackerList => 'トラッカーリスト';

  @override
  String settingsTrackerListBody(int count) {
    return 'タップして更新します。既知のトラッカー：$count件。タップしたときだけ更新します。';
  }

  @override
  String get trackerListUpdating => 'トラッカーリストを更新中…';

  @override
  String trackerListUpdated(int count) {
    return 'トラッカーリストを更新しました。既知のトラッカー：$count件。';
  }

  @override
  String get trackerListCurrent => 'トラッカーリストはすでに最新です。';

  @override
  String get trackerListFailed => 'トラッカーリストを更新できませんでした。接続を確認してください。';

  @override
  String get homeTagline => 'だれがあなたをのぞいているか確認しましょう。';

  @override
  String get homeOverviewBody => 'それぞれを使えるアプリの割合';
}
