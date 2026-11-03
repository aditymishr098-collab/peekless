// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get navHome => '홈';

  @override
  String get navApps => '앱';

  @override
  String get navPermissions => '권한';

  @override
  String get navChanges => '변경 사항';

  @override
  String get navSettings => '설정';

  @override
  String get levelRisky => '위험';

  @override
  String get levelMedium => '보통';

  @override
  String get levelSafe => '안전';

  @override
  String get overallHigh => '위험도 높음';

  @override
  String get overallMedium => '위험도 보통';

  @override
  String get overallLow => '위험도 낮음';

  @override
  String get cancel => '취소';

  @override
  String get clear => '지우기';

  @override
  String get back => '뒤로';

  @override
  String get later => '나중에';

  @override
  String get noneFound => '찾은 항목이 없습니다';

  @override
  String get scanning => '검사 중…';

  @override
  String get scanFailed => '검사에 실패했습니다';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get couldNotOpenSettings => '앱 설정을 열 수 없습니다.';

  @override
  String get homeShare => '보고서 공유';

  @override
  String get homeRescan => '앱 다시 검사';

  @override
  String homeAppsChecked(int count) {
    return '이 휴대전화에서 확인한 앱: $count개';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return '집계된 앱: $counted개, 신뢰함: $trusted개';
  }

  @override
  String get homeNeedsAttention => '주의 필요';

  @override
  String get homeSeeAll => '모두 보기';

  @override
  String get homeAllSafe => '주의가 필요한 항목이 없습니다. 모든 앱이 안전해 보입니다.';

  @override
  String get homeShareFailed => '보고서를 공유할 수 없습니다.';

  @override
  String get scoreOf100 => '100점 만점';

  @override
  String scoreSemantics(int score) {
    return '개인정보 점수: 100점 중 $score점';
  }

  @override
  String wizardCard(int count) {
    return '민감한 접근 권한이 있는 앱 검토: $count개';
  }

  @override
  String appsSubtitleAll(int count) {
    return '앱: $count개, 위험한 앱 순';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$total개 중 $shown개 표시';
  }

  @override
  String get appsSearch => '앱 검색';

  @override
  String get appsNone => '앱을 찾을 수 없습니다';

  @override
  String get chipMine => '내 앱';

  @override
  String get chipSystem => '시스템';

  @override
  String get filterAll => '전체';

  @override
  String get filterTrackers => '추적기 포함';

  @override
  String get filterSpecial => '특별 접근';

  @override
  String get filterNotStore => '스토어 외 설치';

  @override
  String get filterOffline => '오프라인';

  @override
  String get filterTrusted => '신뢰함';

  @override
  String get permSubtitle => '이 휴대전화에서 누가 무엇을 사용할 수 있는지';

  @override
  String get trackersSubtitle => '어떤 추적기가 어떤 앱에 있는지';

  @override
  String get segTrackers => '추적기';

  @override
  String get noTrackers => '알려진 추적기를 찾지 못했습니다.';

  @override
  String get noPerms => '민감한 권한을 찾지 못했습니다.';

  @override
  String appsCount(int count) {
    return '앱: $count개';
  }

  @override
  String get changesSubtitle => '새 앱 및 권한 변경 사항';

  @override
  String get clearTitle => '변경 사항을 지울까요?';

  @override
  String get clearBody => '변경 사항 목록이 이 휴대전화에서 삭제됩니다.';

  @override
  String get changesEmpty =>
      '아직 변경 사항이 없습니다. Peekless가 새로 설치되거나 삭제된 앱, 새 권한, 새 추적기를 여기에 표시합니다.';

  @override
  String evInstalled(int score, String level) {
    return '설치됨. 점수: $score ($level).';
  }

  @override
  String get evRemoved => '삭제됨.';

  @override
  String evAllowed(String label) {
    return '이제 허용됨: $label.';
  }

  @override
  String evRevoked(String label) {
    return '더 이상 허용되지 않음: $label.';
  }

  @override
  String evTracker(String name) {
    return '새 추적기 발견: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: 켜짐.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: 꺼짐.';
  }

  @override
  String get checksTitle => '보안 점검';

  @override
  String get checksIntro => '다시 살펴볼 만한 항목입니다. 점검 항목을 탭하면 해당 앱이 표시됩니다.';

  @override
  String get checkUnusedTitle => '민감한 접근 권한이 있는 미사용 앱';

  @override
  String get checkDebuggableTitle => '디버그 빌드';

  @override
  String get checkOfflineTitle => '오프라인 앱';

  @override
  String get checkAccessibilityDesc => '이 앱들은 화면을 읽고 대신 탭할 수 있습니다.';

  @override
  String get checkAdminDesc => '이 앱들은 휴대전화를 잠그거나 초기화하고 삭제를 막을 수 있습니다.';

  @override
  String get checkNotificationDesc => '이 앱들은 인증 코드를 포함한 모든 알림을 읽을 수 있습니다.';

  @override
  String checkUnusedDesc(int days) {
    return '$days일 동안 열지 않았지만 민감한 권한은 계속 사용할 수 있습니다. 삭제를 고려해 보세요.';
  }

  @override
  String get checkNotStoreDesc => '파일이나 컴퓨터에서 설치되었습니다. 아무도 대신 검증하지 않았습니다.';

  @override
  String get checkDebuggableDesc => '컴퓨터에서 검사할 수 있는 테스트용 빌드입니다.';

  @override
  String get checkOldDesc => '이 앱들은 Android의 새로운 개인정보 보호 기능을 우회합니다.';

  @override
  String get checkOfflineDesc => '인터넷 권한이 없어 데이터를 온라인으로 보낼 수 없습니다.';

  @override
  String get usagePromptBody =>
      '선택 사항입니다. 사용 기록 접근을 켜면 오랫동안 열지 않았지만 마이크, 위치, 연락처를 사용할 수 있는 앱을 찾을 수 있습니다. 데이터는 휴대전화 밖으로 나가지 않습니다.';

  @override
  String get usagePromptButton => '사용 기록 접근 켜기';

  @override
  String get securityNone => '이 휴대전화에서 보안 관련 항목을 찾지 못했습니다.';

  @override
  String securityOffline(int count) {
    return '완전히 오프라인으로 작동하는 앱: $count개';
  }

  @override
  String get fixWizardTitle => '수정 마법사';

  @override
  String wizardStep(int index, int total) {
    return '앱 $index/$total';
  }

  @override
  String get wizardQuestion => '이 앱에 정말 필요한 권한일까요?';

  @override
  String get wizardHint => '‘앱 설정 열기’를 탭한 다음 권한으로 이동해 앱에 필요하지 않은 항목을 끄세요.';

  @override
  String get openAppSettings => '앱 설정 열기';

  @override
  String get trustApp => '이 앱을 신뢰합니다';

  @override
  String get nextApp => '다음 앱';

  @override
  String get finish => '완료';

  @override
  String get wizardDone => '모두 확인했습니다';

  @override
  String get wizardNothing => '확인할 항목이 없습니다';

  @override
  String get wizardNothingBody => '현재 민감한 접근 권한이 있는 앱이 없습니다.';

  @override
  String get wizardRescanBody => '다시 검사하여 새 점수를 확인하세요.';

  @override
  String get rescanFinish => '다시 검사하고 완료';

  @override
  String get wizardRequested => '요청됨, 아직 허용되지 않음';

  @override
  String scoreTrackers(int count) {
    return '알려진 추적기: $count개';
  }

  @override
  String get scoreDebuggable => '디버그 빌드';

  @override
  String get scoreOldTarget => '매우 오래된 Android용으로 제작됨';

  @override
  String unusualFor(String groups) {
    return '이 유형의 앱으로는 이례적임: $groups';
  }

  @override
  String get noteRequested => '요청됨, 절반만 반영';

  @override
  String get noteAllowed => '허용됨';

  @override
  String noteTrackers(int points, int max) {
    return '개당 $points점, 최대 $max점';
  }

  @override
  String get noteTurnedOn => '켜짐';

  @override
  String get noteDebuggable => '컴퓨터에서 검사 가능';

  @override
  String noteApi(int apiLevel) {
    return 'API 수준 $apiLevel';
  }

  @override
  String get noteExtra => '추가 감점';

  @override
  String get explainTitle => '점수 계산 방식';

  @override
  String get explainIntro => '모든 앱은 100점에서 시작합니다. 앱이 할 수 있는 일에 따라 점수가 차감됩니다.';

  @override
  String get explainStart => '시작';

  @override
  String get explainNothing => '차감 없음';

  @override
  String get explainNothingNote => '민감한 권한이나 알려진 추적기가 없습니다';

  @override
  String get explainScore => '점수';

  @override
  String get explainRules => '규칙';

  @override
  String get rule1 =>
      '각 그룹에서는 가장 무거운 권한 하나만 반영합니다. 예를 들어 정확한 위치와 대략적인 위치는 한 번만 계산합니다.';

  @override
  String get rule2 => '특별 권한(모든 파일, 다른 앱 위에 표시, 앱 설치)은 앱이 요청만 한 경우 절반만 반영합니다.';

  @override
  String rule3(int points, int max) {
    return '알려진 추적기 하나당 $points점이 차감되며, 최대 $max점까지입니다.';
  }

  @override
  String rule4(int a, int b, int c) {
    return '켜져 있는 특별 접근은 점수를 차감합니다: 접근성 $a점, 기기 관리자 $b점, 알림 접근 $c점.';
  }

  @override
  String rule5(int a, int b) {
    return '디버그 빌드는 $a점이 차감됩니다. Android 7 이하용으로 제작된 앱은 $b점이 차감됩니다.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return '해당 유형의 앱으로는 이례적인 권한(예: 손전등 앱의 마이크)에는 $points점이 추가로 차감되며, 최대 $maxGroups개 권한 그룹까지 적용됩니다.';
  }

  @override
  String get rule7 => '70점 이상: 안전. 40~69점: 보통. 40점 미만: 위험.';

  @override
  String get explainFooter => '점수는 앱이 지금 무엇을 하는지가 아니라 무엇을 할 수 있는지를 보여 줍니다.';

  @override
  String get howScore => '이 점수는 어떻게 계산되나요?';

  @override
  String summaryTrackers(int count) {
    return '알려진 추적기: $count개.';
  }

  @override
  String get summaryNone => '민감한 권한이나 알려진 추적기가 없습니다.';

  @override
  String metaTrackers(int count) {
    return '추적기: $count개';
  }

  @override
  String get metaNone => '민감한 권한 없음';

  @override
  String get detailSecurity => '보안';

  @override
  String get detailSource => '출처';

  @override
  String get detailInternet => '인터넷';

  @override
  String get detailInternetYes => '인터넷에 연결할 수 있습니다';

  @override
  String get detailOffline => '오프라인';

  @override
  String get detailOfflineBody => '인터넷 권한이 없어 데이터를 온라인으로 보낼 수 없습니다';

  @override
  String get detailLastOpened => '마지막으로 연 시점';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String daysSince(int days) {
    return '마지막 사용 후 지난 일수: $days일';
  }

  @override
  String get detailDebuggableBody => '컴퓨터에서 검사할 수 있는 테스트용 빌드';

  @override
  String detailOldBody(int apiLevel) {
    return 'API 수준 $apiLevel이므로 새로운 개인정보 보호 기능이 우회됩니다';
  }

  @override
  String get detailTrustBody => '위험 집계와 알림에 포함하지 않음';

  @override
  String get detailNoPerms => '이 앱은 민감한 권한을 요청하지 않습니다.';

  @override
  String get chipAllowed => '허용됨';

  @override
  String get chipRequested => '요청됨';

  @override
  String get chipNotAllowed => '허용 안 됨';

  @override
  String sensitiveNote(String why) {
    return '민감: $why';
  }

  @override
  String detailTrackers(int count) {
    return '발견된 추적기: $count개';
  }

  @override
  String get detailDisclaimer =>
      'Peekless는 앱이 지금 무엇을 하는지가 아니라 무엇을 할 수 있는지를 보여 줍니다. 추적기는 앱의 매니페스트에서 찾기 때문에 일부는 놓칠 수 있습니다.';

  @override
  String get srcBuiltIn => '휴대전화에 내장됨';

  @override
  String get srcUnknown => '알 수 없음(파일이나 컴퓨터에서 설치됨)';

  @override
  String get srcApk => '직접 연 APK 파일';

  @override
  String get srcAdb => '컴퓨터(adb)';

  @override
  String srcInstalledBy(String name) {
    return '설치한 곳: $name';
  }

  @override
  String get accessibilityLabel => '접근성 접근';

  @override
  String get adminLabel => '기기 관리자';

  @override
  String get notificationLabel => '알림 접근';

  @override
  String get accessibilityWhy => '켜져 있습니다. 화면에 있는 내용을 읽고 대신 동작할 수 있습니다.';

  @override
  String get adminWhy => '켜져 있습니다. 휴대전화를 잠그거나 초기화하고 삭제를 막을 수 있습니다.';

  @override
  String get notificationWhy => '켜져 있습니다. 인증 코드를 포함한 모든 알림을 읽을 수 있습니다.';

  @override
  String get grpMicrophone => '마이크';

  @override
  String get grpCamera => '카메라';

  @override
  String get grpLocation => '위치';

  @override
  String get grpContacts => '연락처';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => '통화 기록';

  @override
  String get grpPhone => '전화';

  @override
  String get grpCalendar => '캘린더';

  @override
  String get grpBodySensors => '신체 센서';

  @override
  String get grpActivity => '활동';

  @override
  String get grpFiles => '파일';

  @override
  String get grpOverlay => '다른 앱 위에 표시';

  @override
  String get grpInstalls => '설치';

  @override
  String get grpAppList => '앱 목록';

  @override
  String get lblCoarseLocation => '대략적인 위치';

  @override
  String get lblFineLocation => '정확한 위치';

  @override
  String get lblBackgroundLocation => '항상 위치 사용';

  @override
  String get lblAccounts => '계정';

  @override
  String get lblReadSms => 'SMS 읽기';

  @override
  String get lblReceiveSms => 'SMS 수신';

  @override
  String get lblSendSms => 'SMS 보내기';

  @override
  String get lblPhoneState => '휴대전화 상태';

  @override
  String get lblCallPhone => '전화 걸기';

  @override
  String get lblActivity => '신체 활동';

  @override
  String get lblAllFiles => '모든 파일';

  @override
  String get lblFilesMedia => '파일 및 미디어';

  @override
  String get lblPhotos => '사진';

  @override
  String get lblVideos => '동영상';

  @override
  String get lblAudioFiles => '오디오 파일';

  @override
  String get lblOverlay => '다른 앱 위에 표시';

  @override
  String get lblInstall => '다른 앱 설치';

  @override
  String get lblAppList => '모든 앱 보기';

  @override
  String get whyMic => '소리를 녹음할 수 있습니다.';

  @override
  String get whyCamera => '카메라를 사용할 수 있습니다.';

  @override
  String get whyCoarse => '대략적인 위치를 볼 수 있습니다.';

  @override
  String get whyFine => '정확한 위치를 볼 수 있습니다.';

  @override
  String get whyBackground => '항상 위치를 추적할 수 있습니다.';

  @override
  String get whyContacts => '연락처를 읽을 수 있습니다.';

  @override
  String get whyAccounts => '휴대전화의 계정을 볼 수 있습니다.';

  @override
  String get whyReadSms => 'SMS를 읽을 수 있습니다.';

  @override
  String get whyReceiveSms => 'SMS를 받을 수 있습니다.';

  @override
  String get whySendSms => 'SMS를 보낼 수 있습니다.';

  @override
  String get whyCallLog => '통화 기록을 읽을 수 있습니다.';

  @override
  String get whyPhoneState => '휴대전화 상태를 볼 수 있습니다.';

  @override
  String get whyCallPhone => '전화를 걸 수 있습니다.';

  @override
  String get whyCalendar => '캘린더를 읽을 수 있습니다.';

  @override
  String get whyBody => '신체 센서를 읽을 수 있습니다.';

  @override
  String get whyActivity => '신체 활동을 볼 수 있습니다.';

  @override
  String get whyAllFiles => '휴대전화의 모든 파일에 접근할 수 있습니다.';

  @override
  String get whyFilesMedia => '파일과 미디어를 읽을 수 있습니다.';

  @override
  String get whyPhotos => '사진을 읽을 수 있습니다.';

  @override
  String get whyVideos => '동영상을 읽을 수 있습니다.';

  @override
  String get whyAudio => '오디오 파일을 읽을 수 있습니다.';

  @override
  String get whyOverlay => '다른 앱 위에 표시될 수 있습니다.';

  @override
  String get whyInstall => '다른 앱을 설치할 수 있습니다.';

  @override
  String get whyAppList => '휴대전화의 모든 앱을 볼 수 있습니다.';

  @override
  String get settingsAppearance => '화면 모양';

  @override
  String get settingsTheme => '테마';

  @override
  String get settingsThemeBody => '기본적으로 휴대전화 설정을 따릅니다';

  @override
  String get themeSystem => '시스템';

  @override
  String get themeLight => '라이트';

  @override
  String get themeDark => '다크';

  @override
  String get settingsScanning => '검사';

  @override
  String get settingsAlerts => '앱 알림';

  @override
  String get settingsAlertsBody => '새 앱과 새 권한을 알려 줍니다. 약 6시간마다 확인합니다.';

  @override
  String get settingsWeekly => '주간 요약';

  @override
  String get settingsWeeklyBody => '점수와 변경된 내용을 일주일에 한 번 알려 줍니다';

  @override
  String get settingsUsage => '사용 기록 접근';

  @override
  String get settingsUsageOn => '켜져 있습니다. Peekless가 앱을 마지막으로 연 시점을 확인할 수 있습니다.';

  @override
  String get settingsUsageOff =>
      '꺼져 있습니다. 선택 사항입니다. Peekless가 더 이상 쓰지 않는 앱을 찾을 수 있게 합니다. 데이터는 휴대전화에만 남습니다.';

  @override
  String get settingsSystemApps => '시스템 앱 포함';

  @override
  String get settingsSystemAppsBody => '휴대전화에 내장된 앱도 검사합니다';

  @override
  String get settingsRescan => '지금 검사';

  @override
  String get settingsRescanBody => '모든 앱을 다시 확인합니다';

  @override
  String get settingsUpdates => '업데이트';

  @override
  String get settingsCheckUpdates => '업데이트 확인';

  @override
  String settingsVersion(String version) {
    return '버전 $version · 탭할 때만 확인합니다';
  }

  @override
  String get settingsAbout => '정보';

  @override
  String get settingsPrivacy => '개인정보 보호';

  @override
  String get settingsPrivacyBody => '모든 것이 휴대전화에만 남습니다';

  @override
  String get settingsOpenSource => '오픈소스';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 라이선스. GitHub에서 코드를 확인하세요';

  @override
  String get settingsDeveloped => '개발: Lumio Apps';

  @override
  String get settingsLanguage => '언어';

  @override
  String get languageSystem => '휴대전화 언어 따르기';

  @override
  String get updChecking => '업데이트 확인 중…';

  @override
  String get updLatest => '최신 버전을 사용하고 있습니다.';

  @override
  String get updFailed => '업데이트를 확인할 수 없습니다. 나중에 다시 시도해 주세요.';

  @override
  String get updTitle => '업데이트 사용 가능';

  @override
  String updReady(String version) {
    return '버전 $version을(를) 설치할 수 있습니다.';
  }

  @override
  String get updDownloadFailed => '다운로드에 실패했습니다. 연결을 확인하고 다시 시도해 주세요.';

  @override
  String get updInstall => '다운로드 및 설치';

  @override
  String get notifyDenied => '이 기능을 켜려면 Peekless의 알림을 허용해 주세요.';

  @override
  String get settingChangeFailed => '이 설정을 변경할 수 없습니다.';

  @override
  String get usageOpenFailed => '사용 기록 접근 설정을 열 수 없습니다.';

  @override
  String alertNewTitle(String name) {
    return '새 앱: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return '점수 $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name 변경됨';
  }

  @override
  String alertNowHas(String list) {
    return '이제 보유: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return '이제 허용됨: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return '새 추적기: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return '점수 $score ($level).';
  }

  @override
  String get alertMoreTitle => '추가 변경 사항';

  @override
  String alertMoreBody(int count) {
    return '변경 사항이 $count개 더 있습니다. Peekless를 열어 확인하세요.';
  }

  @override
  String get weeklyTitle => '이번 주 Peekless 요약';

  @override
  String weeklyUp(int score, int diff) {
    return '점수 $score/100, 지난주보다 $diff점 상승.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return '점수 $score/100, 지난주보다 $diff점 하락.';
  }

  @override
  String weeklySame(int score) {
    return '점수 $score/100, 지난주와 같습니다.';
  }

  @override
  String weeklyScore(int score) {
    return '점수 $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return '새 앱: $count개';
  }

  @override
  String weeklyRemoved(int count) {
    return '삭제된 앱: $count개';
  }

  @override
  String weeklyAllowed(int count) {
    return '켜진 권한: $count개';
  }

  @override
  String weeklyTrackers(int count) {
    return '새 추적기: $count개';
  }

  @override
  String weeklyChanges(String list) {
    return '이번 주: $list.';
  }

  @override
  String get weeklyNone => '이번 주에는 변경 사항이 없습니다.';

  @override
  String weeklyRisky(int count) {
    return '위험한 앱: $count개.';
  }

  @override
  String get reportTitle => 'Peekless 개인정보 보고서';

  @override
  String reportScore(int score, String level) {
    return '점수: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return '확인한 앱: $total개. 위험: $risky개, 보통: $medium개, 안전: $safe개';
  }

  @override
  String get reportAttention => '주의 필요:';

  @override
  String get reportFooter => '내 휴대전화에서 Peekless로 확인했습니다. 어디에도 아무것도 전송하지 않았습니다.';

  @override
  String get trendTitle => '시간에 따른 점수';

  @override
  String trendUp(int diff, int days) {
    return '$diff점 상승 (추적 일수: $days일)';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff점 하락 (추적 일수: $days일)';
  }

  @override
  String trendSame(int days) {
    return '변화 없음 (추적 일수: $days일)';
  }

  @override
  String get settingsQuick => '빠른 접근';

  @override
  String get quickWidget => '홈 화면 위젯';

  @override
  String get quickWidgetBody => '개인정보 점수를 홈 화면에 표시합니다';

  @override
  String get quickTile => '빠른 설정 타일';

  @override
  String get quickTileBody => '빠른 설정 패널에서 점수를 확인하세요';

  @override
  String get quickManual =>
      '휴대폰에서 자동으로 추가하지 못했습니다. 직접 추가하세요: 홈 화면을 길게 누르거나(위젯) 빠른 설정 패널을 편집하세요(타일).';

  @override
  String get settingsExport => '보고서 내보내기';

  @override
  String get settingsExportBody => '보고서를 PDF 또는 JSON 파일로 저장하고 공유합니다';

  @override
  String get exportFailed => '보고서를 만들 수 없습니다.';

  @override
  String get settingsTrackerList => '추적기 목록';

  @override
  String settingsTrackerListBody(int count) {
    return '탭하여 업데이트합니다. 알려진 추적기 $count개. 탭할 때만 업데이트합니다.';
  }

  @override
  String get trackerListUpdating => '추적기 목록 업데이트 중…';

  @override
  String trackerListUpdated(int count) {
    return '추적기 목록을 업데이트했습니다. 알려진 추적기 $count개.';
  }

  @override
  String get trackerListCurrent => '추적기 목록이 이미 최신입니다.';

  @override
  String get trackerListFailed => '추적기 목록을 업데이트할 수 없습니다. 연결을 확인하세요.';

  @override
  String get homeTagline => '누가 나를 엿보는지 확인하세요.';

  @override
  String get homeOverviewBody => '각 항목을 사용할 수 있는 앱의 비율';

  @override
  String get settingsDeep => '심층 스캔';

  @override
  String get settingsDeepBody =>
      '각 앱의 코드 안에서도 숨은 추적기를 찾습니다. 첫 스캔은 더 오래 걸립니다. 휴대폰에 기본 설치된 앱은 건너뜁니다. 모든 것이 휴대폰 안에만 남습니다.';

  @override
  String trackersFromCode(int count) {
    return '앱 코드 안에서 발견됨(코드 아이콘으로 표시): $count';
  }

  @override
  String get settingsNet => '네트워크 모니터';

  @override
  String get settingsNetBody => '어떤 앱이 어떤 인터넷 주소를 조회하는지, 어떤 것이 추적기인지 확인하세요';

  @override
  String get netTitle => '네트워크 모니터';

  @override
  String get netIntro =>
      'Peekless는 앱이 요청하는 도메인 이름을 보여 줍니다. 이 조회만 받는 로컬 VPN을 사용하므로 인터넷 속도는 변하지 않습니다. 보내거나 읽는 내용은 볼 수 없고 이름만 봅니다. 아무것도 휴대폰 밖으로 나가지 않습니다.';

  @override
  String get netLimits =>
      '자체 암호화 DNS를 쓰는 앱이나 프라이빗 DNS가 특정 제공업체로 고정된 경우에는 놓칠 수 있습니다. 어떤 앱이 요청했는지 보려면 Android 10 이상이 필요합니다.';

  @override
  String get netSwitch => '조회 모니터링';

  @override
  String get netOn => '켜짐. 앱을 몇 개 사용한 뒤 결과를 보러 오세요.';

  @override
  String get netOff => '꺼짐';

  @override
  String get netEmpty => '아직 아무것도 보이지 않습니다. 앱을 사용한 뒤 다시 확인하세요.';

  @override
  String netLookups(int count) {
    return '조회 $count건';
  }

  @override
  String netTrackerCount(int count) {
    return '추적기 도메인 $count개';
  }

  @override
  String get netClear => '데이터 지우기';

  @override
  String get netCleared => '네트워크 데이터를 지웠습니다.';

  @override
  String get netConsentDenied => 'Android가 모니터 시작을 허용하지 않았습니다.';

  @override
  String get netFailed => '네트워크 모니터를 변경할 수 없습니다.';

  @override
  String get netUnknownApp => '알 수 없는 앱';

  @override
  String netTrackerTag(String name) {
    return '추적기: $name';
  }
}
