// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navApps => 'Ứng dụng';

  @override
  String get navPermissions => 'Quyền';

  @override
  String get navChanges => 'Thay đổi';

  @override
  String get navSettings => 'Cài đặt';

  @override
  String get levelRisky => 'Rủi ro';

  @override
  String get levelMedium => 'Trung bình';

  @override
  String get levelSafe => 'An toàn';

  @override
  String get overallHigh => 'Rủi ro cao';

  @override
  String get overallMedium => 'Rủi ro trung bình';

  @override
  String get overallLow => 'Rủi ro thấp';

  @override
  String get cancel => 'Hủy';

  @override
  String get clear => 'Xóa';

  @override
  String get back => 'Quay lại';

  @override
  String get later => 'Để sau';

  @override
  String get noneFound => 'Không tìm thấy gì';

  @override
  String get scanning => 'Đang quét...';

  @override
  String get scanFailed => 'Quét thất bại';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get couldNotOpenSettings => 'Không thể mở cài đặt ứng dụng.';

  @override
  String get homeShare => 'Chia sẻ báo cáo';

  @override
  String get homeRescan => 'Quét lại ứng dụng';

  @override
  String homeAppsChecked(int count) {
    return 'Ứng dụng đã kiểm tra trên điện thoại này: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Ứng dụng được tính: $counted, tin cậy: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Cần chú ý';

  @override
  String get homeSeeAll => 'Xem tất cả';

  @override
  String get homeAllSafe =>
      'Không có gì cần chú ý. Mọi ứng dụng đều có vẻ an toàn.';

  @override
  String get homeShareFailed => 'Không thể chia sẻ báo cáo.';

  @override
  String get scoreOf100 => 'trên 100';

  @override
  String scoreSemantics(int score) {
    return 'Điểm quyền riêng tư: $score trên 100';
  }

  @override
  String wizardCard(int count) {
    return 'Xem lại ứng dụng có quyền truy cập nhạy cảm: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Ứng dụng: $count, rủi ro nhất xếp trước';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Hiển thị $shown trên $total';
  }

  @override
  String get appsSearch => 'Tìm ứng dụng';

  @override
  String get appsNone => 'Không tìm thấy ứng dụng';

  @override
  String get chipMine => 'Ứng dụng của tôi';

  @override
  String get chipSystem => 'Hệ thống';

  @override
  String get filterAll => 'Tất cả';

  @override
  String get filterTrackers => 'Có trình theo dõi';

  @override
  String get filterSpecial => 'Quyền truy cập đặc biệt';

  @override
  String get filterNotStore => 'Ngoài cửa hàng';

  @override
  String get filterOffline => 'Ngoại tuyến';

  @override
  String get filterTrusted => 'Tin cậy';

  @override
  String get permSubtitle => 'Ai có thể dùng gì trên điện thoại này';

  @override
  String get trackersSubtitle => 'Trình theo dõi nào nằm trong ứng dụng nào';

  @override
  String get segTrackers => 'Trình theo dõi';

  @override
  String get noTrackers => 'Không tìm thấy trình theo dõi đã biết.';

  @override
  String get noPerms => 'Không tìm thấy quyền nhạy cảm nào.';

  @override
  String appsCount(int count) {
    return 'Ứng dụng: $count';
  }

  @override
  String get changesSubtitle => 'Ứng dụng mới và thay đổi quyền';

  @override
  String get clearTitle => 'Xóa các thay đổi?';

  @override
  String get clearBody => 'Danh sách thay đổi sẽ bị xóa khỏi điện thoại này.';

  @override
  String get changesEmpty =>
      'Chưa có thay đổi nào. Peekless sẽ hiển thị tại đây các ứng dụng mới và đã gỡ, quyền mới và trình theo dõi mới.';

  @override
  String evInstalled(int score, String level) {
    return 'Đã cài đặt. Điểm: $score ($level).';
  }

  @override
  String get evRemoved => 'Đã gỡ.';

  @override
  String evAllowed(String label) {
    return 'Nay được cho phép: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Không còn được cho phép: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Phát hiện trình theo dõi mới: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: đã bật.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: đã tắt.';
  }

  @override
  String get checksTitle => 'Kiểm tra bảo mật';

  @override
  String get checksIntro =>
      'Những điều đáng xem lại. Chạm vào một mục kiểm tra để xem các ứng dụng.';

  @override
  String get checkUnusedTitle =>
      'Ứng dụng không dùng có quyền truy cập nhạy cảm';

  @override
  String get checkDebuggableTitle => 'Bản gỡ lỗi';

  @override
  String get checkOfflineTitle => 'Ứng dụng ngoại tuyến';

  @override
  String get checkAccessibilityDesc =>
      'Các ứng dụng này có thể đọc màn hình của bạn và chạm thay bạn.';

  @override
  String get checkAdminDesc =>
      'Các ứng dụng này có thể khóa hoặc xóa sạch điện thoại và ngăn bạn gỡ cài đặt.';

  @override
  String get checkNotificationDesc =>
      'Các ứng dụng này có thể đọc mọi thông báo của bạn, kể cả mã xác thực.';

  @override
  String checkUnusedDesc(int days) {
    return 'Đã $days ngày chưa mở, nhưng vẫn có thể dùng các quyền nhạy cảm. Hãy cân nhắc gỡ bỏ.';
  }

  @override
  String get checkNotStoreDesc =>
      'Được cài từ tệp hoặc máy tính. Không ai kiểm tra giúp bạn.';

  @override
  String get checkDebuggableDesc =>
      'Bản thử nghiệm có thể được kiểm tra từ máy tính.';

  @override
  String get checkOldDesc =>
      'Các ứng dụng này vượt qua các biện pháp bảo vệ quyền riêng tư mới của Android.';

  @override
  String get checkOfflineDesc =>
      'Không có quyền internet nên không thể gửi dữ liệu lên mạng.';

  @override
  String get usagePromptBody =>
      'Tùy chọn. Bật quyền truy cập mức sử dụng để tìm các ứng dụng bạn đã lâu không mở nhưng vẫn có thể dùng micrô, vị trí hoặc danh bạ. Dữ liệu không rời khỏi điện thoại của bạn.';

  @override
  String get usagePromptButton => 'Bật quyền truy cập mức sử dụng';

  @override
  String get securityNone =>
      'Không tìm thấy mục bảo mật nào trên điện thoại này.';

  @override
  String securityOffline(int count) {
    return 'Ứng dụng hoạt động hoàn toàn ngoại tuyến: $count';
  }

  @override
  String get fixWizardTitle => 'Trình hướng dẫn khắc phục';

  @override
  String wizardStep(int index, int total) {
    return 'Ứng dụng $index/$total';
  }

  @override
  String get wizardQuestion => 'Ứng dụng này có thật sự cần quyền này không?';

  @override
  String get wizardHint =>
      'Chạm “Mở cài đặt ứng dụng”, rồi chọn Quyền và tắt những gì ứng dụng không cần.';

  @override
  String get openAppSettings => 'Mở cài đặt ứng dụng';

  @override
  String get trustApp => 'Tôi tin cậy ứng dụng này';

  @override
  String get nextApp => 'Ứng dụng tiếp theo';

  @override
  String get finish => 'Hoàn tất';

  @override
  String get wizardDone => 'Đã xem hết';

  @override
  String get wizardNothing => 'Không có gì để xem';

  @override
  String get wizardNothingBody =>
      'Hiện không có ứng dụng nào có quyền truy cập nhạy cảm.';

  @override
  String get wizardRescanBody => 'Quét lại để xem điểm mới của bạn.';

  @override
  String get rescanFinish => 'Quét lại và hoàn tất';

  @override
  String get wizardRequested => 'đã yêu cầu, chưa được cho phép';

  @override
  String scoreTrackers(int count) {
    return 'Trình theo dõi đã biết: $count';
  }

  @override
  String get scoreDebuggable => 'Bản gỡ lỗi';

  @override
  String get scoreOldTarget => 'Được tạo cho Android rất cũ';

  @override
  String unusualFor(String groups) {
    return 'Bất thường với loại ứng dụng này: $groups';
  }

  @override
  String get noteRequested => 'đã yêu cầu, tính một nửa';

  @override
  String get noteAllowed => 'đã cho phép';

  @override
  String noteTrackers(int points, int max) {
    return 'mỗi cái $points, tối đa $max';
  }

  @override
  String get noteTurnedOn => 'đang bật';

  @override
  String get noteDebuggable => 'có thể kiểm tra từ máy tính';

  @override
  String noteApi(int apiLevel) {
    return 'cấp API $apiLevel';
  }

  @override
  String get noteExtra => 'trừ thêm';

  @override
  String get explainTitle => 'Cách tính điểm';

  @override
  String get explainIntro =>
      'Mỗi ứng dụng bắt đầu từ 100. Điểm bị trừ dựa trên những gì ứng dụng có thể làm.';

  @override
  String get explainStart => 'Bắt đầu';

  @override
  String get explainNothing => 'Không bị trừ gì';

  @override
  String get explainNothingNote =>
      'Không có quyền nhạy cảm hay trình theo dõi đã biết';

  @override
  String get explainScore => 'Điểm';

  @override
  String get explainRules => 'Quy tắc';

  @override
  String get rule1 =>
      'Trong mỗi nhóm chỉ tính quyền nặng nhất. Ví dụ, vị trí chính xác và vị trí gần đúng chỉ tính một lần.';

  @override
  String get rule2 =>
      'Quyền đặc biệt (mọi tệp, hiển thị trên ứng dụng khác, cài đặt ứng dụng) chỉ tính một nửa nếu ứng dụng mới chỉ yêu cầu.';

  @override
  String rule3(int points, int max) {
    return 'Mỗi trình theo dõi đã biết trừ $points điểm, tối đa $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Quyền truy cập đặc biệt đang bật sẽ bị trừ điểm: trợ năng $a, quản trị viên thiết bị $b, truy cập thông báo $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Bản gỡ lỗi bị trừ $a. Ứng dụng tạo cho Android 7 trở xuống bị trừ $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Nếu một quyền bất thường với loại ứng dụng đó (ví dụ micrô trong đèn pin), sẽ trừ thêm $points điểm, cho tối đa $maxGroups nhóm quyền.';
  }

  @override
  String get rule7 =>
      '70 trở lên: An toàn. Từ 40 đến 69: Trung bình. Dưới 40: Rủi ro.';

  @override
  String get explainFooter =>
      'Điểm cho biết ứng dụng có thể làm gì, không phải nó đang làm gì.';

  @override
  String get howScore => 'Điểm này được tính như thế nào?';

  @override
  String summaryTrackers(int count) {
    return 'Trình theo dõi đã biết: $count.';
  }

  @override
  String get summaryNone =>
      'Không có quyền nhạy cảm hay trình theo dõi đã biết.';

  @override
  String metaTrackers(int count) {
    return 'Trình theo dõi: $count';
  }

  @override
  String get metaNone => 'Không có quyền nhạy cảm';

  @override
  String get detailSecurity => 'Bảo mật';

  @override
  String get detailSource => 'Nguồn';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Có thể truy cập internet';

  @override
  String get detailOffline => 'Ngoại tuyến';

  @override
  String get detailOfflineBody =>
      'Không có quyền internet nên không thể gửi dữ liệu lên mạng';

  @override
  String get detailLastOpened => 'Mở lần cuối';

  @override
  String get today => 'Hôm nay';

  @override
  String get yesterday => 'Hôm qua';

  @override
  String daysSince(int days) {
    return 'Số ngày kể từ lần dùng cuối: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Bản thử nghiệm có thể được kiểm tra từ máy tính';

  @override
  String detailOldBody(int apiLevel) {
    return 'Cấp API $apiLevel nên vượt qua các biện pháp bảo vệ quyền riêng tư mới';
  }

  @override
  String get detailTrustBody => 'Không tính vào mục Rủi ro và trong cảnh báo';

  @override
  String get detailNoPerms => 'Ứng dụng này không yêu cầu quyền nhạy cảm.';

  @override
  String get chipAllowed => 'Đã cho phép';

  @override
  String get chipRequested => 'Đã yêu cầu';

  @override
  String get chipNotAllowed => 'Không cho phép';

  @override
  String sensitiveNote(String why) {
    return 'Nhạy cảm: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Trình theo dõi tìm thấy: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless cho biết ứng dụng có thể làm gì, không phải nó đang làm gì. Trình theo dõi được phát hiện từ tệp kê khai của ứng dụng nên có thể bị sót.';

  @override
  String get srcBuiltIn => 'Có sẵn trong điện thoại của bạn';

  @override
  String get srcUnknown => 'Không rõ (cài từ tệp hoặc máy tính)';

  @override
  String get srcApk => 'Tệp APK bạn đã mở';

  @override
  String get srcAdb => 'Máy tính (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Cài bởi $name';
  }

  @override
  String get accessibilityLabel => 'Quyền truy cập trợ năng';

  @override
  String get adminLabel => 'Quản trị viên thiết bị';

  @override
  String get notificationLabel => 'Quyền truy cập thông báo';

  @override
  String get accessibilityWhy =>
      'Đang bật. Có thể đọc nội dung trên màn hình và thao tác thay bạn.';

  @override
  String get adminWhy =>
      'Đang bật. Có thể khóa điện thoại, xóa sạch và ngăn gỡ cài đặt.';

  @override
  String get notificationWhy =>
      'Đang bật. Có thể đọc mọi thông báo của bạn, kể cả mã xác thực.';

  @override
  String get grpMicrophone => 'Micrô';

  @override
  String get grpCamera => 'Máy ảnh';

  @override
  String get grpLocation => 'Vị trí';

  @override
  String get grpContacts => 'Danh bạ';

  @override
  String get grpSms => 'Tin nhắn SMS';

  @override
  String get grpCallLog => 'Nhật ký cuộc gọi';

  @override
  String get grpPhone => 'Điện thoại';

  @override
  String get grpCalendar => 'Lịch';

  @override
  String get grpBodySensors => 'Cảm biến cơ thể';

  @override
  String get grpActivity => 'Hoạt động';

  @override
  String get grpFiles => 'Tệp';

  @override
  String get grpOverlay => 'Hiển thị phía trên';

  @override
  String get grpInstalls => 'Cài đặt';

  @override
  String get grpAppList => 'Danh sách ứng dụng';

  @override
  String get lblCoarseLocation => 'Vị trí gần đúng';

  @override
  String get lblFineLocation => 'Vị trí chính xác';

  @override
  String get lblBackgroundLocation => 'Vị trí mọi lúc';

  @override
  String get lblAccounts => 'Tài khoản';

  @override
  String get lblReadSms => 'Đọc SMS';

  @override
  String get lblReceiveSms => 'Nhận SMS';

  @override
  String get lblSendSms => 'Gửi SMS';

  @override
  String get lblPhoneState => 'Trạng thái điện thoại';

  @override
  String get lblCallPhone => 'Thực hiện cuộc gọi';

  @override
  String get lblActivity => 'Hoạt động thể chất';

  @override
  String get lblAllFiles => 'Mọi tệp';

  @override
  String get lblFilesMedia => 'Tệp và phương tiện';

  @override
  String get lblPhotos => 'Ảnh';

  @override
  String get lblVideos => 'Video';

  @override
  String get lblAudioFiles => 'Tệp âm thanh';

  @override
  String get lblOverlay => 'Hiển thị trên ứng dụng khác';

  @override
  String get lblInstall => 'Cài đặt ứng dụng khác';

  @override
  String get lblAppList => 'Xem mọi ứng dụng';

  @override
  String get whyMic => 'Có thể ghi âm.';

  @override
  String get whyCamera => 'Có thể dùng máy ảnh.';

  @override
  String get whyCoarse => 'Có thể thấy vị trí gần đúng của bạn.';

  @override
  String get whyFine => 'Có thể thấy vị trí chính xác của bạn.';

  @override
  String get whyBackground => 'Có thể theo dõi vị trí của bạn mọi lúc.';

  @override
  String get whyContacts => 'Có thể đọc danh bạ của bạn.';

  @override
  String get whyAccounts => 'Có thể thấy các tài khoản trên điện thoại.';

  @override
  String get whyReadSms => 'Có thể đọc SMS của bạn.';

  @override
  String get whyReceiveSms => 'Có thể nhận SMS của bạn.';

  @override
  String get whySendSms => 'Có thể gửi SMS.';

  @override
  String get whyCallLog => 'Có thể đọc lịch sử cuộc gọi của bạn.';

  @override
  String get whyPhoneState => 'Có thể thấy trạng thái điện thoại của bạn.';

  @override
  String get whyCallPhone => 'Có thể thực hiện cuộc gọi.';

  @override
  String get whyCalendar => 'Có thể đọc lịch của bạn.';

  @override
  String get whyBody => 'Có thể đọc cảm biến cơ thể.';

  @override
  String get whyActivity => 'Có thể thấy hoạt động thể chất của bạn.';

  @override
  String get whyAllFiles => 'Có thể truy cập mọi tệp trên điện thoại.';

  @override
  String get whyFilesMedia => 'Có thể đọc tệp và phương tiện.';

  @override
  String get whyPhotos => 'Có thể đọc ảnh của bạn.';

  @override
  String get whyVideos => 'Có thể đọc video của bạn.';

  @override
  String get whyAudio => 'Có thể đọc tệp âm thanh của bạn.';

  @override
  String get whyOverlay => 'Có thể hiển thị phía trên các ứng dụng khác.';

  @override
  String get whyInstall => 'Có thể cài đặt các ứng dụng khác.';

  @override
  String get whyAppList => 'Có thể thấy mọi ứng dụng trên điện thoại.';

  @override
  String get settingsAppearance => 'Giao diện';

  @override
  String get settingsTheme => 'Chủ đề';

  @override
  String get settingsThemeBody => 'Mặc định theo điện thoại của bạn';

  @override
  String get themeSystem => 'Hệ thống';

  @override
  String get themeLight => 'Sáng';

  @override
  String get themeDark => 'Tối';

  @override
  String get settingsScanning => 'Quét';

  @override
  String get settingsAlerts => 'Cảnh báo ứng dụng';

  @override
  String get settingsAlertsBody =>
      'Báo khi có ứng dụng mới và quyền mới. Kiểm tra khoảng mỗi 6 giờ.';

  @override
  String get settingsWeekly => 'Tóm tắt hằng tuần';

  @override
  String get settingsWeeklyBody =>
      'Mỗi tuần một thông báo về điểm của bạn và những gì đã thay đổi';

  @override
  String get settingsUsage => 'Quyền truy cập mức sử dụng';

  @override
  String get settingsUsageOn =>
      'Đang bật. Peekless có thể thấy lần mở cuối của các ứng dụng.';

  @override
  String get settingsUsageOff =>
      'Đang tắt. Tùy chọn. Cho phép Peekless tìm các ứng dụng bạn không còn dùng. Dữ liệu ở lại trên điện thoại của bạn.';

  @override
  String get settingsSystemApps => 'Bao gồm ứng dụng hệ thống';

  @override
  String get settingsSystemAppsBody =>
      'Quét cả các ứng dụng có sẵn trong điện thoại';

  @override
  String get settingsRescan => 'Quét ngay';

  @override
  String get settingsRescanBody => 'Kiểm tra lại mọi ứng dụng';

  @override
  String get settingsUpdates => 'Cập nhật';

  @override
  String get settingsCheckUpdates => 'Kiểm tra cập nhật';

  @override
  String settingsVersion(String version) {
    return 'Phiên bản $version · chỉ khi bạn chạm';
  }

  @override
  String get settingsAbout => 'Giới thiệu';

  @override
  String get settingsPrivacy => 'Quyền riêng tư';

  @override
  String get settingsPrivacyBody => 'Mọi thứ ở lại trên điện thoại của bạn';

  @override
  String get settingsOpenSource => 'Mã nguồn mở';

  @override
  String get settingsOpenSourceBody => 'Giấy phép GPL-3.0. Xem mã trên GitHub';

  @override
  String get settingsDeveloped => 'Phát triển bởi Lumio Apps';

  @override
  String get settingsLanguage => 'Ngôn ngữ';

  @override
  String get languageSystem => 'Theo ngôn ngữ điện thoại';

  @override
  String get updChecking => 'Đang kiểm tra cập nhật...';

  @override
  String get updLatest => 'Bạn đang dùng phiên bản mới nhất.';

  @override
  String get updFailed => 'Không thể kiểm tra cập nhật. Hãy thử lại sau.';

  @override
  String get updTitle => 'Có bản cập nhật';

  @override
  String updReady(String version) {
    return 'Phiên bản $version đã sẵn sàng để cài đặt.';
  }

  @override
  String get updDownloadFailed =>
      'Tải xuống thất bại. Hãy kiểm tra kết nối và thử lại.';

  @override
  String get updInstall => 'Tải xuống và cài đặt';

  @override
  String get notifyDenied =>
      'Hãy cho phép Peekless gửi thông báo để bật tính năng này.';

  @override
  String get settingChangeFailed => 'Không thể thay đổi cài đặt này.';

  @override
  String get usageOpenFailed =>
      'Không thể mở cài đặt quyền truy cập mức sử dụng.';

  @override
  String alertNewTitle(String name) {
    return 'Ứng dụng mới: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Điểm $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name đã thay đổi';
  }

  @override
  String alertNowHas(String list) {
    return 'Nay có: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Nay được cho phép: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Trình theo dõi mới: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Điểm $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Thay đổi khác';

  @override
  String alertMoreBody(int count) {
    return 'Còn $count thay đổi nữa. Mở Peekless để xem.';
  }

  @override
  String get weeklyTitle => 'Tóm tắt Peekless hằng tuần của bạn';

  @override
  String weeklyUp(int score, int diff) {
    return 'Điểm $score/100, tăng $diff so với tuần trước.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Điểm $score/100, giảm $diff so với tuần trước.';
  }

  @override
  String weeklySame(int score) {
    return 'Điểm $score/100, không đổi so với tuần trước.';
  }

  @override
  String weeklyScore(int score) {
    return 'Điểm $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Ứng dụng mới: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Ứng dụng đã gỡ: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Quyền đã bật: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Trình theo dõi mới: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Tuần này: $list.';
  }

  @override
  String get weeklyNone => 'Tuần này không có thay đổi.';

  @override
  String weeklyRisky(int count) {
    return 'Ứng dụng rủi ro: $count.';
  }

  @override
  String get reportTitle => 'Báo cáo quyền riêng tư Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Điểm: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Ứng dụng đã kiểm tra: $total. Rủi ro: $risky, Trung bình: $medium, An toàn: $safe';
  }

  @override
  String get reportAttention => 'Cần chú ý:';

  @override
  String get reportFooter =>
      'Đã kiểm tra trên điện thoại của tôi bằng Peekless. Không có gì được gửi đi đâu cả.';

  @override
  String get trendTitle => 'Điểm theo thời gian';

  @override
  String trendUp(int diff, int days) {
    return 'Tăng $diff (số ngày theo dõi: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Giảm $diff (số ngày theo dõi: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Không thay đổi (số ngày theo dõi: $days)';
  }

  @override
  String get settingsQuick => 'Truy cập nhanh';

  @override
  String get quickWidget => 'Widget màn hình chính';

  @override
  String get quickWidgetBody =>
      'Hiện điểm quyền riêng tư của bạn trên màn hình chính';

  @override
  String get quickTile => 'Ô Cài đặt nhanh';

  @override
  String get quickTileBody => 'Xem điểm của bạn trong bảng cài đặt nhanh';

  @override
  String get quickManual =>
      'Điện thoại không thể tự thêm. Hãy thêm thủ công: nhấn giữ màn hình chính (widget) hoặc chỉnh sửa bảng cài đặt nhanh (ô).';

  @override
  String get settingsExport => 'Xuất báo cáo';

  @override
  String get settingsExportBody =>
      'Lưu báo cáo dạng tệp PDF hoặc JSON và chia sẻ';

  @override
  String get exportFailed => 'Không thể tạo báo cáo.';

  @override
  String get settingsTrackerList => 'Danh sách trình theo dõi';

  @override
  String settingsTrackerListBody(int count) {
    return 'Nhấn để cập nhật. Đã biết $count trình theo dõi. Chỉ khi bạn nhấn.';
  }

  @override
  String get trackerListUpdating => 'Đang cập nhật danh sách trình theo dõi…';

  @override
  String trackerListUpdated(int count) {
    return 'Đã cập nhật danh sách trình theo dõi. Đã biết $count trình theo dõi.';
  }

  @override
  String get trackerListCurrent => 'Danh sách trình theo dõi đã mới nhất.';

  @override
  String get trackerListFailed =>
      'Không thể cập nhật danh sách trình theo dõi. Hãy kiểm tra kết nối.';
}
