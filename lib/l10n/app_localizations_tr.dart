// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get navHome => 'Ana sayfa';

  @override
  String get navApps => 'Uygulamalar';

  @override
  String get navPermissions => 'İzinler';

  @override
  String get navChanges => 'Değişiklikler';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get levelRisky => 'Riskli';

  @override
  String get levelMedium => 'Orta';

  @override
  String get levelSafe => 'Güvenli';

  @override
  String get overallHigh => 'Yüksek risk';

  @override
  String get overallMedium => 'Orta risk';

  @override
  String get overallLow => 'Düşük risk';

  @override
  String get cancel => 'İptal';

  @override
  String get clear => 'Temizle';

  @override
  String get back => 'Geri';

  @override
  String get later => 'Sonra';

  @override
  String get noneFound => 'Hiçbir şey bulunamadı';

  @override
  String get scanning => 'Taranıyor...';

  @override
  String get scanFailed => 'Tarama başarısız oldu';

  @override
  String get tryAgain => 'Tekrar dene';

  @override
  String get couldNotOpenSettings => 'Uygulama ayarları açılamadı.';

  @override
  String get homeShare => 'Raporu paylaş';

  @override
  String get homeRescan => 'Uygulamaları yeniden tara';

  @override
  String homeAppsChecked(int count) {
    return 'Bu telefonda kontrol edilen uygulamalar: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Sayılan uygulamalar: $counted, güvenilen: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Dikkat gerektirenler';

  @override
  String get homeSeeAll => 'Tümünü gör';

  @override
  String get homeAllSafe =>
      'Dikkat gerektiren bir şey yok. Tüm uygulamalar güvenli görünüyor.';

  @override
  String get homeShareFailed => 'Rapor paylaşılamadı.';

  @override
  String get scoreOf100 => '/ 100';

  @override
  String scoreSemantics(int score) {
    return 'Gizlilik puanı: 100 üzerinden $score';
  }

  @override
  String wizardCard(int count) {
    return 'Hassas erişimi olan uygulamaları gözden geçirin: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Uygulamalar: $count, en riskliler önce';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return '$total içinden $shown gösteriliyor';
  }

  @override
  String get appsSearch => 'Uygulama ara';

  @override
  String get appsNone => 'Uygulama bulunamadı';

  @override
  String get chipMine => 'Uygulamalarım';

  @override
  String get chipSystem => 'Sistem';

  @override
  String get filterAll => 'Tümü';

  @override
  String get filterTrackers => 'İzleyicili';

  @override
  String get filterSpecial => 'Özel erişim';

  @override
  String get filterNotStore => 'Mağaza dışı';

  @override
  String get filterOffline => 'Çevrimdışı';

  @override
  String get filterTrusted => 'Güvenilen';

  @override
  String get permSubtitle => 'Bu telefonda kim neyi kullanabilir';

  @override
  String get trackersSubtitle => 'Hangi izleyici hangi uygulamalarda';

  @override
  String get segTrackers => 'İzleyiciler';

  @override
  String get noTrackers => 'Bilinen izleyici bulunamadı.';

  @override
  String get noPerms => 'Hassas izin bulunamadı.';

  @override
  String appsCount(int count) {
    return 'Uygulamalar: $count';
  }

  @override
  String get changesSubtitle => 'Yeni uygulamalar ve izin değişiklikleri';

  @override
  String get clearTitle => 'Değişiklikler temizlensin mi?';

  @override
  String get clearBody => 'Değişiklik listesi bu telefondan kaldırılacak.';

  @override
  String get changesEmpty =>
      'Henüz değişiklik yok. Peekless yeni ve kaldırılan uygulamaları, yeni izinleri ve yeni izleyicileri burada gösterecek.';

  @override
  String evInstalled(int score, String level) {
    return 'Yüklendi. Puan: $score ($level).';
  }

  @override
  String get evRemoved => 'Kaldırıldı.';

  @override
  String evAllowed(String label) {
    return 'Artık izinli: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Artık izinli değil: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Yeni izleyici bulundu: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: açıldı.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: kapatıldı.';
  }

  @override
  String get checksTitle => 'Güvenlik kontrolleri';

  @override
  String get checksIntro =>
      'Bir kez daha bakmaya değer şeyler. Uygulamaları görmek için bir kontrole dokunun.';

  @override
  String get checkUnusedTitle =>
      'Hassas erişimi olan kullanılmayan uygulamalar';

  @override
  String get checkDebuggableTitle => 'Hata ayıklama sürümleri';

  @override
  String get checkOfflineTitle => 'Çevrimdışı uygulamalar';

  @override
  String get checkAccessibilityDesc =>
      'Bu uygulamalar ekranınızı okuyabilir ve sizin yerinize dokunabilir.';

  @override
  String get checkAdminDesc =>
      'Bu uygulamalar telefonu kilitleyebilir veya silebilir ve kaldırılmayı engelleyebilir.';

  @override
  String get checkNotificationDesc =>
      'Bu uygulamalar kodlar dahil tüm bildirimlerinizi okuyabilir.';

  @override
  String checkUnusedDesc(int days) {
    return '$days gündür açılmadı ama hâlâ hassas izinleri kullanabilir. Kaldırmayı düşünün.';
  }

  @override
  String get checkNotStoreDesc =>
      'Bir dosyadan veya bilgisayardan yüklendi. Sizin için kimse kontrol etmedi.';

  @override
  String get checkDebuggableDesc =>
      'Bir bilgisayardan incelenebilen test sürümleri.';

  @override
  String get checkOldDesc =>
      'Bu uygulamalar Android’in yeni gizlilik korumalarını atlıyor.';

  @override
  String get checkOfflineDesc =>
      'İnternet izni yok, bu yüzden çevrimiçi veri gönderemezler.';

  @override
  String get usagePromptBody =>
      'İsteğe bağlı. Uzun süredir açmadığınız ama mikrofonunuzu, konumunuzu veya kişilerinizi hâlâ kullanabilen uygulamaları bulmak için kullanım erişimini açın. Veriler telefonunuzdan çıkmaz.';

  @override
  String get usagePromptButton => 'Kullanım erişimini aç';

  @override
  String get securityNone => 'Bu telefonda güvenlik uyarısı bulunamadı.';

  @override
  String securityOffline(int count) {
    return 'Tamamen çevrimdışı çalışan uygulamalar: $count';
  }

  @override
  String get fixWizardTitle => 'Düzeltme sihirbazı';

  @override
  String wizardStep(int index, int total) {
    return 'Uygulama $index / $total';
  }

  @override
  String get wizardQuestion => 'Bu uygulamanın buna gerçekten ihtiyacı var mı?';

  @override
  String get wizardHint =>
      '“Uygulama ayarlarını aç”a, sonra İzinler’e dokunun ve uygulamanın ihtiyaç duymadığı izni kapatın.';

  @override
  String get openAppSettings => 'Uygulama ayarlarını aç';

  @override
  String get trustApp => 'Bu uygulamaya güveniyorum';

  @override
  String get nextApp => 'Sonraki uygulama';

  @override
  String get finish => 'Bitir';

  @override
  String get wizardDone => 'Hepsi gözden geçirildi';

  @override
  String get wizardNothing => 'İncelenecek bir şey yok';

  @override
  String get wizardNothingBody => 'Şu anda hassas erişimi olan uygulama yok.';

  @override
  String get wizardRescanBody => 'Yeni puanınızı görmek için yeniden tarayın.';

  @override
  String get rescanFinish => 'Yeniden tara ve bitir';

  @override
  String get wizardRequested => 'istendi, henüz izin verilmedi';

  @override
  String scoreTrackers(int count) {
    return 'Bilinen izleyiciler: $count';
  }

  @override
  String get scoreDebuggable => 'Hata ayıklama sürümü';

  @override
  String get scoreOldTarget => 'Çok eski Android için yapılmış';

  @override
  String unusualFor(String groups) {
    return 'Bu tür bir uygulama için alışılmadık: $groups';
  }

  @override
  String get noteRequested => 'istendi, yarısı sayılır';

  @override
  String get noteAllowed => 'izinli';

  @override
  String noteTrackers(int points, int max) {
    return 'her biri $points, en fazla $max';
  }

  @override
  String get noteTurnedOn => 'açık';

  @override
  String get noteDebuggable => 'bilgisayardan incelenebilir';

  @override
  String noteApi(int apiLevel) {
    return 'API düzeyi $apiLevel';
  }

  @override
  String get noteExtra => 'ek düşüş';

  @override
  String get explainTitle => 'Puan nasıl çalışır';

  @override
  String get explainIntro =>
      'Her uygulama 100 ile başlar. Uygulamanın yapabildiklerine göre puan düşülür.';

  @override
  String get explainStart => 'Başlangıç';

  @override
  String get explainNothing => 'Hiçbir şey düşülmedi';

  @override
  String get explainNothingNote => 'Hassas izin veya bilinen izleyici yok';

  @override
  String get explainScore => 'Puan';

  @override
  String get explainRules => 'Kurallar';

  @override
  String get rule1 =>
      'Her grupta yalnızca en ağır izin sayılır. Örneğin kesin ve yaklaşık konum bir kez sayılır.';

  @override
  String get rule2 =>
      'Özel izinler (tüm dosyalar, diğer uygulamaların üzerinde gösterme, uygulama yükleme) uygulama yalnızca istediyse yarım sayılır.';

  @override
  String rule3(int points, int max) {
    return 'Bilinen her izleyici $points puan düşer, en fazla $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Açık bir özel erişim puan düşürür: erişilebilirlik $a, cihaz yöneticisi $b, bildirim erişimi $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Hata ayıklama sürümü $a düşürür. Android 7 veya daha eski için yapılmış bir uygulama $b düşürür.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Bir izin o tür uygulama için alışılmadıksa (örneğin el fenerinde mikrofon), en fazla $maxGroups izin grubu için $points puan daha düşülür.';
  }

  @override
  String get rule7 =>
      '70 ve üzeri: Güvenli. 40 ile 69 arası: Orta. 40’ın altı: Riskli.';

  @override
  String get explainFooter =>
      'Puan, bir uygulamanın şu anda ne yaptığını değil, neler yapabileceğini gösterir.';

  @override
  String get howScore => 'Bu puan nasıl hesaplanıyor?';

  @override
  String summaryTrackers(int count) {
    return 'Bilinen izleyiciler: $count.';
  }

  @override
  String get summaryNone => 'Hassas izin veya bilinen izleyici yok.';

  @override
  String metaTrackers(int count) {
    return 'İzleyiciler: $count';
  }

  @override
  String get metaNone => 'Hassas izin yok';

  @override
  String get detailSecurity => 'Güvenlik';

  @override
  String get detailSource => 'Kaynak';

  @override
  String get detailInternet => 'İnternet';

  @override
  String get detailInternetYes => 'İnternete erişebilir';

  @override
  String get detailOffline => 'Çevrimdışı';

  @override
  String get detailOfflineBody =>
      'İnternet izni yok, bu yüzden çevrimiçi veri gönderemez';

  @override
  String get detailLastOpened => 'Son açılış';

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String daysSince(int days) {
    return 'Son kullanımdan bu yana geçen gün: $days';
  }

  @override
  String get detailDebuggableBody => 'Bilgisayardan incelenebilen test sürümü';

  @override
  String detailOldBody(int apiLevel) {
    return 'API düzeyi $apiLevel, bu yüzden yeni gizlilik korumaları atlanıyor';
  }

  @override
  String get detailTrustBody => 'Riskli sayısına ve bildirimlere dahil etme';

  @override
  String get detailNoPerms => 'Bu uygulama hassas izin istemiyor.';

  @override
  String get chipAllowed => 'İzinli';

  @override
  String get chipRequested => 'İstendi';

  @override
  String get chipNotAllowed => 'İzinli değil';

  @override
  String sensitiveNote(String why) {
    return 'Hassas: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Bulunan izleyiciler: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless, bir uygulamanın şu anda ne yaptığını değil, neler yapabileceğini gösterir. İzleyiciler uygulamanın manifestosundan bulunur, bu yüzden bazıları kaçabilir.';

  @override
  String get srcBuiltIn => 'Telefonunuzda yerleşik';

  @override
  String get srcUnknown =>
      'Bilinmiyor (bir dosyadan veya bilgisayardan yüklendi)';

  @override
  String get srcApk => 'Açtığınız bir APK dosyası';

  @override
  String get srcAdb => 'Bir bilgisayar (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Yükleyen: $name';
  }

  @override
  String get accessibilityLabel => 'Erişilebilirlik erişimi';

  @override
  String get adminLabel => 'Cihaz yöneticisi';

  @override
  String get notificationLabel => 'Bildirim erişimi';

  @override
  String get accessibilityWhy =>
      'Açık. Ekrandakini okuyabilir ve sizin yerinize işlem yapabilir.';

  @override
  String get adminWhy =>
      'Açık. Telefonu kilitleyebilir, silebilir ve kaldırılmayı engelleyebilir.';

  @override
  String get notificationWhy =>
      'Açık. Kodlar dahil tüm bildirimlerinizi okuyabilir.';

  @override
  String get grpMicrophone => 'Mikrofon';

  @override
  String get grpCamera => 'Kamera';

  @override
  String get grpLocation => 'Konum';

  @override
  String get grpContacts => 'Kişiler';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Arama kaydı';

  @override
  String get grpPhone => 'Telefon';

  @override
  String get grpCalendar => 'Takvim';

  @override
  String get grpBodySensors => 'Vücut sensörleri';

  @override
  String get grpActivity => 'Etkinlik';

  @override
  String get grpFiles => 'Dosyalar';

  @override
  String get grpOverlay => 'Üstte gösterme';

  @override
  String get grpInstalls => 'Yüklemeler';

  @override
  String get grpAppList => 'Uygulama listesi';

  @override
  String get lblCoarseLocation => 'Yaklaşık konum';

  @override
  String get lblFineLocation => 'Kesin konum';

  @override
  String get lblBackgroundLocation => 'Her zaman konum';

  @override
  String get lblAccounts => 'Hesaplar';

  @override
  String get lblReadSms => 'SMS okuma';

  @override
  String get lblReceiveSms => 'SMS alma';

  @override
  String get lblSendSms => 'SMS gönderme';

  @override
  String get lblPhoneState => 'Telefon durumu';

  @override
  String get lblCallPhone => 'Arama yapma';

  @override
  String get lblActivity => 'Fiziksel etkinlik';

  @override
  String get lblAllFiles => 'Tüm dosyalar';

  @override
  String get lblFilesMedia => 'Dosyalar ve medya';

  @override
  String get lblPhotos => 'Fotoğraflar';

  @override
  String get lblVideos => 'Videolar';

  @override
  String get lblAudioFiles => 'Ses dosyaları';

  @override
  String get lblOverlay => 'Diğer uygulamaların üzerinde gösterme';

  @override
  String get lblInstall => 'Başka uygulamalar yükleme';

  @override
  String get lblAppList => 'Tüm uygulamaları görme';

  @override
  String get whyMic => 'Ses kaydedebilir.';

  @override
  String get whyCamera => 'Kamerayı kullanabilir.';

  @override
  String get whyCoarse => 'Yaklaşık konumunuzu görebilir.';

  @override
  String get whyFine => 'Kesin konumunuzu görebilir.';

  @override
  String get whyBackground => 'Konumunuzu her zaman takip edebilir.';

  @override
  String get whyContacts => 'Kişilerinizi okuyabilir.';

  @override
  String get whyAccounts => 'Telefondaki hesapları görebilir.';

  @override
  String get whyReadSms => 'SMS’lerinizi okuyabilir.';

  @override
  String get whyReceiveSms => 'SMS’lerinizi alabilir.';

  @override
  String get whySendSms => 'SMS gönderebilir.';

  @override
  String get whyCallLog => 'Arama geçmişinizi okuyabilir.';

  @override
  String get whyPhoneState => 'Telefonunuzun durumunu görebilir.';

  @override
  String get whyCallPhone => 'Arama yapabilir.';

  @override
  String get whyCalendar => 'Takviminizi okuyabilir.';

  @override
  String get whyBody => 'Vücut sensörlerini okuyabilir.';

  @override
  String get whyActivity => 'Fiziksel etkinliğinizi görebilir.';

  @override
  String get whyAllFiles => 'Telefondaki tüm dosyalara erişebilir.';

  @override
  String get whyFilesMedia => 'Dosyaları ve medyayı okuyabilir.';

  @override
  String get whyPhotos => 'Fotoğraflarınızı okuyabilir.';

  @override
  String get whyVideos => 'Videolarınızı okuyabilir.';

  @override
  String get whyAudio => 'Ses dosyalarınızı okuyabilir.';

  @override
  String get whyOverlay => 'Diğer uygulamaların üzerinde görünebilir.';

  @override
  String get whyInstall => 'Başka uygulamalar yükleyebilir.';

  @override
  String get whyAppList => 'Telefondaki tüm uygulamaları görebilir.';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeBody => 'Varsayılan olarak telefonunuzu izler';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get settingsScanning => 'Tarama';

  @override
  String get settingsAlerts => 'Uygulama uyarıları';

  @override
  String get settingsAlertsBody =>
      'Yeni uygulamaları ve yeni izinleri bildirir. Yaklaşık 6 saatte bir kontrol eder.';

  @override
  String get settingsWeekly => 'Haftalık özet';

  @override
  String get settingsWeeklyBody =>
      'Haftada bir bildirim: puanınız ve nelerin değiştiği';

  @override
  String get settingsUsage => 'Kullanım erişimi';

  @override
  String get settingsUsageOn =>
      'Açık. Peekless, uygulamaların en son ne zaman açıldığını görebilir.';

  @override
  String get settingsUsageOff =>
      'Kapalı. İsteğe bağlı. Peekless’in artık kullanmadığınız uygulamaları bulmasını sağlar. Telefonunuzda kalır.';

  @override
  String get settingsSystemApps => 'Sistem uygulamalarını dahil et';

  @override
  String get settingsSystemAppsBody =>
      'Telefonda yerleşik uygulamaları da tara';

  @override
  String get settingsRescan => 'Şimdi tara';

  @override
  String get settingsRescanBody => 'Tüm uygulamaları yeniden kontrol et';

  @override
  String get settingsUpdates => 'Güncellemeler';

  @override
  String get settingsCheckUpdates => 'Güncellemeleri denetle';

  @override
  String settingsVersion(String version) {
    return 'Sürüm $version · yalnızca siz dokununca';
  }

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get settingsPrivacy => 'Gizlilik';

  @override
  String get settingsPrivacyBody => 'Her şey telefonunuzda kalır';

  @override
  String get settingsOpenSource => 'Açık kaynak';

  @override
  String get settingsOpenSourceBody => 'GPL-3.0 lisansı. Kodu GitHub’da görün';

  @override
  String get settingsDeveloped => 'Lumio Apps tarafından geliştirildi';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get languageSystem => 'Telefonun dilini kullan';

  @override
  String get updChecking => 'Güncellemeler denetleniyor...';

  @override
  String get updLatest => 'En son sürümü kullanıyorsunuz.';

  @override
  String get updFailed =>
      'Güncellemeler denetlenemedi. Daha sonra tekrar deneyin.';

  @override
  String get updTitle => 'Güncelleme mevcut';

  @override
  String updReady(String version) {
    return 'Sürüm $version yüklemeye hazır.';
  }

  @override
  String get updDownloadFailed =>
      'İndirme başarısız oldu. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get updInstall => 'İndir ve yükle';

  @override
  String get notifyDenied => 'Bunu açmak için Peekless’e bildirim izni verin.';

  @override
  String get settingChangeFailed => 'Bu ayar değiştirilemedi.';

  @override
  String get usageOpenFailed => 'Kullanım erişimi ayarları açılamadı.';

  @override
  String alertNewTitle(String name) {
    return 'Yeni uygulama: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Puan $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name değişti';
  }

  @override
  String alertNowHas(String list) {
    return 'Artık şunlara sahip: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Artık izinli: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Yeni izleyici: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Puan $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Daha fazla değişiklik';

  @override
  String alertMoreBody(int count) {
    return 'Daha fazla değişiklik: $count. Görmek için Peekless’i açın.';
  }

  @override
  String get weeklyTitle => 'Haftalık Peekless özetiniz';

  @override
  String weeklyUp(int score, int diff) {
    return 'Puan $score/100, geçen haftadan $diff yüksek.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Puan $score/100, geçen haftadan $diff düşük.';
  }

  @override
  String weeklySame(int score) {
    return 'Puan $score/100, geçen haftadan beri değişmedi.';
  }

  @override
  String weeklyScore(int score) {
    return 'Puan $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Yeni uygulamalar: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Kaldırılan uygulamalar: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Açılan izinler: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Yeni izleyiciler: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Bu hafta: $list.';
  }

  @override
  String get weeklyNone => 'Bu hafta değişiklik yok.';

  @override
  String weeklyRisky(int count) {
    return 'Riskli uygulamalar: $count.';
  }

  @override
  String get reportTitle => 'Peekless gizlilik raporu';

  @override
  String reportScore(int score, String level) {
    return 'Puan: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Kontrol edilen uygulamalar: $total. Riskli: $risky, Orta: $medium, Güvenli: $safe';
  }

  @override
  String get reportAttention => 'Dikkat gerektirenler:';

  @override
  String get reportFooter =>
      'Telefonumda Peekless ile kontrol edildi. Hiçbir yere hiçbir şey gönderilmedi.';

  @override
  String get trendTitle => 'Zaman içinde puan';

  @override
  String trendUp(int diff, int days) {
    return '$diff arttı (izlenen gün: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return '$diff azaldı (izlenen gün: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Değişiklik yok (izlenen gün: $days)';
  }

  @override
  String get settingsQuick => 'Hızlı erişim';

  @override
  String get quickWidget => 'Ana ekran widget’ı';

  @override
  String get quickWidgetBody => 'Gizlilik puanınızı ana ekranda gösterir';

  @override
  String get quickTile => 'Hızlı Ayarlar kutucuğu';

  @override
  String get quickTileBody => 'Puanınızı hızlı ayarlar panelinde görün';

  @override
  String get quickManual =>
      'Telefonunuz bunu otomatik ekleyemedi. Elle ekleyin: ana ekrana uzun basın (widget) ya da hızlı ayarlar panelini düzenleyin (kutucuk).';

  @override
  String get settingsExport => 'Raporu dışa aktar';

  @override
  String get settingsExportBody =>
      'Raporu PDF veya JSON dosyası olarak kaydedin ve paylaşın';

  @override
  String get exportFailed => 'Rapor oluşturulamadı.';

  @override
  String get settingsTrackerList => 'İzleyici listesi';

  @override
  String settingsTrackerListBody(int count) {
    return 'Güncellemek için dokunun. $count izleyici biliniyor. Yalnızca dokunduğunuzda.';
  }

  @override
  String get trackerListUpdating => 'İzleyici listesi güncelleniyor…';

  @override
  String trackerListUpdated(int count) {
    return 'İzleyici listesi güncellendi. $count izleyici biliniyor.';
  }

  @override
  String get trackerListCurrent => 'İzleyici listesi zaten güncel.';

  @override
  String get trackerListFailed =>
      'İzleyici listesi güncellenemedi. Bağlantınızı kontrol edin.';

  @override
  String get homeTagline => 'Sizi kimin gözetlediğini görün.';

  @override
  String get homeOverviewBody =>
      'Uygulamalarınızın her birini kullanabilen kısmı';

  @override
  String get settingsDeep => 'Derin tarama';

  @override
  String get settingsDeepBody =>
      'Gizli izleyicileri her uygulamanın kodunun içinde de arar. İlk tarama daha yavaştır. Telefonla gelen uygulamalar atlanır. Her şey telefonunuzda kalır.';

  @override
  String trackersFromCode(int count) {
    return 'Uygulamanın kodunda bulundu (kod simgesiyle işaretli): $count';
  }
}
