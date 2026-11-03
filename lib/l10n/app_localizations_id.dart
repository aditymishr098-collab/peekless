// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get navHome => 'Beranda';

  @override
  String get navApps => 'Aplikasi';

  @override
  String get navPermissions => 'Izin';

  @override
  String get navChanges => 'Perubahan';

  @override
  String get navSettings => 'Pengaturan';

  @override
  String get levelRisky => 'Berisiko';

  @override
  String get levelMedium => 'Sedang';

  @override
  String get levelSafe => 'Aman';

  @override
  String get overallHigh => 'Risiko tinggi';

  @override
  String get overallMedium => 'Risiko sedang';

  @override
  String get overallLow => 'Risiko rendah';

  @override
  String get cancel => 'Batal';

  @override
  String get clear => 'Hapus';

  @override
  String get back => 'Kembali';

  @override
  String get later => 'Nanti';

  @override
  String get noneFound => 'Tidak ada yang ditemukan';

  @override
  String get scanning => 'Memindai...';

  @override
  String get scanFailed => 'Pemindaian gagal';

  @override
  String get tryAgain => 'Coba lagi';

  @override
  String get couldNotOpenSettings => 'Tidak dapat membuka pengaturan aplikasi.';

  @override
  String get homeShare => 'Bagikan laporan';

  @override
  String get homeRescan => 'Pindai ulang aplikasi';

  @override
  String homeAppsChecked(int count) {
    return 'Aplikasi yang diperiksa di ponsel ini: $count';
  }

  @override
  String homeAppsCounted(int counted, int trusted) {
    return 'Aplikasi yang dihitung: $counted, tepercaya: $trusted';
  }

  @override
  String get homeNeedsAttention => 'Perlu perhatian';

  @override
  String get homeSeeAll => 'Lihat semua';

  @override
  String get homeAllSafe =>
      'Tidak ada yang perlu diperhatikan. Semua aplikasi tampak aman.';

  @override
  String get homeShareFailed => 'Tidak dapat membagikan laporan.';

  @override
  String get scoreOf100 => 'dari 100';

  @override
  String scoreSemantics(int score) {
    return 'Skor privasi: $score dari 100';
  }

  @override
  String wizardCard(int count) {
    return 'Tinjau aplikasi dengan akses sensitif: $count';
  }

  @override
  String appsSubtitleAll(int count) {
    return 'Aplikasi: $count, yang paling berisiko lebih dulu';
  }

  @override
  String appsSubtitleFiltered(int shown, int total) {
    return 'Menampilkan $shown dari $total';
  }

  @override
  String get appsSearch => 'Cari aplikasi';

  @override
  String get appsNone => 'Aplikasi tidak ditemukan';

  @override
  String get chipMine => 'Aplikasi saya';

  @override
  String get chipSystem => 'Sistem';

  @override
  String get filterAll => 'Semua';

  @override
  String get filterTrackers => 'Dengan pelacak';

  @override
  String get filterSpecial => 'Akses khusus';

  @override
  String get filterNotStore => 'Bukan dari toko';

  @override
  String get filterOffline => 'Luring';

  @override
  String get filterTrusted => 'Tepercaya';

  @override
  String get permSubtitle => 'Siapa yang dapat memakai apa di ponsel ini';

  @override
  String get trackersSubtitle => 'Pelacak mana ada di aplikasi mana';

  @override
  String get segTrackers => 'Pelacak';

  @override
  String get noTrackers => 'Tidak ada pelacak yang dikenal.';

  @override
  String get noPerms => 'Tidak ada izin sensitif yang ditemukan.';

  @override
  String appsCount(int count) {
    return 'Aplikasi: $count';
  }

  @override
  String get changesSubtitle => 'Aplikasi baru dan perubahan izin';

  @override
  String get clearTitle => 'Hapus perubahan?';

  @override
  String get clearBody => 'Daftar perubahan akan dihapus dari ponsel ini.';

  @override
  String get changesEmpty =>
      'Belum ada perubahan. Peekless akan menampilkan di sini aplikasi baru dan yang dihapus, izin baru, dan pelacak baru.';

  @override
  String evInstalled(int score, String level) {
    return 'Terpasang. Skor: $score ($level).';
  }

  @override
  String get evRemoved => 'Dihapus.';

  @override
  String evAllowed(String label) {
    return 'Kini diizinkan: $label.';
  }

  @override
  String evRevoked(String label) {
    return 'Tidak lagi diizinkan: $label.';
  }

  @override
  String evTracker(String name) {
    return 'Pelacak baru ditemukan: $name.';
  }

  @override
  String evSpecialOn(String label) {
    return '$label: diaktifkan.';
  }

  @override
  String evSpecialOff(String label) {
    return '$label: dinonaktifkan.';
  }

  @override
  String get checksTitle => 'Pemeriksaan keamanan';

  @override
  String get checksIntro =>
      'Hal-hal yang patut dilihat lagi. Ketuk pemeriksaan untuk melihat aplikasinya.';

  @override
  String get checkUnusedTitle => 'Aplikasi tak terpakai dengan akses sensitif';

  @override
  String get checkDebuggableTitle => 'Build debug';

  @override
  String get checkOfflineTitle => 'Aplikasi luring';

  @override
  String get checkAccessibilityDesc =>
      'Aplikasi ini dapat membaca layar Anda dan mengetuk atas nama Anda.';

  @override
  String get checkAdminDesc =>
      'Aplikasi ini dapat mengunci atau menghapus isi ponsel dan menghalangi pencopotan.';

  @override
  String get checkNotificationDesc =>
      'Aplikasi ini dapat membaca semua notifikasi Anda, termasuk kode.';

  @override
  String checkUnusedDesc(int days) {
    return 'Tidak dibuka selama $days hari, tetapi masih dapat memakai izin sensitif. Pertimbangkan untuk menghapusnya.';
  }

  @override
  String get checkNotStoreDesc =>
      'Dipasang dari file atau komputer. Tidak ada yang memeriksanya untuk Anda.';

  @override
  String get checkDebuggableDesc =>
      'Build uji yang dapat diperiksa dari komputer.';

  @override
  String get checkOldDesc =>
      'Aplikasi ini melewati perlindungan privasi baru Android.';

  @override
  String get checkOfflineDesc =>
      'Tidak punya izin internet, jadi tidak dapat mengirim data secara daring.';

  @override
  String get usagePromptBody =>
      'Opsional. Aktifkan akses penggunaan untuk menemukan aplikasi yang sudah lama tidak Anda buka tetapi masih dapat memakai mikrofon, lokasi, atau kontak Anda. Data tidak keluar dari ponsel Anda.';

  @override
  String get usagePromptButton => 'Aktifkan akses penggunaan';

  @override
  String get securityNone => 'Tidak ada catatan keamanan di ponsel ini.';

  @override
  String securityOffline(int count) {
    return 'Aplikasi yang berjalan sepenuhnya luring: $count';
  }

  @override
  String get fixWizardTitle => 'Panduan perbaikan';

  @override
  String wizardStep(int index, int total) {
    return 'Aplikasi $index dari $total';
  }

  @override
  String get wizardQuestion =>
      'Apakah aplikasi ini benar-benar membutuhkannya?';

  @override
  String get wizardHint =>
      'Ketuk “Buka pengaturan aplikasi”, lalu Izin, dan matikan yang tidak dibutuhkan aplikasi.';

  @override
  String get openAppSettings => 'Buka pengaturan aplikasi';

  @override
  String get trustApp => 'Saya percaya aplikasi ini';

  @override
  String get nextApp => 'Aplikasi berikutnya';

  @override
  String get finish => 'Selesai';

  @override
  String get wizardDone => 'Semua sudah ditinjau';

  @override
  String get wizardNothing => 'Tidak ada yang perlu ditinjau';

  @override
  String get wizardNothingBody =>
      'Saat ini tidak ada aplikasi dengan akses sensitif.';

  @override
  String get wizardRescanBody => 'Pindai ulang untuk melihat skor baru Anda.';

  @override
  String get rescanFinish => 'Pindai ulang dan selesai';

  @override
  String get wizardRequested => 'diminta, belum diizinkan';

  @override
  String scoreTrackers(int count) {
    return 'Pelacak yang dikenal: $count';
  }

  @override
  String get scoreDebuggable => 'Build debug';

  @override
  String get scoreOldTarget => 'Dibuat untuk Android yang sangat lama';

  @override
  String unusualFor(String groups) {
    return 'Tidak lazim untuk aplikasi jenis ini: $groups';
  }

  @override
  String get noteRequested => 'diminta, dihitung setengah';

  @override
  String get noteAllowed => 'diizinkan';

  @override
  String noteTrackers(int points, int max) {
    return '$points per pelacak, maksimum $max';
  }

  @override
  String get noteTurnedOn => 'aktif';

  @override
  String get noteDebuggable => 'dapat diperiksa dari komputer';

  @override
  String noteApi(int apiLevel) {
    return 'level API $apiLevel';
  }

  @override
  String get noteExtra => 'pengurangan tambahan';

  @override
  String get explainTitle => 'Cara kerja skor';

  @override
  String get explainIntro =>
      'Setiap aplikasi dimulai dari 100. Poin dikurangi sesuai apa yang dapat dilakukan aplikasi.';

  @override
  String get explainStart => 'Awal';

  @override
  String get explainNothing => 'Tidak ada pengurangan';

  @override
  String get explainNothingNote =>
      'Tidak ada izin sensitif atau pelacak yang dikenal';

  @override
  String get explainScore => 'Skor';

  @override
  String get explainRules => 'Aturan';

  @override
  String get rule1 =>
      'Dalam setiap kelompok, hanya izin terberat yang dihitung. Misalnya lokasi tepat dan perkiraan dihitung sekali.';

  @override
  String get rule2 =>
      'Izin khusus (semua file, tampil di atas aplikasi lain, memasang aplikasi) dihitung setengah jika aplikasi hanya memintanya.';

  @override
  String rule3(int points, int max) {
    return 'Setiap pelacak yang dikenal mengurangi $points poin, hingga maksimum $max.';
  }

  @override
  String rule4(int a, int b, int c) {
    return 'Akses khusus yang aktif mengurangi poin: aksesibilitas $a, admin perangkat $b, akses notifikasi $c.';
  }

  @override
  String rule5(int a, int b) {
    return 'Build debug mengurangi $a. Aplikasi yang dibuat untuk Android 7 atau lebih lama mengurangi $b.';
  }

  @override
  String rule6(int points, int maxGroups) {
    return 'Jika izin tidak lazim untuk jenis aplikasi tersebut (misalnya mikrofon pada senter), dikurangi $points poin lagi, untuk paling banyak $maxGroups kelompok izin.';
  }

  @override
  String get rule7 =>
      '70 atau lebih: Aman. 40 sampai 69: Sedang. Di bawah 40: Berisiko.';

  @override
  String get explainFooter =>
      'Skor menunjukkan apa yang dapat dilakukan aplikasi, bukan apa yang sedang dilakukannya.';

  @override
  String get howScore => 'Bagaimana skor ini dihitung?';

  @override
  String summaryTrackers(int count) {
    return 'Pelacak yang dikenal: $count.';
  }

  @override
  String get summaryNone =>
      'Tidak ada izin sensitif atau pelacak yang dikenal.';

  @override
  String metaTrackers(int count) {
    return 'Pelacak: $count';
  }

  @override
  String get metaNone => 'Tidak ada izin sensitif';

  @override
  String get detailSecurity => 'Keamanan';

  @override
  String get detailSource => 'Sumber';

  @override
  String get detailInternet => 'Internet';

  @override
  String get detailInternetYes => 'Dapat mengakses internet';

  @override
  String get detailOffline => 'Luring';

  @override
  String get detailOfflineBody =>
      'Tidak punya izin internet, jadi tidak dapat mengirim data secara daring';

  @override
  String get detailLastOpened => 'Terakhir dibuka';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String daysSince(int days) {
    return 'Hari sejak terakhir dipakai: $days';
  }

  @override
  String get detailDebuggableBody =>
      'Build uji yang dapat diperiksa dari komputer';

  @override
  String detailOldBody(int apiLevel) {
    return 'Level API $apiLevel, sehingga perlindungan privasi baru dilewati';
  }

  @override
  String get detailTrustBody => 'Jangan hitung di Berisiko dan di peringatan';

  @override
  String get detailNoPerms => 'Aplikasi ini tidak meminta izin sensitif.';

  @override
  String get chipAllowed => 'Diizinkan';

  @override
  String get chipRequested => 'Diminta';

  @override
  String get chipNotAllowed => 'Tidak diizinkan';

  @override
  String sensitiveNote(String why) {
    return 'Sensitif: $why';
  }

  @override
  String detailTrackers(int count) {
    return 'Pelacak yang ditemukan: $count';
  }

  @override
  String get detailDisclaimer =>
      'Peekless menunjukkan apa yang dapat dilakukan aplikasi, bukan apa yang sedang dilakukannya. Pelacak dideteksi dari manifes aplikasi, jadi sebagian mungkin terlewat.';

  @override
  String get srcBuiltIn => 'Bawaan ponsel Anda';

  @override
  String get srcUnknown => 'Tidak diketahui (dipasang dari file atau komputer)';

  @override
  String get srcApk => 'File APK yang Anda buka';

  @override
  String get srcAdb => 'Komputer (adb)';

  @override
  String srcInstalledBy(String name) {
    return 'Dipasang oleh $name';
  }

  @override
  String get accessibilityLabel => 'Akses aksesibilitas';

  @override
  String get adminLabel => 'Admin perangkat';

  @override
  String get notificationLabel => 'Akses notifikasi';

  @override
  String get accessibilityWhy =>
      'Aktif. Dapat membaca isi layar dan bertindak atas nama Anda.';

  @override
  String get adminWhy =>
      'Aktif. Dapat mengunci ponsel, menghapus isinya, dan menghalangi pencopotan.';

  @override
  String get notificationWhy =>
      'Aktif. Dapat membaca semua notifikasi Anda, termasuk kode.';

  @override
  String get grpMicrophone => 'Mikrofon';

  @override
  String get grpCamera => 'Kamera';

  @override
  String get grpLocation => 'Lokasi';

  @override
  String get grpContacts => 'Kontak';

  @override
  String get grpSms => 'SMS';

  @override
  String get grpCallLog => 'Log panggilan';

  @override
  String get grpPhone => 'Telepon';

  @override
  String get grpCalendar => 'Kalender';

  @override
  String get grpBodySensors => 'Sensor tubuh';

  @override
  String get grpActivity => 'Aktivitas';

  @override
  String get grpFiles => 'File';

  @override
  String get grpOverlay => 'Tampil di atas';

  @override
  String get grpInstalls => 'Pemasangan';

  @override
  String get grpAppList => 'Daftar aplikasi';

  @override
  String get lblCoarseLocation => 'Lokasi perkiraan';

  @override
  String get lblFineLocation => 'Lokasi tepat';

  @override
  String get lblBackgroundLocation => 'Lokasi sepanjang waktu';

  @override
  String get lblAccounts => 'Akun';

  @override
  String get lblReadSms => 'Membaca SMS';

  @override
  String get lblReceiveSms => 'Menerima SMS';

  @override
  String get lblSendSms => 'Mengirim SMS';

  @override
  String get lblPhoneState => 'Status telepon';

  @override
  String get lblCallPhone => 'Melakukan panggilan';

  @override
  String get lblActivity => 'Aktivitas fisik';

  @override
  String get lblAllFiles => 'Semua file';

  @override
  String get lblFilesMedia => 'File dan media';

  @override
  String get lblPhotos => 'Foto';

  @override
  String get lblVideos => 'Video';

  @override
  String get lblAudioFiles => 'File audio';

  @override
  String get lblOverlay => 'Tampil di atas aplikasi lain';

  @override
  String get lblInstall => 'Memasang aplikasi lain';

  @override
  String get lblAppList => 'Melihat semua aplikasi';

  @override
  String get whyMic => 'Dapat merekam suara.';

  @override
  String get whyCamera => 'Dapat memakai kamera.';

  @override
  String get whyCoarse => 'Dapat melihat perkiraan lokasi Anda.';

  @override
  String get whyFine => 'Dapat melihat lokasi tepat Anda.';

  @override
  String get whyBackground => 'Dapat melacak lokasi Anda sepanjang waktu.';

  @override
  String get whyContacts => 'Dapat membaca kontak Anda.';

  @override
  String get whyAccounts => 'Dapat melihat akun di ponsel.';

  @override
  String get whyReadSms => 'Dapat membaca SMS Anda.';

  @override
  String get whyReceiveSms => 'Dapat menerima SMS Anda.';

  @override
  String get whySendSms => 'Dapat mengirim SMS.';

  @override
  String get whyCallLog => 'Dapat membaca riwayat panggilan Anda.';

  @override
  String get whyPhoneState => 'Dapat melihat status ponsel Anda.';

  @override
  String get whyCallPhone => 'Dapat melakukan panggilan.';

  @override
  String get whyCalendar => 'Dapat membaca kalender Anda.';

  @override
  String get whyBody => 'Dapat membaca sensor tubuh.';

  @override
  String get whyActivity => 'Dapat melihat aktivitas fisik Anda.';

  @override
  String get whyAllFiles => 'Dapat mengakses semua file di ponsel.';

  @override
  String get whyFilesMedia => 'Dapat membaca file dan media.';

  @override
  String get whyPhotos => 'Dapat membaca foto Anda.';

  @override
  String get whyVideos => 'Dapat membaca video Anda.';

  @override
  String get whyAudio => 'Dapat membaca file audio Anda.';

  @override
  String get whyOverlay => 'Dapat tampil di atas aplikasi lain.';

  @override
  String get whyInstall => 'Dapat memasang aplikasi lain.';

  @override
  String get whyAppList => 'Dapat melihat semua aplikasi di ponsel.';

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeBody => 'Secara bawaan mengikuti ponsel Anda';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settingsScanning => 'Pemindaian';

  @override
  String get settingsAlerts => 'Peringatan aplikasi';

  @override
  String get settingsAlertsBody =>
      'Memberi tahu tentang aplikasi baru dan izin baru. Memeriksa sekitar setiap 6 jam.';

  @override
  String get settingsWeekly => 'Ringkasan mingguan';

  @override
  String get settingsWeeklyBody =>
      'Satu notifikasi per minggu berisi skor Anda dan apa yang berubah';

  @override
  String get settingsUsage => 'Akses penggunaan';

  @override
  String get settingsUsageOn =>
      'Aktif. Peekless dapat melihat kapan aplikasi terakhir dibuka.';

  @override
  String get settingsUsageOff =>
      'Nonaktif. Opsional. Memungkinkan Peekless menemukan aplikasi yang tidak lagi Anda pakai. Tetap di ponsel Anda.';

  @override
  String get settingsSystemApps => 'Sertakan aplikasi sistem';

  @override
  String get settingsSystemAppsBody => 'Pindai juga aplikasi bawaan ponsel';

  @override
  String get settingsRescan => 'Pindai sekarang';

  @override
  String get settingsRescanBody => 'Periksa ulang semua aplikasi';

  @override
  String get settingsUpdates => 'Pembaruan';

  @override
  String get settingsCheckUpdates => 'Periksa pembaruan';

  @override
  String settingsVersion(String version) {
    return 'Versi $version · hanya saat Anda mengetuk';
  }

  @override
  String get settingsAbout => 'Tentang';

  @override
  String get settingsPrivacy => 'Privasi';

  @override
  String get settingsPrivacyBody => 'Semuanya tetap di ponsel Anda';

  @override
  String get settingsOpenSource => 'Sumber terbuka';

  @override
  String get settingsOpenSourceBody =>
      'Lisensi GPL-3.0. Lihat kodenya di GitHub';

  @override
  String get settingsDeveloped => 'Dikembangkan oleh Lumio Apps';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get languageSystem => 'Ikuti bahasa ponsel';

  @override
  String get updChecking => 'Memeriksa pembaruan...';

  @override
  String get updLatest => 'Anda memakai versi terbaru.';

  @override
  String get updFailed => 'Tidak dapat memeriksa pembaruan. Coba lagi nanti.';

  @override
  String get updTitle => 'Pembaruan tersedia';

  @override
  String updReady(String version) {
    return 'Versi $version siap dipasang.';
  }

  @override
  String get updDownloadFailed =>
      'Unduhan gagal. Periksa koneksi Anda dan coba lagi.';

  @override
  String get updInstall => 'Unduh dan pasang';

  @override
  String get notifyDenied =>
      'Izinkan notifikasi untuk Peekless guna mengaktifkan ini.';

  @override
  String get settingChangeFailed => 'Tidak dapat mengubah pengaturan ini.';

  @override
  String get usageOpenFailed =>
      'Tidak dapat membuka pengaturan akses penggunaan.';

  @override
  String alertNewTitle(String name) {
    return 'Aplikasi baru: $name';
  }

  @override
  String alertNewBody(int score, String level, String summary) {
    return 'Skor $score ($level). $summary';
  }

  @override
  String alertChangedTitle(String name) {
    return '$name berubah';
  }

  @override
  String alertNowHas(String list) {
    return 'Sekarang memiliki: $list.';
  }

  @override
  String alertNowAllowed(String list) {
    return 'Kini diizinkan: $list.';
  }

  @override
  String alertNewTracker(String list) {
    return 'Pelacak baru: $list.';
  }

  @override
  String alertScore(int score, String level) {
    return 'Skor $score ($level).';
  }

  @override
  String get alertMoreTitle => 'Perubahan lainnya';

  @override
  String alertMoreBody(int count) {
    return 'Perubahan lainnya: $count. Buka Peekless untuk melihatnya.';
  }

  @override
  String get weeklyTitle => 'Ringkasan mingguan Peekless Anda';

  @override
  String weeklyUp(int score, int diff) {
    return 'Skor $score/100, naik $diff dari minggu lalu.';
  }

  @override
  String weeklyDown(int score, int diff) {
    return 'Skor $score/100, turun $diff dari minggu lalu.';
  }

  @override
  String weeklySame(int score) {
    return 'Skor $score/100, tidak berubah sejak minggu lalu.';
  }

  @override
  String weeklyScore(int score) {
    return 'Skor $score/100.';
  }

  @override
  String weeklyNewApps(int count) {
    return 'Aplikasi baru: $count';
  }

  @override
  String weeklyRemoved(int count) {
    return 'Aplikasi dihapus: $count';
  }

  @override
  String weeklyAllowed(int count) {
    return 'Izin diaktifkan: $count';
  }

  @override
  String weeklyTrackers(int count) {
    return 'Pelacak baru: $count';
  }

  @override
  String weeklyChanges(String list) {
    return 'Minggu ini: $list.';
  }

  @override
  String get weeklyNone => 'Tidak ada perubahan minggu ini.';

  @override
  String weeklyRisky(int count) {
    return 'Aplikasi berisiko: $count.';
  }

  @override
  String get reportTitle => 'Laporan privasi Peekless';

  @override
  String reportScore(int score, String level) {
    return 'Skor: $score/100 ($level)';
  }

  @override
  String reportCounts(int total, int risky, int medium, int safe) {
    return 'Aplikasi diperiksa: $total. Berisiko: $risky, Sedang: $medium, Aman: $safe';
  }

  @override
  String get reportAttention => 'Perlu perhatian:';

  @override
  String get reportFooter =>
      'Diperiksa di ponsel saya dengan Peekless. Tidak ada yang dikirim ke mana pun.';

  @override
  String get trendTitle => 'Skor dari waktu ke waktu';

  @override
  String trendUp(int diff, int days) {
    return 'Naik $diff (hari terpantau: $days)';
  }

  @override
  String trendDown(int diff, int days) {
    return 'Turun $diff (hari terpantau: $days)';
  }

  @override
  String trendSame(int days) {
    return 'Tidak berubah (hari terpantau: $days)';
  }

  @override
  String get settingsQuick => 'Akses cepat';

  @override
  String get quickWidget => 'Widget layar utama';

  @override
  String get quickWidgetBody => 'Tampilkan skor privasi Anda di layar utama';

  @override
  String get quickTile => 'Ubin Pengaturan Cepat';

  @override
  String get quickTileBody => 'Lihat skor Anda di panel pengaturan cepat';

  @override
  String get quickManual =>
      'Ponsel Anda tidak bisa menambahkannya otomatis. Tambahkan manual: tekan lama layar utama (widget) atau ubah panel pengaturan cepat (ubin).';

  @override
  String get settingsExport => 'Ekspor laporan';

  @override
  String get settingsExportBody =>
      'Simpan laporan sebagai file PDF atau JSON dan bagikan';

  @override
  String get exportFailed => 'Tidak dapat membuat laporan.';

  @override
  String get settingsTrackerList => 'Daftar pelacak';

  @override
  String settingsTrackerListBody(int count) {
    return 'Ketuk untuk memperbarui. $count pelacak dikenal. Hanya saat Anda mengetuk.';
  }

  @override
  String get trackerListUpdating => 'Memperbarui daftar pelacak…';

  @override
  String trackerListUpdated(int count) {
    return 'Daftar pelacak diperbarui. $count pelacak dikenal.';
  }

  @override
  String get trackerListCurrent => 'Daftar pelacak sudah yang terbaru.';

  @override
  String get trackerListFailed =>
      'Tidak dapat memperbarui daftar pelacak. Periksa koneksi Anda.';

  @override
  String get homeTagline => 'Lihat siapa yang mengintip Anda.';

  @override
  String get homeOverviewBody =>
      'Persentase aplikasi Anda yang dapat menggunakan masing-masing';

  @override
  String get settingsDeep => 'Pemindaian mendalam';

  @override
  String get settingsDeepBody =>
      'Cari juga pelacak tersembunyi di dalam kode setiap aplikasi. Pemindaian pertama lebih lambat. Aplikasi bawaan ponsel dilewati. Semuanya tetap di ponsel Anda.';

  @override
  String trackersFromCode(int count) {
    return 'Ditemukan di dalam kode aplikasi (ditandai ikon kode): $count';
  }
}
