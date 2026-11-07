// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get navHome => 'หน้าหลัก';

  @override
  String get navApps => 'แอป';

  @override
  String get navPermissions => 'สิทธิ์';

  @override
  String get navChanges => 'การเปลี่ยนแปลง';

  @override
  String get navSettings => 'การตั้งค่า';

  @override
  String get levelRisky => 'เสี่ยง';

  @override
  String get levelMedium => 'ปานกลาง';

  @override
  String get levelSafe => 'ปลอดภัย';

  @override
  String get overallHigh => 'ความเสี่ยงสูง';

  @override
  String get overallMedium => 'ความเสี่ยงปานกลาง';

  @override
  String get overallLow => 'ความเสี่ยงต่ำ';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get clear => 'ล้าง';

  @override
  String get back => 'กลับ';

  @override
  String get later => 'ภายหลัง';

  @override
  String get noneFound => 'ไม่พบรายการ';

  @override
  String get scanning => 'กำลังสแกน...';

  @override
  String get scanFailed => 'สแกนไม่สำเร็จ';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get couldNotOpenSettings => 'เปิดการตั้งค่าของแอปไม่ได้';

  @override
  String get homeShare => 'แชร์รายงาน';

  @override
  String get homeRescan => 'สแกนแอปอีกครั้ง';

  @override
  String homeAppsChecked(int count) {
    return 'แอปที่ตรวจสอบบนโทรศัพท์เครื่องนี้: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'แอปที่นับรวม: $counted, ที่ไว้ใจ: $trusted';
  }

  @override
  String get homeNeedsAttention => 'ควรให้ความสนใจ';

  @override
  String get homeSeeAll => 'ดูทั้งหมด';

  @override
  String get homeAllSafe => 'ไม่มีสิ่งที่ต้องให้ความสนใจ แอปทั้งหมดดูปลอดภัย';

  @override
  String get homeShareFailed => 'แชร์รายงานไม่ได้';

  @override
  String get scoreOf100 => 'เต็ม 100';

  @override
  String scoreSemantics(int score) {
    return 'คะแนนความเป็นส่วนตัว: $score เต็ม 100';
  }

  @override
  String wizardCard(int count) {
    return 'ตรวจสอบแอปที่เข้าถึงข้อมูลสำคัญ: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'แอป: $count เรียงจากเสี่ยงที่สุด';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'แสดง $shown จาก $total';
  }

  @override
  String get appsSearch => 'ค้นหาแอป';

  @override
  String get appsNone => 'ไม่พบแอป';

  @override
  String get chipMine => 'แอปของฉัน';

  @override
  String get chipSystem => 'ระบบ';

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get filterTrackers => 'มีตัวติดตาม';

  @override
  String get filterSpecial => 'การเข้าถึงพิเศษ';

  @override
  String get filterNotStore => 'นอกร้านค้า';

  @override
  String get filterOffline => 'ออฟไลน์';

  @override
  String get filterTrusted => 'ที่ไว้ใจ';

  @override
  String get permSubtitle => 'ใครใช้อะไรได้บ้างบนโทรศัพท์เครื่องนี้';

  @override
  String get trackersSubtitle => 'ตัวติดตามใดอยู่ในแอปใดบ้าง';

  @override
  String get segTrackers => 'ตัวติดตาม';

  @override
  String get noTrackers => 'ไม่พบตัวติดตามที่รู้จัก';

  @override
  String get noPerms => 'ไม่พบสิทธิ์ที่ละเอียดอ่อน';

  @override
  String appsCount(int count) {
    return 'แอป: $count';
  }

  @override
  String get changesSubtitle => 'แอปใหม่และการเปลี่ยนแปลงสิทธิ์';

  @override
  String get clearTitle => 'ล้างการเปลี่ยนแปลงหรือไม่';

  @override
  String get clearBody => 'รายการการเปลี่ยนแปลงจะถูกลบออกจากโทรศัพท์เครื่องนี้';

  @override
  String get changesEmpty =>
      'ยังไม่มีการเปลี่ยนแปลง Peekless จะแสดงแอปที่เพิ่มและลบ สิทธิ์ใหม่ และตัวติดตามใหม่ที่นี่';

  @override
  String evInstalled(int score, String level) {
    return 'ติดตั้งแล้ว คะแนน: $score ($level)';
  }

  @override
  String get evRemoved => 'ลบแล้ว';

  @override
  String evAllowed(String label) {
    return 'อนุญาตแล้วตอนนี้: $label';
  }

  @override
  String evRevoked(String label) {
    return 'ไม่ได้รับอนุญาตอีกต่อไป: $label';
  }

  @override
  String evTracker(String name) {
    return 'พบตัวติดตามใหม่: $name';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: เปิดแล้ว';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: ปิดแล้ว';
  }

  @override
  String get checksTitle => 'การตรวจสอบความปลอดภัย';

  @override
  String get checksIntro => 'สิ่งที่ควรดูอีกครั้ง แตะการตรวจสอบเพื่อดูแอป';

  @override
  String get checkUnusedTitle => 'แอปที่ไม่ได้ใช้แต่เข้าถึงข้อมูลสำคัญได้';

  @override
  String get checkDebuggableTitle => 'บิลด์สำหรับดีบัก';

  @override
  String get checkOfflineTitle => 'แอปออฟไลน์';

  @override
  String get checkAccessibilityDesc =>
      'แอปเหล่านี้อ่านหน้าจอของคุณและแตะแทนคุณได้';

  @override
  String get checkAdminDesc =>
      'แอปเหล่านี้ล็อกหรือล้างข้อมูลโทรศัพท์ได้ และขัดขวางการถอนการติดตั้งได้';

  @override
  String get checkNotificationDesc =>
      'แอปเหล่านี้อ่านการแจ้งเตือนทั้งหมดของคุณได้ รวมถึงรหัสต่าง ๆ';

  @override
  String checkUnusedDesc(int days) {
    return 'ไม่ได้เปิดมา $days วันแล้ว แต่ยังใช้สิทธิ์ที่ละเอียดอ่อนได้ ลองพิจารณาลบออก';
  }

  @override
  String get checkNotStoreDesc =>
      'ติดตั้งจากไฟล์หรือคอมพิวเตอร์ ไม่มีใครตรวจสอบให้คุณ';

  @override
  String get checkDebuggableDesc => 'บิลด์ทดสอบที่ตรวจสอบจากคอมพิวเตอร์ได้';

  @override
  String get checkOldDesc =>
      'แอปเหล่านี้ข้ามการป้องกันความเป็นส่วนตัวใหม่ของ Android';

  @override
  String get checkOfflineDesc =>
      'ไม่มีสิทธิ์อินเทอร์เน็ต จึงส่งข้อมูลออนไลน์ไม่ได้';

  @override
  String get usagePromptBody =>
      'ไม่บังคับ เปิดการเข้าถึงข้อมูลการใช้งานเพื่อค้นหาแอปที่คุณไม่ได้เปิดมานานแต่ยังใช้ไมโครโฟน ตำแหน่ง หรือรายชื่อติดต่อของคุณได้ ข้อมูลไม่ออกจากโทรศัพท์ของคุณ';

  @override
  String get usagePromptButton => 'เปิดการเข้าถึงข้อมูลการใช้งาน';

  @override
  String get securityNone =>
      'ไม่พบข้อสังเกตด้านความปลอดภัยบนโทรศัพท์เครื่องนี้';

  @override
  String securityOffline(int count) {
    return 'แอปที่ทำงานแบบออฟไลน์ทั้งหมด: $count';
  }

  @override
  String get fixWizardTitle => 'ตัวช่วยแก้ไข';

  @override
  String wizardStep(int index, int total) {
    return 'แอปที่ $index จาก $total';
  }

  @override
  String get wizardQuestion => 'แอปนี้ต้องใช้สิ่งนี้จริงหรือไม่';

  @override
  String get wizardHint =>
      'แตะ “เปิดการตั้งค่าของแอป” แล้วไปที่สิทธิ์ และปิดสิ่งที่แอปไม่จำเป็นต้องใช้';

  @override
  String get openAppSettings => 'เปิดการตั้งค่าของแอป';

  @override
  String get trustApp => 'ฉันไว้ใจแอปนี้';

  @override
  String get nextApp => 'แอปถัดไป';

  @override
  String get finish => 'เสร็จสิ้น';

  @override
  String get wizardDone => 'ตรวจสอบครบแล้ว';

  @override
  String get wizardNothing => 'ไม่มีอะไรให้ตรวจสอบ';

  @override
  String get wizardNothingBody => 'ขณะนี้ไม่มีแอปที่เข้าถึงข้อมูลสำคัญ';

  @override
  String get wizardRescanBody => 'สแกนอีกครั้งเพื่อดูคะแนนใหม่ของคุณ';

  @override
  String get rescanFinish => 'สแกนอีกครั้งและเสร็จสิ้น';

  @override
  String get wizardRequested => 'ขอไว้ ยังไม่ได้รับอนุญาต';

  @override
  String scoreTrackers(int count) {
    return 'ตัวติดตามที่รู้จัก: $count';
  }

  @override
  String get scoreDebuggable => 'บิลด์สำหรับดีบัก';

  @override
  String get scoreOldTarget => 'สร้างมาสำหรับ Android เวอร์ชันเก่ามาก';

  @override
  String unusualFor(String groups) {
    return 'ผิดปกติสำหรับแอปประเภทนี้: $groups';
  }

  @override
  String get noteRequested => 'ขอไว้ นับครึ่งเดียว';

  @override
  String get noteAllowed => 'อนุญาตแล้ว';

  @override
  String noteTrackers(int points, int max) {
    return 'ตัวละ $points สูงสุด $max';
  }

  @override
  String get noteTurnedOn => 'เปิดอยู่';

  @override
  String get noteDebuggable => 'ตรวจสอบจากคอมพิวเตอร์ได้';

  @override
  String noteApi(int apiLevel) {
    return 'API ระดับ $apiLevel';
  }

  @override
  String get noteExtra => 'หักเพิ่ม';

  @override
  String get explainTitle => 'คะแนนคำนวณอย่างไร';

  @override
  String get explainIntro =>
      'ทุกแอปเริ่มที่ 100 คะแนนจะถูกหักตามสิ่งที่แอปทำได้';

  @override
  String get explainStart => 'เริ่มต้น';

  @override
  String get explainNothing => 'ไม่มีการหักคะแนน';

  @override
  String get explainNothingNote =>
      'ไม่มีสิทธิ์ที่ละเอียดอ่อนหรือตัวติดตามที่รู้จัก';

  @override
  String get explainScore => 'คะแนน';

  @override
  String get explainRules => 'กฎ';

  @override
  String get rule1 =>
      'ในแต่ละกลุ่มจะนับเฉพาะสิทธิ์ที่หนักที่สุด เช่น ตำแหน่งที่แม่นยำและโดยประมาณนับเพียงครั้งเดียว';

  @override
  String get rule2 =>
      'สิทธิ์พิเศษ (ไฟล์ทั้งหมด แสดงทับแอปอื่น ติดตั้งแอป) นับครึ่งเดียวหากแอปแค่ขอไว้';

  @override
  String rule3(int points, int max) {
    return 'ตัวติดตามที่รู้จักแต่ละตัวหัก $points คะแนน สูงสุด $max';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'การเข้าถึงพิเศษที่เปิดอยู่จะถูกหักคะแนน: การช่วยเหลือพิเศษ $a, ผู้ดูแลอุปกรณ์ $b, การเข้าถึงการแจ้งเตือน $c';
  }

  @override
  String rule5(int a, int b) {
    return 'บิลด์สำหรับดีบักหัก $a แอปที่สร้างสำหรับ Android 7 หรือเก่ากว่าหัก $b';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'หากสิทธิ์ผิดปกติสำหรับแอปประเภทนั้น (เช่น ไมโครโฟนในแอปไฟฉาย) จะหักอีก $points คะแนน สำหรับกลุ่มสิทธิ์ไม่เกิน $maxGroups กลุ่ม';
  }

  @override
  String get rule7 =>
      '70 ขึ้นไป: ปลอดภัย 40 ถึง 69: ปานกลาง ต่ำกว่า 40: เสี่ยง';

  @override
  String get explainFooter =>
      'คะแนนแสดงสิ่งที่แอปทำได้ ไม่ใช่สิ่งที่แอปกำลังทำอยู่';

  @override
  String get howScore => 'คะแนนนี้คำนวณอย่างไร';

  @override
  String summaryTrackers(int count) {
    return 'ตัวติดตามที่รู้จัก: $count';
  }

  @override
  String get summaryNone => 'ไม่มีสิทธิ์ที่ละเอียดอ่อนหรือตัวติดตามที่รู้จัก';

  @override
  String metaTrackers(int count) {
    return 'ตัวติดตาม: $count';
  }

  @override
  String get metaNone => 'ไม่มีสิทธิ์ที่ละเอียดอ่อน';

  @override
  String get detailSecurity => 'ความปลอดภัย';

  @override
  String get detailSource => 'แหล่งที่มา';

  @override
  String get detailInternet => 'อินเทอร์เน็ต';

  @override
  String get detailInternetYes => 'เชื่อมต่ออินเทอร์เน็ตได้';

  @override
  String get detailOffline => 'ออฟไลน์';

  @override
  String get detailOfflineBody =>
      'ไม่มีสิทธิ์อินเทอร์เน็ต จึงส่งข้อมูลออนไลน์ไม่ได้';

  @override
  String get detailLastOpened => 'เปิดล่าสุด';

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวาน';

  @override
  String daysSince(int days) {
    return 'จำนวนวันนับจากการใช้ครั้งล่าสุด: $days';
  }

  @override
  String get detailDebuggableBody => 'บิลด์ทดสอบที่ตรวจสอบจากคอมพิวเตอร์ได้';

  @override
  String detailOldBody(int apiLevel) {
    return 'API ระดับ $apiLevel จึงข้ามการป้องกันความเป็นส่วนตัวใหม่';
  }

  @override
  String get detailTrustBody => 'ไม่นับรวมในกลุ่มเสี่ยงและในการแจ้งเตือน';

  @override
  String get detailNoPerms => 'แอปนี้ไม่ได้ขอสิทธิ์ที่ละเอียดอ่อน';

  @override
  String get chipAllowed => 'อนุญาต';

  @override
  String get chipRequested => 'ขอไว้';

  @override
  String get chipNotAllowed => 'ไม่อนุญาต';

  @override
  String sensitiveNote(String why) {
    return 'ละเอียดอ่อน: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'ตัวติดตามที่พบ: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless แสดงสิ่งที่แอปทำได้ ไม่ใช่สิ่งที่แอปกำลังทำอยู่ ตัวติดตามตรวจพบจากไฟล์ประกาศของแอป จึงอาจมีบางตัวที่ตกหล่น';

  @override
  String get srcBuiltIn => 'ติดมากับโทรศัพท์ของคุณ';

  @override
  String get srcUnknown => 'ไม่ทราบ (ติดตั้งจากไฟล์หรือคอมพิวเตอร์)';

  @override
  String get srcApk => 'ไฟล์ APK ที่คุณเปิด';

  @override
  String get srcAdb => 'คอมพิวเตอร์ (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'ติดตั้งโดย $name';
  }

  @override
  String get accessibilityLabel => 'การเข้าถึงการช่วยเหลือพิเศษ';

  @override
  String get adminLabel => 'ผู้ดูแลอุปกรณ์';

  @override
  String get notificationLabel => 'การเข้าถึงการแจ้งเตือน';

  @override
  String get accessibilityWhy =>
      'เปิดอยู่ อ่านสิ่งที่อยู่บนหน้าจอและดำเนินการแทนคุณได้';

  @override
  String get adminWhy =>
      'เปิดอยู่ ล็อกโทรศัพท์ ล้างข้อมูล และขัดขวางการถอนการติดตั้งได้';

  @override
  String get notificationWhy =>
      'เปิดอยู่ อ่านการแจ้งเตือนทั้งหมดของคุณได้ รวมถึงรหัสต่าง ๆ';

  @override
  String get grpMicrophone => 'ไมโครโฟน';

  @override
  String get grpCamera => 'กล้อง';

  @override
  String get grpLocation => 'ตำแหน่ง';

  @override
  String get grpContacts => 'รายชื่อติดต่อ';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'ประวัติการโทร';

  @override
  String get grpPhone => 'โทรศัพท์';

  @override
  String get grpCalendar => 'ปฏิทิน';

  @override
  String get grpBodySensors => 'เซนเซอร์ร่างกาย';

  @override
  String get grpActivity => 'กิจกรรม';

  @override
  String get grpFiles => 'ไฟล์';

  @override
  String get grpOverlay => 'แสดงทับ';

  @override
  String get grpInstalls => 'การติดตั้ง';

  @override
  String get grpAppList => 'รายการแอป';

  @override
  String get lblCoarseLocation => 'ตำแหน่งโดยประมาณ';

  @override
  String get lblFineLocation => 'ตำแหน่งที่แม่นยำ';

  @override
  String get lblBackgroundLocation => 'ตำแหน่งตลอดเวลา';

  @override
  String get lblAccounts => 'บัญชี';

  @override
  String get lblReadSms => 'อ่าน SMS';

  @override
  String get lblReceiveSms => 'รับ SMS';

  @override
  String get lblSendSms => 'ส่ง SMS';

  @override
  String get lblPhoneState => 'สถานะโทรศัพท์';

  @override
  String get lblCallPhone => 'โทรออก';

  @override
  String get lblActivity => 'กิจกรรมทางกาย';

  @override
  String get lblAllFiles => 'ไฟล์ทั้งหมด';

  @override
  String get lblFilesMedia => 'ไฟล์และสื่อ';

  @override
  String get lblPhotos => 'รูปภาพ';

  @override
  String get lblVideos => 'วิดีโอ';

  @override
  String get lblAudioFiles => 'ไฟล์เสียง';

  @override
  String get lblOverlay => 'แสดงทับแอปอื่น';

  @override
  String get lblInstall => 'ติดตั้งแอปอื่น';

  @override
  String get lblAppList => 'ดูแอปทั้งหมด';

  @override
  String get whyMic => 'บันทึกเสียงได้';

  @override
  String get whyCamera => 'ใช้กล้องได้';

  @override
  String get whyCoarse => 'เห็นตำแหน่งโดยประมาณของคุณได้';

  @override
  String get whyFine => 'เห็นตำแหน่งที่แม่นยำของคุณได้';

  @override
  String get whyBackground => 'ติดตามตำแหน่งของคุณได้ตลอดเวลา';

  @override
  String get whyContacts => 'อ่านรายชื่อติดต่อของคุณได้';

  @override
  String get whyAccounts => 'เห็นบัญชีบนโทรศัพท์ได้';

  @override
  String get whyReadSms => 'อ่าน SMS ของคุณได้';

  @override
  String get whyReceiveSms => 'รับ SMS ของคุณได้';

  @override
  String get whySendSms => 'ส่ง SMS ได้';

  @override
  String get whyCallLog => 'อ่านประวัติการโทรของคุณได้';

  @override
  String get whyPhoneState => 'เห็นสถานะโทรศัพท์ของคุณได้';

  @override
  String get whyCallPhone => 'โทรออกได้';

  @override
  String get whyCalendar => 'อ่านปฏิทินของคุณได้';

  @override
  String get whyBody => 'อ่านเซนเซอร์ร่างกายได้';

  @override
  String get whyActivity => 'เห็นกิจกรรมทางกายของคุณได้';

  @override
  String get whyAllFiles => 'เข้าถึงไฟล์ทั้งหมดบนโทรศัพท์ได้';

  @override
  String get whyFilesMedia => 'อ่านไฟล์และสื่อได้';

  @override
  String get whyPhotos => 'อ่านรูปภาพของคุณได้';

  @override
  String get whyVideos => 'อ่านวิดีโอของคุณได้';

  @override
  String get whyAudio => 'อ่านไฟล์เสียงของคุณได้';

  @override
  String get whyOverlay => 'แสดงทับแอปอื่นได้';

  @override
  String get whyInstall => 'ติดตั้งแอปอื่นได้';

  @override
  String get whyAppList => 'เห็นแอปทั้งหมดบนโทรศัพท์ได้';

  @override
  String get settingsAppearance => 'การแสดงผล';

  @override
  String get settingsTheme => 'ธีม';

  @override
  String get settingsThemeBody => 'ค่าเริ่มต้นจะตามโทรศัพท์ของคุณ';

  @override
  String get themeSystem => 'ตามระบบ';

  @override
  String get themeLight => 'สว่าง';

  @override
  String get themeDark => 'มืด';

  @override
  String get settingsScanning => 'การสแกน';

  @override
  String get settingsAlerts => 'การแจ้งเตือนเกี่ยวกับแอป';

  @override
  String get settingsAlertsBody =>
      'แจ้งเมื่อมีแอปใหม่และสิทธิ์ใหม่ ตรวจสอบประมาณทุก 6 ชั่วโมง';

  @override
  String get settingsWeekly => 'สรุปประจำสัปดาห์';

  @override
  String get settingsWeeklyBody =>
      'แจ้งเตือนสัปดาห์ละครั้งพร้อมคะแนนของคุณและสิ่งที่เปลี่ยนไป';

  @override
  String get settingsUsage => 'การเข้าถึงข้อมูลการใช้งาน';

  @override
  String get settingsUsageOn =>
      'เปิดอยู่ Peekless เห็นได้ว่าแอปถูกเปิดครั้งล่าสุดเมื่อไร';

  @override
  String get settingsUsageOff =>
      'ปิดอยู่ ไม่บังคับ ช่วยให้ Peekless ค้นหาแอปที่คุณไม่ได้ใช้แล้ว ข้อมูลอยู่บนโทรศัพท์ของคุณ';

  @override
  String get settingsSystemApps => 'รวมแอปของระบบ';

  @override
  String get settingsSystemAppsBody => 'สแกนแอปที่ติดมากับโทรศัพท์ด้วย';

  @override
  String get settingsRescan => 'สแกนตอนนี้';

  @override
  String get settingsRescanBody => 'ตรวจสอบแอปทั้งหมดอีกครั้ง';

  @override
  String get settingsUpdates => 'การอัปเดต';

  @override
  String get settingsCheckUpdates => 'ตรวจสอบการอัปเดต';

  @override
  String settingsVersion(String version) {
    return 'เวอร์ชัน $version · ตรวจสอบเมื่อคุณแตะเท่านั้น';
  }

  @override
  String get settingsAbout => 'เกี่ยวกับ';

  @override
  String get settingsPrivacy => 'ความเป็นส่วนตัว';

  @override
  String get settingsPrivacyBody => 'ทุกอย่างอยู่บนโทรศัพท์ของคุณ';

  @override
  String get settingsOpenSource => 'โอเพนซอร์ส';

  @override
  String get settingsOpenSourceBody => 'สัญญาอนุญาต GPL-3.0 ดูโค้ดได้บน GitHub';

  @override
  String get settingsDeveloped => 'พัฒนาโดย Lumio Apps';

  @override
  String get settingsLanguage => 'ภาษา';

  @override
  String get languageSystem => 'ตามภาษาของโทรศัพท์';

  @override
  String get updChecking => 'กำลังตรวจสอบการอัปเดต...';

  @override
  String get updLatest => 'คุณใช้เวอร์ชันล่าสุดแล้ว';

  @override
  String get updFailed => 'ตรวจสอบการอัปเดตไม่ได้ โปรดลองอีกครั้งภายหลัง';

  @override
  String get updTitle => 'มีการอัปเดต';

  @override
  String updReady(String version) {
    return 'เวอร์ชัน $version พร้อมติดตั้งแล้ว';
  }

  @override
  String get updDownloadFailed =>
      'ดาวน์โหลดไม่สำเร็จ ตรวจสอบการเชื่อมต่อแล้วลองอีกครั้ง';

  @override
  String get updInstall => 'ดาวน์โหลดและติดตั้ง';

  @override
  String get notifyDenied =>
      'อนุญาตการแจ้งเตือนให้ Peekless เพื่อเปิดใช้งานสิ่งนี้';

  @override
  String get settingChangeFailed => 'เปลี่ยนการตั้งค่านี้ไม่ได้';

  @override
  String get usageOpenFailed => 'เปิดการตั้งค่าการเข้าถึงข้อมูลการใช้งานไม่ได้';

  @override
  String alertNewTitle(String name) {
    return 'แอปใหม่: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'คะแนน $score ($level) $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name มีการเปลี่ยนแปลง';
  }

  @override
  String alertNowHas(String list) {
    return 'ตอนนี้มี: $list';
  }

  @override
  String alertNowAllowed(String list) {
    return 'อนุญาตแล้วตอนนี้: $list';
  }

  @override
  String alertNewTracker(String list) {
    return 'ตัวติดตามใหม่: $list';
  }

  @override
  String alertScore(int score, String level) {
    return 'คะแนน $score ($level)';
  }

  @override
  String get alertMoreTitle => 'การเปลี่ยนแปลงเพิ่มเติม';

  @override
  String alertMoreBody(int count) {
    return 'มีการเปลี่ยนแปลงเพิ่มเติม $count รายการ เปิด Peekless เพื่อดู';
  }

  @override
  String get weeklyTitle => 'สรุป Peekless ประจำสัปดาห์ของคุณ';

  @override
  String weeklyUp(int score, int diff) {
    return 'คะแนน $score/100 เพิ่มขึ้น $diff จากสัปดาห์ที่แล้ว';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'คะแนน $score/100 ลดลง $diff จากสัปดาห์ที่แล้ว';
  }

  @override
  String weeklySame(int score) {
    return 'คะแนน $score/100 ไม่เปลี่ยนแปลงจากสัปดาห์ที่แล้ว';
  }

  @override
  String weeklyScore(int score) {
    return 'คะแนน $score/100';
  }

  @override
  String weeklyNewApps(int count) {
    return 'แอปใหม่: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'แอปที่ถูกลบ: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'สิทธิ์ที่เปิด: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'ตัวติดตามใหม่: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'สัปดาห์นี้: $list';
  }

  @override
  String get weeklyNone => 'สัปดาห์นี้ไม่มีการเปลี่ยนแปลง';

  @override
  String weeklyRisky(int count) {
    return 'แอปที่เสี่ยง: $count';
  }

  @override
  String get reportTitle => 'รายงานความเป็นส่วนตัวจาก Peekless';

  @override
  String reportScore(int score, String level) {
    return 'คะแนน: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'แอปที่ตรวจสอบ: $total เสี่ยง: $risky, ปานกลาง: $medium, ปลอดภัย: $safe';
  }

  @override
  String get reportAttention => 'ควรให้ความสนใจ:';

  @override
  String get reportFooter =>
      'ตรวจสอบบนโทรศัพท์ของฉันด้วย Peekless ไม่มีการส่งข้อมูลไปที่ใดเลย';

  @override
  String get trendTitle => 'คะแนนตามช่วงเวลา';

  @override
  String trendUp(int diff, int days) {
    return 'เพิ่มขึ้น $diff (จำนวนวันที่ติดตาม: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'ลดลง $diff (จำนวนวันที่ติดตาม: $days)';
  }

  @override
  String trendSame(int days) {
    return 'ไม่เปลี่ยนแปลง (จำนวนวันที่ติดตาม: $days)';
  }

  @override
  String get settingsQuick => 'เข้าถึงด่วน';

  @override
  String get quickWidget => 'วิดเจ็ตหน้าจอหลัก';

  @override
  String get quickWidgetBody => 'แสดงคะแนนความเป็นส่วนตัวของคุณบนหน้าจอหลัก';

  @override
  String get quickTile => 'ไทล์การตั้งค่าด่วน';

  @override
  String get quickTileBody => 'ดูคะแนนของคุณในแผงการตั้งค่าด่วน';

  @override
  String get quickManual =>
      'โทรศัพท์เพิ่มให้อัตโนมัติไม่ได้ โปรดเพิ่มเอง: กดหน้าจอหลักค้างไว้ (วิดเจ็ต) หรือแก้ไขแผงการตั้งค่าด่วน (ไทล์)';

  @override
  String get settingsExport => 'ส่งออกรายงาน';

  @override
  String get settingsExportBody =>
      'บันทึกรายงานเป็นไฟล์ PDF หรือ JSON แล้วแชร์';

  @override
  String get exportFailed => 'สร้างรายงานไม่ได้';

  @override
  String get settingsTrackerList => 'รายการตัวติดตาม';

  @override
  String settingsTrackerListBody(int count) {
    return 'แตะเพื่ออัปเดต รู้จักตัวติดตาม $count ราย อัปเดตเฉพาะเมื่อคุณแตะ';
  }

  @override
  String get trackerListUpdating => 'กำลังอัปเดตรายการตัวติดตาม…';

  @override
  String trackerListUpdated(int count) {
    return 'อัปเดตรายการตัวติดตามแล้ว รู้จักตัวติดตาม $count ราย';
  }

  @override
  String get trackerListCurrent => 'รายการตัวติดตามเป็นปัจจุบันแล้ว';

  @override
  String get trackerListFailed =>
      'อัปเดตรายการตัวติดตามไม่ได้ โปรดตรวจสอบการเชื่อมต่อ';

  @override
  String get homeTagline => 'ดูว่าใครแอบมองคุณอยู่';

  @override
  String get homeOverviewBody => 'สัดส่วนแอปของคุณที่ใช้แต่ละรายการได้';

  @override
  String get settingsDeep => 'สแกนเชิงลึก';

  @override
  String get settingsDeepBody =>
      'ค้นหาตัวติดตามที่ซ่อนอยู่ในโค้ดของแต่ละแอปด้วย การสแกนครั้งแรกจะช้ากว่า แอปที่มากับเครื่องจะถูกข้าม ทุกอย่างอยู่ในโทรศัพท์ของคุณ';

  @override
  String trackersFromCode(int count) {
    return 'พบในโค้ดของแอป (มีไอคอนโค้ดกำกับ): $count';
  }

  @override
  String get settingsNet => 'ตัวตรวจสอบเครือข่าย';

  @override
  String get settingsNetBody =>
      'ดูว่าแอปใดค้นหาที่อยู่อินเทอร์เน็ตใด และรายใดเป็นตัวติดตาม';

  @override
  String get netTitle => 'ตัวตรวจสอบเครือข่าย';

  @override
  String get netIntro =>
      'Peekless แสดงว่าแอปของคุณขอชื่อโดเมนใดบ้าง โดยใช้ VPN ในเครื่องที่รับเฉพาะคำขอเหล่านี้ ความเร็วอินเทอร์เน็ตจึงไม่เปลี่ยน ไม่เห็นว่าคุณส่งหรืออ่านอะไร เห็นเพียงชื่อ ไม่มีอะไรออกจากโทรศัพท์ของคุณ';

  @override
  String get netLimits =>
      'อาจพลาดแอปที่ใช้ DNS เข้ารหัสของตัวเอง หรือเมื่อตั้งค่า DNS ส่วนตัวเป็นผู้ให้บริการที่กำหนด ต้องใช้ Android 10 ขึ้นไปจึงจะแสดงว่าแอปใดเป็นผู้ขอ';

  @override
  String get netSwitch => 'ตรวจสอบคำขอ';

  @override
  String get netOn => 'เปิดอยู่ ลองใช้แอปสักพัก แล้วกลับมาดูผลลัพธ์';

  @override
  String get netOff => 'ปิด';

  @override
  String get netEmpty => 'ยังไม่พบอะไร ลองใช้แอปแล้วดูอีกครั้ง';

  @override
  String netLookups(int count) {
    return '$count คำขอ';
  }

  @override
  String netTrackerCount(int count) {
    return '$count โดเมนตัวติดตาม';
  }

  @override
  String get netClear => 'ล้างข้อมูล';

  @override
  String get netCleared => 'ล้างข้อมูลเครือข่ายแล้ว';

  @override
  String get netConsentDenied => 'Android ไม่อนุญาตให้เริ่มตัวตรวจสอบ';

  @override
  String get netFailed => 'เปลี่ยนตัวตรวจสอบเครือข่ายไม่ได้';

  @override
  String get netUnknownApp => 'แอปที่ไม่รู้จัก';

  @override
  String netTrackerTag(String name) {
    return 'ตัวติดตาม: $name';
  }

  @override
  String get netBlockTitle => 'บล็อกโดเมนของตัวติดตาม';

  @override
  String get netBlockBody =>
      'ชื่อของตัวติดตามที่รู้จักจะได้รับคำตอบว่างเปล่า แอปจึงเข้าถึงไม่ได้ บางแอปอาจไม่มีโฆษณา สถิติ หรือฟีเจอร์อื่น ปิดไว้เป็นค่าเริ่มต้น';

  @override
  String netBlockedCount(int count) {
    return 'บล็อกแล้ว $count ครั้ง';
  }

  @override
  String get netExport => 'ส่งออกเป็น CSV';

  @override
  String get trackerKindAds => 'โฆษณา';

  @override
  String get trackerKindAdsBody =>
      'แสดงโฆษณาในแอปและวัดว่าคุณเห็นและแตะโฆษณาใด มักใช้รหัสโฆษณาและข้อมูลอุปกรณ์ของคุณเพื่อเลือกโฆษณา';

  @override
  String get trackerKindAnalytics => 'วิเคราะห์การใช้งาน';

  @override
  String get trackerKindAnalyticsBody =>
      'บันทึกวิธีที่คุณใช้แอป เช่น หน้าจอที่เปิด ปุ่มที่แตะ และระยะเวลาที่อยู่ ผู้สร้างแอปใช้เพื่อทำความเข้าใจผู้ใช้';

  @override
  String get trackerKindAttribution => 'การระบุที่มาของการติดตั้ง';

  @override
  String get trackerKindAttributionBody =>
      'ค้นหาว่าโฆษณาหรือลิงก์ใดทำให้คุณติดตั้งแอป และติดตามสิ่งที่คุณทำต่อจากนั้น เพื่อให้ผู้โฆษณาเห็นว่าโฆษณาได้ผลเพียงใด';

  @override
  String get trackerKindCrash => 'รายงานการขัดข้อง';

  @override
  String get trackerKindCrashBody =>
      'ส่งรายงานเมื่อแอปขัดข้อง พร้อมข้อมูลโทรศัพท์และข้อผิดพลาด ช่วยให้ผู้สร้างแก้บั๊กและมักเป็นชนิดที่รุกล้ำน้อยที่สุด';

  @override
  String get trackerKindPush => 'ข้อความพุช';

  @override
  String get trackerKindPushBody =>
      'ส่งการแจ้งเตือนไปยังโทรศัพท์และอาจติดตามว่าคุณเปิดดูหรือไม่ จำเป็นสำหรับการแจ้งเตือน แต่ก็ใช้กับข้อความการตลาดด้วย';

  @override
  String get trackerKindOther => 'ตัวติดตาม';

  @override
  String get trackerKindOtherBody =>
      'ส่วนประกอบติดตามที่รู้จัก Peekless ไม่มีบันทึกรายละเอียดเกี่ยวกับตัวนี้ แต่มันอาจเก็บข้อมูลเกี่ยวกับคุณหรืออุปกรณ์แล้วส่งออนไลน์';

  @override
  String get trackerTapHint => 'แตะตัวติดตามเพื่อดูว่ามันทำอะไร';

  @override
  String get certTitle => 'ใบรับรองการลงชื่อ';

  @override
  String get certNormal => 'ไม่ได้ลงชื่อด้วยคีย์ดีบัก แตะเพื่อคัดลอกลายนิ้วมือ';

  @override
  String get certDebug =>
      'ลงชื่อด้วยคีย์ดีบัก รุ่นจริงใช้คีย์ส่วนตัว จึงควรระวังแอปนี้ แตะเพื่อคัดลอกลายนิ้วมือ';

  @override
  String get certUnknown => 'Android ไม่ได้ให้ใบรับรองของแอปนี้';

  @override
  String get certCopied => 'คัดลอก SHA-256 แล้ว';
}
