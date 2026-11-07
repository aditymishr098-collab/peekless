// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get navHome => '首页';

  @override
  String get navApps => '应用';

  @override
  String get navPermissions => '权限';

  @override
  String get navChanges => '变更';

  @override
  String get navSettings => '设置';

  @override
  String get levelRisky => '高风险';

  @override
  String get levelMedium => '中等';

  @override
  String get levelSafe => '安全';

  @override
  String get overallHigh => '风险高';

  @override
  String get overallMedium => '风险中等';

  @override
  String get overallLow => '风险低';

  @override
  String get cancel => '取消';

  @override
  String get clear => '清除';

  @override
  String get back => '返回';

  @override
  String get later => '稍后';

  @override
  String get noneFound => '未找到任何内容';

  @override
  String get scanning => '正在扫描…';

  @override
  String get scanFailed => '扫描失败';

  @override
  String get tryAgain => '重试';

  @override
  String get couldNotOpenSettings => '无法打开应用设置。';

  @override
  String get homeShare => '分享报告';

  @override
  String get homeRescan => '重新扫描应用';

  @override
  String homeAppsChecked(int count) {
    return '此手机上已检查的应用：$count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return '已计入的应用：$counted，已信任：$trusted';
  }

  @override
  String get homeNeedsAttention => '需要关注';

  @override
  String get homeSeeAll => '查看全部';

  @override
  String get homeAllSafe => '没有需要关注的内容。所有应用看起来都很安全。';

  @override
  String get homeShareFailed => '无法分享报告。';

  @override
  String get scoreOf100 => '满分 100';

  @override
  String scoreSemantics(int score) {
    return '隐私评分：$score 分（满分 100）';
  }

  @override
  String wizardCard(int count) {
    return '检查拥有敏感访问权限的应用：$count';
  }

  @override
  String appsSubtitleAll(int count) {
    return '应用：$count，风险最高的排在前面';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '显示 $shown/$total';
  }

  @override
  String get appsSearch => '搜索应用';

  @override
  String get appsNone => '未找到应用';

  @override
  String get chipMine => '我的应用';

  @override
  String get chipSystem => '系统';

  @override
  String get filterAll => '全部';

  @override
  String get filterTrackers => '含跟踪器';

  @override
  String get filterSpecial => '特殊访问';

  @override
  String get filterNotStore => '非商店安装';

  @override
  String get filterOffline => '离线';

  @override
  String get filterTrusted => '已信任';

  @override
  String get permSubtitle => '谁能在此手机上使用什么';

  @override
  String get trackersSubtitle => '哪些跟踪器存在于哪些应用中';

  @override
  String get segTrackers => '跟踪器';

  @override
  String get noTrackers => '未发现已知跟踪器。';

  @override
  String get noPerms => '未发现敏感权限。';

  @override
  String appsCount(int count) {
    return '应用：$count';
  }

  @override
  String get changesSubtitle => '新应用和权限变更';

  @override
  String get clearTitle => '清除变更记录？';

  @override
  String get clearBody => '变更列表将从此手机中移除。';

  @override
  String get changesEmpty => '暂无变更。Peekless 会在此显示新增和卸载的应用、新权限以及新跟踪器。';

  @override
  String evInstalled(int score, String level) {
    return '已安装。评分：$score（$level）。';
  }

  @override
  String get evRemoved => '已移除。';

  @override
  String evAllowed(String label) {
    return '现已允许：$label。';
  }

  @override
  String evRevoked(String label) {
    return '不再允许：$label。';
  }

  @override
  String evTracker(String name) {
    return '发现新跟踪器：$name。';
  }

  @override
  String evSpecialOn(String label) {
    return '$label：已开启。';
  }

  @override
  String evSpecialOff(String label) {
    return '$label：已关闭。';
  }

  @override
  String get checksTitle => '安全检查';

  @override
  String get checksIntro => '值得再看一眼的内容。点按某项检查即可查看相关应用。';

  @override
  String get checkUnusedTitle => '拥有敏感访问权限的闲置应用';

  @override
  String get checkDebuggableTitle => '调试版本';

  @override
  String get checkOfflineTitle => '离线应用';

  @override
  String get checkAccessibilityDesc => '这些应用可以读取您的屏幕内容并代您点按。';

  @override
  String get checkAdminDesc => '这些应用可以锁定或清除手机，并阻止自身被卸载。';

  @override
  String get checkNotificationDesc => '这些应用可以读取您的所有通知，包括验证码。';

  @override
  String checkUnusedDesc(int days) {
    return '已有 $days 天未打开，但仍可使用敏感权限。建议考虑将其移除。';
  }

  @override
  String get checkNotStoreDesc => '通过文件或电脑安装。没有人替您审核过。';

  @override
  String get checkDebuggableDesc => '可从电脑检查的测试版本。';

  @override
  String get checkOldDesc => '这些应用会绕过 Android 新的隐私保护。';

  @override
  String get checkOfflineDesc => '没有联网权限，因此无法在线发送数据。';

  @override
  String get usagePromptBody =>
      '可选。开启使用情况访问权限，即可找出您很久没打开、却仍可使用麦克风、位置或通讯录的应用。数据不会离开您的手机。';

  @override
  String get usagePromptButton => '开启使用情况访问权限';

  @override
  String get securityNone => '此手机上未发现安全提示。';

  @override
  String securityOffline(int count) {
    return '完全离线运行的应用：$count';
  }

  @override
  String get fixWizardTitle => '修复向导';

  @override
  String wizardStep(int index, int total) {
    return '第 $index 个应用，共 $total 个';
  }

  @override
  String get wizardQuestion => '这个应用真的需要这些吗？';

  @override
  String get wizardHint => '点按“打开应用设置”，再点按“权限”，然后关闭应用不需要的权限。';

  @override
  String get openAppSettings => '打开应用设置';

  @override
  String get trustApp => '我信任此应用';

  @override
  String get nextApp => '下一个应用';

  @override
  String get finish => '完成';

  @override
  String get wizardDone => '全部已查看';

  @override
  String get wizardNothing => '没有需要查看的内容';

  @override
  String get wizardNothingBody => '目前没有应用拥有敏感访问权限。';

  @override
  String get wizardRescanBody => '重新扫描以查看新的评分。';

  @override
  String get rescanFinish => '重新扫描并完成';

  @override
  String get wizardRequested => '已请求，尚未允许';

  @override
  String scoreTrackers(int count) {
    return '已知跟踪器：$count';
  }

  @override
  String get scoreDebuggable => '调试版本';

  @override
  String get scoreOldTarget => '为非常旧的 Android 构建';

  @override
  String unusualFor(String groups) {
    return '对此类应用而言不寻常：$groups';
  }

  @override
  String get noteRequested => '已请求，按一半计算';

  @override
  String get noteAllowed => '已允许';

  @override
  String noteTrackers(int points, int max) {
    return '每个 $points 分，最多 $max 分';
  }

  @override
  String get noteTurnedOn => '已开启';

  @override
  String get noteDebuggable => '可从电脑检查';

  @override
  String noteApi(int apiLevel) {
    return 'API 级别 $apiLevel';
  }

  @override
  String get noteExtra => '额外扣分';

  @override
  String get explainTitle => '评分如何计算';

  @override
  String get explainIntro => '每个应用起始为 100 分。根据应用能够做的事情扣分。';

  @override
  String get explainStart => '起始';

  @override
  String get explainNothing => '未扣分';

  @override
  String get explainNothingNote => '没有敏感权限或已知跟踪器';

  @override
  String get explainScore => '评分';

  @override
  String get explainRules => '规则';

  @override
  String get rule1 => '每个分组只计算最严重的权限。例如，精确位置和大致位置只算一次。';

  @override
  String get rule2 => '特殊权限（所有文件、显示在其他应用上层、安装应用）如果应用仅请求而未获允许，则按一半计算。';

  @override
  String rule3(int points, int max) {
    return '每个已知跟踪器扣 $points 分，最多扣 $max 分。';
  }

  @override
  String rule4(int a, int b, int c) {
    return '已开启的特殊访问会扣分：无障碍 $a，设备管理员 $b，通知访问 $c。';
  }

  @override
  String rule5(int a, int b) {
    return '调试版本扣 $a 分。为 Android 7 或更早版本构建的应用扣 $b 分。';
  }

  @override
  String rule6(int points, int maxGroups) {
    return '如果某项权限对此类应用而言不寻常（例如手电筒应用使用麦克风），则额外扣 $points 分，最多适用于 $maxGroups 个权限分组。';
  }

  @override
  String get rule7 => '70 分及以上：安全。40 至 69 分：中等。低于 40 分：高风险。';

  @override
  String get explainFooter => '评分反映应用能够做什么，而不是它此刻在做什么。';

  @override
  String get howScore => '这个评分是怎么算的？';

  @override
  String summaryTrackers(int count) {
    return '已知跟踪器：$count。';
  }

  @override
  String get summaryNone => '没有敏感权限或已知跟踪器。';

  @override
  String metaTrackers(int count) {
    return '跟踪器：$count';
  }

  @override
  String get metaNone => '无敏感权限';

  @override
  String get detailSecurity => '安全';

  @override
  String get detailSource => '来源';

  @override
  String get detailInternet => '互联网';

  @override
  String get detailInternetYes => '可以访问互联网';

  @override
  String get detailOffline => '离线';

  @override
  String get detailOfflineBody => '没有联网权限，因此无法在线发送数据';

  @override
  String get detailLastOpened => '上次打开';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String daysSince(int days) {
    return '距上次使用的天数：$days';
  }

  @override
  String get detailDebuggableBody => '可从电脑检查的测试版本';

  @override
  String detailOldBody(int apiLevel) {
    return 'API 级别 $apiLevel，因此会绕过新的隐私保护';
  }

  @override
  String get detailTrustBody => '不计入“高风险”和提醒';

  @override
  String get detailNoPerms => '此应用未请求敏感权限。';

  @override
  String get chipAllowed => '已允许';

  @override
  String get chipRequested => '已请求';

  @override
  String get chipNotAllowed => '未允许';

  @override
  String sensitiveNote(String why) {
    return '敏感：$why';
  }

  @override
  String detailTrackers(int count) {
    return '发现的跟踪器：$count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless 显示的是应用能够做什么，而不是它此刻在做什么。跟踪器通过应用清单检测，因此可能有遗漏。';

  @override
  String get srcBuiltIn => '手机内置';

  @override
  String get srcUnknown => '未知（通过文件或电脑安装）';

  @override
  String get srcApk => '您打开的 APK 文件';

  @override
  String get srcAdb => '电脑（adb）';

  @override
  String srcInstalledBy(String name) {
    return '安装者：$name';
  }

  @override
  String get accessibilityLabel => '无障碍访问';

  @override
  String get adminLabel => '设备管理员';

  @override
  String get notificationLabel => '通知访问';

  @override
  String get accessibilityWhy => '已开启。可以读取屏幕上的内容并代您操作。';

  @override
  String get adminWhy => '已开启。可以锁定手机、清除数据并阻止卸载。';

  @override
  String get notificationWhy => '已开启。可以读取您的所有通知，包括验证码。';

  @override
  String get grpMicrophone => '麦克风';

  @override
  String get grpCamera => '相机';

  @override
  String get grpLocation => '位置';

  @override
  String get grpContacts => '通讯录';

  @override
  String get grpSms => '短信';

  @override
  String get grpCallLog => '通话记录';

  @override
  String get grpPhone => '电话';

  @override
  String get grpCalendar => '日历';

  @override
  String get grpBodySensors => '身体传感器';

  @override
  String get grpActivity => '活动';

  @override
  String get grpFiles => '文件';

  @override
  String get grpOverlay => '悬浮显示';

  @override
  String get grpInstalls => '安装';

  @override
  String get grpAppList => '应用列表';

  @override
  String get lblCoarseLocation => '大致位置';

  @override
  String get lblFineLocation => '精确位置';

  @override
  String get lblBackgroundLocation => '始终获取位置';

  @override
  String get lblAccounts => '账号';

  @override
  String get lblReadSms => '读取短信';

  @override
  String get lblReceiveSms => '接收短信';

  @override
  String get lblSendSms => '发送短信';

  @override
  String get lblPhoneState => '手机状态';

  @override
  String get lblCallPhone => '拨打电话';

  @override
  String get lblActivity => '身体活动';

  @override
  String get lblAllFiles => '所有文件';

  @override
  String get lblFilesMedia => '文件和媒体';

  @override
  String get lblPhotos => '照片';

  @override
  String get lblVideos => '视频';

  @override
  String get lblAudioFiles => '音频文件';

  @override
  String get lblOverlay => '显示在其他应用上层';

  @override
  String get lblInstall => '安装其他应用';

  @override
  String get lblAppList => '查看所有应用';

  @override
  String get whyMic => '可以录音。';

  @override
  String get whyCamera => '可以使用相机。';

  @override
  String get whyCoarse => '可以看到您的大致位置。';

  @override
  String get whyFine => '可以看到您的精确位置。';

  @override
  String get whyBackground => '可以始终跟踪您的位置。';

  @override
  String get whyContacts => '可以读取您的通讯录。';

  @override
  String get whyAccounts => '可以查看手机上的账号。';

  @override
  String get whyReadSms => '可以读取您的短信。';

  @override
  String get whyReceiveSms => '可以接收您的短信。';

  @override
  String get whySendSms => '可以发送短信。';

  @override
  String get whyCallLog => '可以读取您的通话记录。';

  @override
  String get whyPhoneState => '可以查看您的手机状态。';

  @override
  String get whyCallPhone => '可以拨打电话。';

  @override
  String get whyCalendar => '可以读取您的日历。';

  @override
  String get whyBody => '可以读取身体传感器。';

  @override
  String get whyActivity => '可以查看您的身体活动。';

  @override
  String get whyAllFiles => '可以访问手机上的所有文件。';

  @override
  String get whyFilesMedia => '可以读取文件和媒体。';

  @override
  String get whyPhotos => '可以读取您的照片。';

  @override
  String get whyVideos => '可以读取您的视频。';

  @override
  String get whyAudio => '可以读取您的音频文件。';

  @override
  String get whyOverlay => '可以显示在其他应用上层。';

  @override
  String get whyInstall => '可以安装其他应用。';

  @override
  String get whyAppList => '可以查看手机上的所有应用。';

  @override
  String get settingsAppearance => '外观';

  @override
  String get settingsTheme => '主题';

  @override
  String get settingsThemeBody => '默认跟随手机';

  @override
  String get themeSystem => '跟随系统';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get settingsScanning => '扫描';

  @override
  String get settingsAlerts => '应用提醒';

  @override
  String get settingsAlertsBody => '发现新应用和新权限时提醒您。大约每 6 小时检查一次。';

  @override
  String get settingsWeekly => '每周摘要';

  @override
  String get settingsWeeklyBody => '每周一条通知，包含您的评分和变化';

  @override
  String get settingsUsage => '使用情况访问权限';

  @override
  String get settingsUsageOn => '已开启。Peekless 可以查看应用上次打开的时间。';

  @override
  String get settingsUsageOff => '已关闭。可选。让 Peekless 找出您不再使用的应用。数据留在您的手机上。';

  @override
  String get settingsSystemApps => '包含系统应用';

  @override
  String get settingsSystemAppsBody => '同时扫描手机内置的应用';

  @override
  String get settingsRescan => '立即扫描';

  @override
  String get settingsRescanBody => '重新检查所有应用';

  @override
  String get settingsUpdates => '更新';

  @override
  String get settingsCheckUpdates => '检查更新';

  @override
  String settingsVersion(String version) {
    return '版本 $version · 仅在您点按时检查';
  }

  @override
  String get settingsAbout => '关于';

  @override
  String get settingsPrivacy => '隐私';

  @override
  String get settingsPrivacyBody => '一切都保留在您的手机上';

  @override
  String get settingsOpenSource => '开源';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 许可证。在 GitHub 上查看代码';

  @override
  String get settingsDeveloped => '由 Lumio Apps 开发';

  @override
  String get settingsLanguage => '语言';

  @override
  String get languageSystem => '跟随手机语言';

  @override
  String get updChecking => '正在检查更新…';

  @override
  String get updLatest => '您使用的已是最新版本。';

  @override
  String get updFailed => '无法检查更新。请稍后再试。';

  @override
  String get updTitle => '有可用更新';

  @override
  String updReady(String version) {
    return '版本 $version 已可安装。';
  }

  @override
  String get updDownloadFailed => '下载失败。请检查网络连接后重试。';

  @override
  String get updInstall => '下载并安装';

  @override
  String get notifyDenied => '请允许 Peekless 发送通知以开启此功能。';

  @override
  String get settingChangeFailed => '无法更改此设置。';

  @override
  String get usageOpenFailed => '无法打开使用情况访问权限设置。';

  @override
  String alertNewTitle(String name) {
    return '新应用：$name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return '评分 $score（$level）。$summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name 已变化';
  }

  @override
  String alertNowHas(String list) {
    return '现在拥有：$list。';
  }

  @override
  String alertNowAllowed(String list) {
    return '现已允许：$list。';
  }

  @override
  String alertNewTracker(String list) {
    return '新跟踪器：$list。';
  }

  @override
  String alertScore(int score, String level) {
    return '评分 $score（$level）。';
  }

  @override
  String get alertMoreTitle => '更多变化';

  @override
  String alertMoreBody(int count) {
    return '另有 $count 项变化。打开 Peekless 查看。';
  }

  @override
  String get weeklyTitle => '您的 Peekless 每周摘要';

  @override
  String weeklyUp(int score, int diff) {
    return '评分 $score/100，比上周高 $diff 分。';
  }

  @override
  String weeklyDown(int score, int diff) {
    return '评分 $score/100，比上周低 $diff 分。';
  }

  @override
  String weeklySame(int score) {
    return '评分 $score/100，与上周相比没有变化。';
  }

  @override
  String weeklyScore(int score) {
    return '评分 $score/100。';
  }

  @override
  String weeklyNewApps(int count) {
    return '新应用：$count';
  }

  @override
  String weeklyRemoved(int count) {
    return '已移除的应用：$count';
  }

  @override
  String weeklyAllowed(int count) {
    return '已开启的权限：$count';
  }

  @override
  String weeklyTrackers(int count) {
    return '新跟踪器：$count';
  }

  @override
  String weeklyChanges(String list) {
    return '本周：$list。';
  }

  @override
  String get weeklyNone => '本周没有变化。';

  @override
  String weeklyRisky(int count) {
    return '高风险应用：$count。';
  }

  @override
  String get reportTitle => 'Peekless 隐私报告';

  @override
  String reportScore(int score, String level) {
    return '评分：$score/100（$level）';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return '已检查的应用：$total。高风险：$risky，中等：$medium，安全：$safe';
  }

  @override
  String get reportAttention => '需要关注：';

  @override
  String get reportFooter => '已用 Peekless 在我的手机上检查。没有向任何地方发送任何内容。';

  @override
  String get trendTitle => '评分变化趋势';

  @override
  String trendUp(int diff, int days) {
    return '上升 $diff 分（已追踪天数：$days）';
  }

  @override
  String trendDown(int diff, int days) {
    return '下降 $diff 分（已追踪天数：$days）';
  }

  @override
  String trendSame(int days) {
    return '没有变化（已追踪天数：$days）';
  }

  @override
  String get settingsQuick => '快捷访问';

  @override
  String get quickWidget => '主屏幕小组件';

  @override
  String get quickWidgetBody => '在主屏幕上显示你的隐私评分';

  @override
  String get quickTile => '快速设置图块';

  @override
  String get quickTileBody => '在快速设置面板中查看你的评分';

  @override
  String get quickManual => '你的手机无法自动添加。请手动添加：长按主屏幕（小组件）或编辑快速设置面板（图块）。';

  @override
  String get settingsExport => '导出报告';

  @override
  String get settingsExportBody => '将报告保存为 PDF 或 JSON 文件并分享';

  @override
  String get exportFailed => '无法创建报告。';

  @override
  String get settingsTrackerList => '追踪器列表';

  @override
  String settingsTrackerListBody(int count) {
    return '点按以更新。已知 $count 个追踪器。仅在你点按时更新。';
  }

  @override
  String get trackerListUpdating => '正在更新追踪器列表…';

  @override
  String trackerListUpdated(int count) {
    return '追踪器列表已更新。已知 $count 个追踪器。';
  }

  @override
  String get trackerListCurrent => '追踪器列表已是最新。';

  @override
  String get trackerListFailed => '无法更新追踪器列表。请检查网络连接。';

  @override
  String get homeTagline => '看看谁在窥探你。';

  @override
  String get homeOverviewBody => '可使用各项权限的应用所占比例';

  @override
  String get settingsDeep => '深度扫描';

  @override
  String get settingsDeepBody =>
      '同时在每个应用的代码内部查找隐藏的追踪器。首次扫描较慢。手机自带的应用会被跳过。所有内容都留在你的手机上。';

  @override
  String trackersFromCode(int count) {
    return '在应用代码内发现（以代码图标标记）：$count';
  }

  @override
  String get settingsNet => '网络监视器';

  @override
  String get settingsNetBody => '查看哪些应用在查询哪些网络地址，以及哪些是追踪器';

  @override
  String get netTitle => '网络监视器';

  @override
  String get netIntro =>
      'Peekless 会显示你的应用请求了哪些域名。它使用只接收这些查询的本地 VPN，所以网速不会改变。它看不到你发送或阅读的内容，只能看到名称。任何内容都不会离开你的手机。';

  @override
  String get netLimits =>
      '对于使用自带加密 DNS 的应用，或私人 DNS 固定为某个提供商时，可能会漏掉。需要 Android 10 或更高版本才能显示是哪个应用发起的请求。';

  @override
  String get netSwitch => '监视查询';

  @override
  String get netOn => '已开启。请使用一些应用，然后回来查看结果。';

  @override
  String get netOff => '已关闭';

  @override
  String get netEmpty => '暂时还没有看到任何内容。请使用一些应用后再查看。';

  @override
  String netLookups(int count) {
    return '$count 次查询';
  }

  @override
  String netTrackerCount(int count) {
    return '$count 个追踪器域名';
  }

  @override
  String get netClear => '清除数据';

  @override
  String get netCleared => '网络数据已清除。';

  @override
  String get netConsentDenied => 'Android 未允许启动监视器。';

  @override
  String get netFailed => '无法更改网络监视器。';

  @override
  String get netUnknownApp => '未知应用';

  @override
  String netTrackerTag(String name) {
    return '追踪器：$name';
  }

  @override
  String get netBlockTitle => '屏蔽追踪器域名';

  @override
  String get netBlockBody =>
      '已知追踪器的域名会得到空响应，因此这些应用无法访问它们。部分应用可能会失去广告、统计或其他功能。默认关闭。';

  @override
  String netBlockedCount(int count) {
    return '已屏蔽 $count 次';
  }

  @override
  String get netExport => '导出为 CSV';

  @override
  String get trackerKindAds => '广告';

  @override
  String get trackerKindAdsBody =>
      '在应用中显示广告，并统计你看到和点击了哪些广告。通常会用你的广告 ID 和设备信息来挑选广告。';

  @override
  String get trackerKindAnalytics => '使用分析';

  @override
  String get trackerKindAnalyticsBody =>
      '记录你如何使用应用：打开了哪些页面、点了哪些按钮、停留多久。应用开发者用它来了解用户。';

  @override
  String get trackerKindAttribution => '安装归因';

  @override
  String get trackerKindAttributionBody =>
      '查明是哪条广告或链接让你安装了应用，并跟踪你之后的行为，让广告主了解广告效果。';

  @override
  String get trackerKindCrash => '崩溃报告';

  @override
  String get trackerKindCrashBody =>
      '应用崩溃时发送报告，包含手机和错误的信息。帮助开发者修复问题，通常是侵入性最小的一类。';

  @override
  String get trackerKindPush => '推送消息';

  @override
  String get trackerKindPushBody => '向你的手机发送通知，并可能记录你是否打开。通知需要它，但也被用于营销消息。';

  @override
  String get trackerKindOther => '追踪器';

  @override
  String get trackerKindOtherBody =>
      '已知的追踪组件。Peekless 没有它的详细说明，但它可能收集你或你设备的数据并发送到网上。';

  @override
  String get trackerTapHint => '点按追踪器可查看它的作用。';

  @override
  String get certTitle => '签名证书';

  @override
  String get certNormal => '未使用调试密钥签名。点按可复制指纹。';

  @override
  String get certDebug => '使用调试密钥签名。正式版本使用私钥，所以请谨慎对待此应用。点按可复制指纹。';

  @override
  String get certUnknown => 'Android 没有提供此应用的证书。';

  @override
  String get certCopied => '已复制 SHA-256';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get navHome => '首頁';

  @override
  String get navApps => '應用程式';

  @override
  String get navPermissions => '權限';

  @override
  String get navChanges => '變更';

  @override
  String get navSettings => '設定';

  @override
  String get levelRisky => '高風險';

  @override
  String get levelMedium => '中等';

  @override
  String get levelSafe => '安全';

  @override
  String get overallHigh => '風險高';

  @override
  String get overallMedium => '風險中等';

  @override
  String get overallLow => '風險低';

  @override
  String get cancel => '取消';

  @override
  String get clear => '清除';

  @override
  String get back => '返回';

  @override
  String get later => '稍後';

  @override
  String get noneFound => '找不到任何項目';

  @override
  String get scanning => '掃描中…';

  @override
  String get scanFailed => '掃描失敗';

  @override
  String get tryAgain => '重試';

  @override
  String get couldNotOpenSettings => '無法開啟應用程式設定。';

  @override
  String get homeShare => '分享報告';

  @override
  String get homeRescan => '重新掃描應用程式';

  @override
  String homeAppsChecked(int count) {
    return '此手機上已檢查的應用程式：$count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return '已計入的應用程式：$counted，已信任：$trusted';
  }

  @override
  String get homeNeedsAttention => '需要留意';

  @override
  String get homeSeeAll => '查看全部';

  @override
  String get homeAllSafe => '沒有需要留意的項目。所有應用程式看起來都很安全。';

  @override
  String get homeShareFailed => '無法分享報告。';

  @override
  String get scoreOf100 => '滿分 100';

  @override
  String scoreSemantics(int score) {
    return '隱私評分：$score 分（滿分 100）';
  }

  @override
  String wizardCard(int count) {
    return '檢查具敏感存取權的應用程式：$count';
  }

  @override
  String appsSubtitleAll(int count) {
    return '應用程式：$count，風險最高者優先';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '顯示 $shown/$total';
  }

  @override
  String get appsSearch => '搜尋應用程式';

  @override
  String get appsNone => '找不到應用程式';

  @override
  String get chipMine => '我的應用程式';

  @override
  String get chipSystem => '系統';

  @override
  String get filterAll => '全部';

  @override
  String get filterTrackers => '含追蹤器';

  @override
  String get filterSpecial => '特殊存取';

  @override
  String get filterNotStore => '非商店安裝';

  @override
  String get filterOffline => '離線';

  @override
  String get filterTrusted => '已信任';

  @override
  String get permSubtitle => '誰能在此手機上使用什麼';

  @override
  String get trackersSubtitle => '哪些追蹤器存在於哪些應用程式中';

  @override
  String get segTrackers => '追蹤器';

  @override
  String get noTrackers => '未發現已知追蹤器。';

  @override
  String get noPerms => '未發現敏感權限。';

  @override
  String appsCount(int count) {
    return '應用程式：$count';
  }

  @override
  String get changesSubtitle => '新應用程式與權限變更';

  @override
  String get clearTitle => '清除變更記錄？';

  @override
  String get clearBody => '變更清單將從此手機中移除。';

  @override
  String get changesEmpty => '目前沒有變更。Peekless 會在此顯示新增與移除的應用程式、新權限以及新追蹤器。';

  @override
  String evInstalled(int score, String level) {
    return '已安裝。評分：$score（$level）。';
  }

  @override
  String get evRemoved => '已移除。';

  @override
  String evAllowed(String label) {
    return '現已允許：$label。';
  }

  @override
  String evRevoked(String label) {
    return '不再允許：$label。';
  }

  @override
  String evTracker(String name) {
    return '發現新追蹤器：$name。';
  }

  @override
  String evSpecialOn(String label) {
    return '$label：已開啟。';
  }

  @override
  String evSpecialOff(String label) {
    return '$label：已關閉。';
  }

  @override
  String get checksTitle => '安全檢查';

  @override
  String get checksIntro => '值得再看一眼的項目。點一下檢查項目即可查看相關應用程式。';

  @override
  String get checkUnusedTitle => '具敏感存取權的閒置應用程式';

  @override
  String get checkDebuggableTitle => '偵錯版本';

  @override
  String get checkOfflineTitle => '離線應用程式';

  @override
  String get checkAccessibilityDesc => '這些應用程式可以讀取您的螢幕內容並代您點按。';

  @override
  String get checkAdminDesc => '這些應用程式可以鎖定或清除手機，並阻止自身被解除安裝。';

  @override
  String get checkNotificationDesc => '這些應用程式可以讀取您的所有通知，包括驗證碼。';

  @override
  String checkUnusedDesc(int days) {
    return '已有 $days 天未開啟，但仍可使用敏感權限。建議考慮將其移除。';
  }

  @override
  String get checkNotStoreDesc => '透過檔案或電腦安裝。沒有人替您審查過。';

  @override
  String get checkDebuggableDesc => '可從電腦檢查的測試版本。';

  @override
  String get checkOldDesc => '這些應用程式會繞過 Android 新的隱私保護機制。';

  @override
  String get checkOfflineDesc => '沒有網路權限，因此無法在線上傳送資料。';

  @override
  String get usagePromptBody =>
      '選用。開啟使用情況存取權，即可找出您很久沒開啟、卻仍可使用麥克風、位置或聯絡人的應用程式。資料不會離開您的手機。';

  @override
  String get usagePromptButton => '開啟使用情況存取權';

  @override
  String get securityNone => '此手機上未發現安全提示。';

  @override
  String securityOffline(int count) {
    return '完全離線運作的應用程式：$count';
  }

  @override
  String get fixWizardTitle => '修正精靈';

  @override
  String wizardStep(int index, int total) {
    return '第 $index 個應用程式，共 $total 個';
  }

  @override
  String get wizardQuestion => '這個應用程式真的需要這些嗎？';

  @override
  String get wizardHint => '點一下「開啟應用程式設定」，再點「權限」，然後關閉應用程式不需要的權限。';

  @override
  String get openAppSettings => '開啟應用程式設定';

  @override
  String get trustApp => '我信任此應用程式';

  @override
  String get nextApp => '下一個應用程式';

  @override
  String get finish => '完成';

  @override
  String get wizardDone => '全部已檢視';

  @override
  String get wizardNothing => '沒有需要檢視的項目';

  @override
  String get wizardNothingBody => '目前沒有應用程式具有敏感存取權。';

  @override
  String get wizardRescanBody => '重新掃描以查看新的評分。';

  @override
  String get rescanFinish => '重新掃描並完成';

  @override
  String get wizardRequested => '已要求，尚未允許';

  @override
  String scoreTrackers(int count) {
    return '已知追蹤器：$count';
  }

  @override
  String get scoreDebuggable => '偵錯版本';

  @override
  String get scoreOldTarget => '為非常舊的 Android 所建置';

  @override
  String unusualFor(String groups) {
    return '對此類應用程式而言不尋常：$groups';
  }

  @override
  String get noteRequested => '已要求，以一半計算';

  @override
  String get noteAllowed => '已允許';

  @override
  String noteTrackers(int points, int max) {
    return '每個 $points 分，最多 $max 分';
  }

  @override
  String get noteTurnedOn => '已開啟';

  @override
  String get noteDebuggable => '可從電腦檢查';

  @override
  String noteApi(int apiLevel) {
    return 'API 級別 $apiLevel';
  }

  @override
  String get noteExtra => '額外扣分';

  @override
  String get explainTitle => '評分如何運作';

  @override
  String get explainIntro => '每個應用程式起始為 100 分。依應用程式能夠做的事情扣分。';

  @override
  String get explainStart => '起始';

  @override
  String get explainNothing => '未扣分';

  @override
  String get explainNothingNote => '沒有敏感權限或已知追蹤器';

  @override
  String get explainScore => '評分';

  @override
  String get explainRules => '規則';

  @override
  String get rule1 => '每個群組只計算最嚴重的權限。例如，精確位置與大約位置只算一次。';

  @override
  String get rule2 => '特殊權限（所有檔案、顯示在其他應用程式上層、安裝應用程式）若應用程式僅要求而未獲允許，則以一半計算。';

  @override
  String rule3(int points, int max) {
    return '每個已知追蹤器扣 $points 分，最多扣 $max 分。';
  }

  @override
  String rule4(int a, int b, int c) {
    return '已開啟的特殊存取會扣分：無障礙 $a，裝置管理員 $b，通知存取 $c。';
  }

  @override
  String rule5(int a, int b) {
    return '偵錯版本扣 $a 分。為 Android 7 或更早版本建置的應用程式扣 $b 分。';
  }

  @override
  String rule6(int points, int maxGroups) {
    return '若某項權限對此類應用程式而言不尋常（例如手電筒應用程式使用麥克風），則額外扣 $points 分，最多適用於 $maxGroups 個權限群組。';
  }

  @override
  String get rule7 => '70 分以上：安全。40 至 69 分：中等。低於 40 分：高風險。';

  @override
  String get explainFooter => '評分反映應用程式能夠做什麼，而不是它此刻在做什麼。';

  @override
  String get howScore => '這個評分是怎麼算的？';

  @override
  String summaryTrackers(int count) {
    return '已知追蹤器：$count。';
  }

  @override
  String get summaryNone => '沒有敏感權限或已知追蹤器。';

  @override
  String metaTrackers(int count) {
    return '追蹤器：$count';
  }

  @override
  String get metaNone => '無敏感權限';

  @override
  String get detailSecurity => '安全';

  @override
  String get detailSource => '來源';

  @override
  String get detailInternet => '網際網路';

  @override
  String get detailInternetYes => '可以連上網際網路';

  @override
  String get detailOffline => '離線';

  @override
  String get detailOfflineBody => '沒有網路權限，因此無法在線上傳送資料';

  @override
  String get detailLastOpened => '上次開啟';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String daysSince(int days) {
    return '距上次使用的天數：$days';
  }

  @override
  String get detailDebuggableBody => '可從電腦檢查的測試版本';

  @override
  String detailOldBody(int apiLevel) {
    return 'API 級別 $apiLevel，因此會繞過新的隱私保護機制';
  }

  @override
  String get detailTrustBody => '不計入「高風險」與提醒';

  @override
  String get detailNoPerms => '此應用程式未要求敏感權限。';

  @override
  String get chipAllowed => '已允許';

  @override
  String get chipRequested => '已要求';

  @override
  String get chipNotAllowed => '未允許';

  @override
  String sensitiveNote(String why) {
    return '敏感：$why';
  }

  @override
  String detailTrackers(int count) {
    return '發現的追蹤器：$count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless 顯示的是應用程式能夠做什麼，而不是它此刻在做什麼。追蹤器是透過應用程式資訊清單偵測的，因此可能有遺漏。';

  @override
  String get srcBuiltIn => '手機內建';

  @override
  String get srcUnknown => '未知（透過檔案或電腦安裝）';

  @override
  String get srcApk => '您開啟的 APK 檔案';

  @override
  String get srcAdb => '電腦（adb）';

  @override
  String srcInstalledBy(String name) {
    return '安裝者：$name';
  }

  @override
  String get accessibilityLabel => '無障礙存取';

  @override
  String get adminLabel => '裝置管理員';

  @override
  String get notificationLabel => '通知存取';

  @override
  String get accessibilityWhy => '已開啟。可以讀取螢幕上的內容並代您操作。';

  @override
  String get adminWhy => '已開啟。可以鎖定手機、清除資料並阻止解除安裝。';

  @override
  String get notificationWhy => '已開啟。可以讀取您的所有通知，包括驗證碼。';

  @override
  String get grpMicrophone => '麥克風';

  @override
  String get grpCamera => '相機';

  @override
  String get grpLocation => '位置';

  @override
  String get grpContacts => '聯絡人';

  @override
  String get grpSms => '簡訊';

  @override
  String get grpCallLog => '通話記錄';

  @override
  String get grpPhone => '電話';

  @override
  String get grpCalendar => '日曆';

  @override
  String get grpBodySensors => '身體感測器';

  @override
  String get grpActivity => '活動';

  @override
  String get grpFiles => '檔案';

  @override
  String get grpOverlay => '懸浮顯示';

  @override
  String get grpInstalls => '安裝';

  @override
  String get grpAppList => '應用程式清單';

  @override
  String get lblCoarseLocation => '大約位置';

  @override
  String get lblFineLocation => '精確位置';

  @override
  String get lblBackgroundLocation => '持續取得位置';

  @override
  String get lblAccounts => '帳號';

  @override
  String get lblReadSms => '讀取簡訊';

  @override
  String get lblReceiveSms => '接收簡訊';

  @override
  String get lblSendSms => '傳送簡訊';

  @override
  String get lblPhoneState => '手機狀態';

  @override
  String get lblCallPhone => '撥打電話';

  @override
  String get lblActivity => '身體活動';

  @override
  String get lblAllFiles => '所有檔案';

  @override
  String get lblFilesMedia => '檔案與媒體';

  @override
  String get lblPhotos => '相片';

  @override
  String get lblVideos => '影片';

  @override
  String get lblAudioFiles => '音訊檔案';

  @override
  String get lblOverlay => '顯示在其他應用程式上層';

  @override
  String get lblInstall => '安裝其他應用程式';

  @override
  String get lblAppList => '查看所有應用程式';

  @override
  String get whyMic => '可以錄音。';

  @override
  String get whyCamera => '可以使用相機。';

  @override
  String get whyCoarse => '可以看到您的大約位置。';

  @override
  String get whyFine => '可以看到您的精確位置。';

  @override
  String get whyBackground => '可以持續追蹤您的位置。';

  @override
  String get whyContacts => '可以讀取您的聯絡人。';

  @override
  String get whyAccounts => '可以查看手機上的帳號。';

  @override
  String get whyReadSms => '可以讀取您的簡訊。';

  @override
  String get whyReceiveSms => '可以接收您的簡訊。';

  @override
  String get whySendSms => '可以傳送簡訊。';

  @override
  String get whyCallLog => '可以讀取您的通話記錄。';

  @override
  String get whyPhoneState => '可以查看您的手機狀態。';

  @override
  String get whyCallPhone => '可以撥打電話。';

  @override
  String get whyCalendar => '可以讀取您的日曆。';

  @override
  String get whyBody => '可以讀取身體感測器。';

  @override
  String get whyActivity => '可以查看您的身體活動。';

  @override
  String get whyAllFiles => '可以存取手機上的所有檔案。';

  @override
  String get whyFilesMedia => '可以讀取檔案與媒體。';

  @override
  String get whyPhotos => '可以讀取您的相片。';

  @override
  String get whyVideos => '可以讀取您的影片。';

  @override
  String get whyAudio => '可以讀取您的音訊檔案。';

  @override
  String get whyOverlay => '可以顯示在其他應用程式上層。';

  @override
  String get whyInstall => '可以安裝其他應用程式。';

  @override
  String get whyAppList => '可以查看手機上的所有應用程式。';

  @override
  String get settingsAppearance => '外觀';

  @override
  String get settingsTheme => '主題';

  @override
  String get settingsThemeBody => '預設跟隨手機';

  @override
  String get themeSystem => '跟隨系統';

  @override
  String get themeLight => '淺色';

  @override
  String get themeDark => '深色';

  @override
  String get settingsScanning => '掃描';

  @override
  String get settingsAlerts => '應用程式提醒';

  @override
  String get settingsAlertsBody => '發現新應用程式與新權限時提醒您。大約每 6 小時檢查一次。';

  @override
  String get settingsWeekly => '每週摘要';

  @override
  String get settingsWeeklyBody => '每週一則通知，包含您的評分與變化';

  @override
  String get settingsUsage => '使用情況存取權';

  @override
  String get settingsUsageOn => '已開啟。Peekless 可以查看應用程式上次開啟的時間。';

  @override
  String get settingsUsageOff => '已關閉。選用。讓 Peekless 找出您不再使用的應用程式。資料留在您的手機上。';

  @override
  String get settingsSystemApps => '包含系統應用程式';

  @override
  String get settingsSystemAppsBody => '同時掃描手機內建的應用程式';

  @override
  String get settingsRescan => '立即掃描';

  @override
  String get settingsRescanBody => '重新檢查所有應用程式';

  @override
  String get settingsUpdates => '更新';

  @override
  String get settingsCheckUpdates => '檢查更新';

  @override
  String settingsVersion(String version) {
    return '版本 $version · 僅在您點按時檢查';
  }

  @override
  String get settingsAbout => '關於';

  @override
  String get settingsPrivacy => '隱私';

  @override
  String get settingsPrivacyBody => '一切都保留在您的手機上';

  @override
  String get settingsOpenSource => '開放原始碼';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 授權。在 GitHub 上查看程式碼';

  @override
  String get settingsDeveloped => '由 Lumio Apps 開發';

  @override
  String get settingsLanguage => '語言';

  @override
  String get languageSystem => '跟隨手機語言';

  @override
  String get updChecking => '正在檢查更新…';

  @override
  String get updLatest => '您使用的已是最新版本。';

  @override
  String get updFailed => '無法檢查更新。請稍後再試。';

  @override
  String get updTitle => '有可用更新';

  @override
  String updReady(String version) {
    return '版本 $version 已可安裝。';
  }

  @override
  String get updDownloadFailed => '下載失敗。請檢查網路連線後重試。';

  @override
  String get updInstall => '下載並安裝';

  @override
  String get notifyDenied => '請允許 Peekless 傳送通知以開啟此功能。';

  @override
  String get settingChangeFailed => '無法變更此設定。';

  @override
  String get usageOpenFailed => '無法開啟使用情況存取權設定。';

  @override
  String alertNewTitle(String name) {
    return '新應用程式：$name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return '評分 $score（$level）。$summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name 已變更';
  }

  @override
  String alertNowHas(String list) {
    return '現在擁有：$list。';
  }

  @override
  String alertNowAllowed(String list) {
    return '現已允許：$list。';
  }

  @override
  String alertNewTracker(String list) {
    return '新追蹤器：$list。';
  }

  @override
  String alertScore(int score, String level) {
    return '評分 $score（$level）。';
  }

  @override
  String get alertMoreTitle => '更多變更';

  @override
  String alertMoreBody(int count) {
    return '另有 $count 項變更。開啟 Peekless 查看。';
  }

  @override
  String get weeklyTitle => '您的 Peekless 每週摘要';

  @override
  String weeklyUp(int score, int diff) {
    return '評分 $score/100，比上週高 $diff 分。';
  }

  @override
  String weeklyDown(int score, int diff) {
    return '評分 $score/100，比上週低 $diff 分。';
  }

  @override
  String weeklySame(int score) {
    return '評分 $score/100，與上週相比沒有變化。';
  }

  @override
  String weeklyScore(int score) {
    return '評分 $score/100。';
  }

  @override
  String weeklyNewApps(int count) {
    return '新應用程式：$count';
  }

  @override
  String weeklyRemoved(int count) {
    return '已移除的應用程式：$count';
  }

  @override
  String weeklyAllowed(int count) {
    return '已開啟的權限：$count';
  }

  @override
  String weeklyTrackers(int count) {
    return '新追蹤器：$count';
  }

  @override
  String weeklyChanges(String list) {
    return '本週：$list。';
  }

  @override
  String get weeklyNone => '本週沒有變化。';

  @override
  String weeklyRisky(int count) {
    return '高風險應用程式：$count。';
  }

  @override
  String get reportTitle => 'Peekless 隱私報告';

  @override
  String reportScore(int score, String level) {
    return '評分：$score/100（$level）';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return '已檢查的應用程式：$total。高風險：$risky，中等：$medium，安全：$safe';
  }

  @override
  String get reportAttention => '需要留意：';

  @override
  String get reportFooter => '已用 Peekless 在我的手機上檢查。沒有向任何地方傳送任何內容。';

  @override
  String get trendTitle => '評分變化趨勢';

  @override
  String trendUp(int diff, int days) {
    return '上升 $diff 分（已追蹤天數：$days）';
  }

  @override
  String trendDown(int diff, int days) {
    return '下降 $diff 分（已追蹤天數：$days）';
  }

  @override
  String trendSame(int days) {
    return '沒有變化（已追蹤天數：$days）';
  }

  @override
  String get settingsQuick => '快速存取';

  @override
  String get quickWidget => '主畫面小工具';

  @override
  String get quickWidgetBody => '在主畫面顯示你的隱私評分';

  @override
  String get quickTile => '快速設定圖塊';

  @override
  String get quickTileBody => '在快速設定面板中查看你的評分';

  @override
  String get quickManual => '你的手機無法自動新增。請手動新增：長按主畫面（小工具）或編輯快速設定面板（圖塊）。';

  @override
  String get settingsExport => '匯出報告';

  @override
  String get settingsExportBody => '將報告儲存為 PDF 或 JSON 檔案並分享';

  @override
  String get exportFailed => '無法建立報告。';

  @override
  String get settingsTrackerList => '追蹤器清單';

  @override
  String settingsTrackerListBody(int count) {
    return '點按即可更新。已知 $count 個追蹤器。僅在你點按時更新。';
  }

  @override
  String get trackerListUpdating => '正在更新追蹤器清單…';

  @override
  String trackerListUpdated(int count) {
    return '追蹤器清單已更新。已知 $count 個追蹤器。';
  }

  @override
  String get trackerListCurrent => '追蹤器清單已是最新。';

  @override
  String get trackerListFailed => '無法更新追蹤器清單。請檢查網路連線。';

  @override
  String get homeTagline => '看看誰在窺探你。';

  @override
  String get homeOverviewBody => '可使用各項權限的應用程式所佔比例';

  @override
  String get settingsDeep => '深度掃描';

  @override
  String get settingsDeepBody =>
      '同時在每個應用程式的程式碼內部尋找隱藏的追蹤器。首次掃描較慢。手機內建的應用程式會被略過。所有內容都留在你的手機上。';

  @override
  String trackersFromCode(int count) {
    return '在應用程式程式碼內發現（以程式碼圖示標記）：$count';
  }

  @override
  String get settingsNet => '網路監視器';

  @override
  String get settingsNetBody => '查看哪些應用程式在查詢哪些網路位址，以及哪些是追蹤器';

  @override
  String get netTitle => '網路監視器';

  @override
  String get netIntro =>
      'Peekless 會顯示你的應用程式請求了哪些網域名稱。它使用只接收這些查詢的本機 VPN，所以網速不會改變。它看不到你傳送或閱讀的內容，只能看到名稱。任何內容都不會離開你的手機。';

  @override
  String get netLimits =>
      '對於使用自帶加密 DNS 的應用程式，或私人 DNS 固定為某個提供者時，可能會漏掉。需要 Android 10 或更新版本才能顯示是哪個應用程式發出的請求。';

  @override
  String get netSwitch => '監視查詢';

  @override
  String get netOn => '已開啟。請使用一些應用程式，然後回來查看結果。';

  @override
  String get netOff => '已關閉';

  @override
  String get netEmpty => '目前還沒有看到任何內容。請使用一些應用程式後再查看。';

  @override
  String netLookups(int count) {
    return '$count 次查詢';
  }

  @override
  String netTrackerCount(int count) {
    return '$count 個追蹤器網域';
  }

  @override
  String get netClear => '清除資料';

  @override
  String get netCleared => '網路資料已清除。';

  @override
  String get netConsentDenied => 'Android 未允許啟動監視器。';

  @override
  String get netFailed => '無法變更網路監視器。';

  @override
  String get netUnknownApp => '未知應用程式';

  @override
  String netTrackerTag(String name) {
    return '追蹤器：$name';
  }

  @override
  String get netBlockTitle => '封鎖追蹤器網域';

  @override
  String get netBlockBody =>
      '已知追蹤器的網域會得到空白回應，因此這些應用程式無法連到它們。部分應用程式可能會失去廣告、統計或其他功能。預設為關閉。';

  @override
  String netBlockedCount(int count) {
    return '已封鎖 $count 次';
  }

  @override
  String get netExport => '匯出為 CSV';

  @override
  String get trackerKindAds => '廣告';

  @override
  String get trackerKindAdsBody =>
      '在應用程式中顯示廣告，並統計你看到和點擊了哪些廣告。通常會用你的廣告 ID 和裝置資訊來挑選廣告。';

  @override
  String get trackerKindAnalytics => '使用分析';

  @override
  String get trackerKindAnalyticsBody =>
      '記錄你如何使用應用程式：開啟了哪些畫面、點了哪些按鈕、停留多久。應用程式開發者用它來了解使用者。';

  @override
  String get trackerKindAttribution => '安裝歸因';

  @override
  String get trackerKindAttributionBody =>
      '查明是哪則廣告或連結讓你安裝了應用程式，並追蹤你之後的行為，讓廣告主了解廣告成效。';

  @override
  String get trackerKindCrash => '當機報告';

  @override
  String get trackerKindCrashBody =>
      '應用程式當機時傳送報告，內含手機和錯誤的資訊。幫助開發者修正問題，通常是侵入性最小的一類。';

  @override
  String get trackerKindPush => '推播訊息';

  @override
  String get trackerKindPushBody => '向你的手機傳送通知，並可能記錄你是否開啟。通知需要它，但也用於行銷訊息。';

  @override
  String get trackerKindOther => '追蹤器';

  @override
  String get trackerKindOtherBody =>
      '已知的追蹤元件。Peekless 沒有它的詳細說明，但它可能蒐集你或你裝置的資料並傳送到網路上。';

  @override
  String get trackerTapHint => '點一下追蹤器可查看它的作用。';

  @override
  String get certTitle => '簽署憑證';

  @override
  String get certNormal => '未使用除錯金鑰簽署。點一下可複製指紋。';

  @override
  String get certDebug => '使用除錯金鑰簽署。正式版本使用私密金鑰，所以請謹慎對待此應用程式。點一下可複製指紋。';

  @override
  String get certUnknown => 'Android 沒有提供此應用程式的憑證。';

  @override
  String get certCopied => '已複製 SHA-256';
}
