/// Known app stores, by the package name Android reports as the installer.
const Map<String, String> storeNames = {
  'com.android.vending': 'Google Play',
  'com.sec.android.app.samsungapps': 'Galaxy Store',
  'com.huawei.appmarket': 'Huawei AppGallery',
  'com.xiaomi.mipicks': 'Xiaomi GetApps',
  'com.xiaomi.market': 'Xiaomi GetApps',
  'com.amazon.venezia': 'Amazon Appstore',
  'org.fdroid.fdroid': 'F-Droid',
  'org.fdroid.basic': 'F-Droid',
  'com.aurora.store': 'Aurora Store',
  'com.oppo.market': 'OPPO App Market',
  'com.heytap.market': 'HeyTap App Market',
  'com.vivo.appstore': 'vivo App Store',
};

/// The system screens that install an APK file you opened.
const Set<String> fileInstallers = {
  'com.google.android.packageinstaller',
  'com.android.packageinstaller',
  'com.miui.packageinstaller',
  'com.samsung.android.packageinstaller',
};

const String adbInstaller = 'com.android.shell';

/// True when the app came from a file or from a computer, not from a store.
/// Nobody checked such an app for you. Apps built into the phone are not counted.
bool installedOutsideStore(String? installer, {required bool isSystem}) {
  if (isSystem) return false;
  if (installer == null || installer.isEmpty) return true;
  return fileInstallers.contains(installer) || installer == adbInstaller;
}
