import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:open_filex/open_filex.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

class UpdateInfo {
  const UpdateInfo({
    required this.version,
    required this.apkUrl,
    required this.notes,
  });

  final String version;
  final String apkUrl;
  final String notes;
}

/// In-app updater. It only talks to GitHub when the user taps
/// "Check for updates" and then "Download and install".
class Updater {
  static const String repo = 'aditymishr098-collab/peekless';

  static Future<String> currentVersion() async {
    final info = await PackageInfo.fromPlatform();
    return info.version;
  }

  /// Returns null when the installed version is already the latest.
  static Future<UpdateInfo?> check() async {
    final response = await http
        .get(
          Uri.https('api.github.com', '/repos/$repo/releases/latest'),
          headers: const {'Accept': 'application/vnd.github+json'},
        )
        .timeout(const Duration(seconds: 15));
    if (response.statusCode != 200) {
      throw HttpException('GitHub returned ${response.statusCode}');
    }
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final tag = ((json['tag_name'] as String?) ?? '').replaceFirst(RegExp('^v'), '');
    final assets = ((json['assets'] as List<dynamic>?) ?? const <dynamic>[])
        .cast<Map<String, dynamic>>();
    if (tag.isEmpty) return null;

    final current = await currentVersion();
    if (!isNewer(tag, current)) return null;

    final url = pickApk(assets, tag);
    if (url == null) return null;
    await cleanup();

    return UpdateInfo(
      version: tag,
      apkUrl: url,
      notes: ((json['body'] as String?) ?? '').trim(),
    );
  }

  /// Only downloads from GitHub are accepted.
  static bool isTrustedUrl(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null || uri.scheme != 'https') return false;
    final host = uri.host.toLowerCase();
    return host == 'github.com' || host.endsWith('.github.com') || host.endsWith('.githubusercontent.com');
  }

  /// Chooses the APK of a release. The file named peekless-<version>.apk comes
  /// first. With several APKs, the 64-bit ARM one is preferred. Returns null
  /// when there is no APK on GitHub.
  static String? pickApk(List<Map<String, dynamic>> assets, String tag) {
    final apks = <MapEntry<String, String>>[];
    for (final asset in assets) {
      final name = (asset['name'] as String?) ?? '';
      final url = (asset['browser_download_url'] as String?) ?? '';
      if (name.endsWith('.apk') && isTrustedUrl(url)) {
        apks.add(MapEntry(name, url));
      }
    }
    if (apks.isEmpty) return null;
    for (final apk in apks) {
      if (apk.key == 'peekless-$tag.apk') return apk.value;
    }
    if (apks.length == 1) return apks.first.value;
    for (final apk in apks) {
      if (apk.key.contains('arm64')) return apk.value;
    }
    return apks.first.value;
  }

  /// Deletes APK files that earlier downloads left in the cache.
  static Future<void> cleanup() async {
    try {
      final dir = await getTemporaryDirectory();
      await for (final entity in dir.list()) {
        if (entity is File) {
          final name = entity.uri.pathSegments.last;
          if (name.startsWith('peekless-') && name.endsWith('.apk')) {
            await entity.delete();
          }
        }
      }
    } catch (_) {
      // Old files are only wasted space. This must never stop an update.
    }
  }

  static bool isNewer(String candidate, String current) {
    List<int> parse(String v) => v
        .split('+')
        .first
        .split('.')
        .map((part) => int.tryParse(part) ?? 0)
        .toList();
    final a = parse(candidate);
    final b = parse(current);
    final length = a.length > b.length ? a.length : b.length;
    for (var i = 0; i < length; i++) {
      final x = i < a.length ? a[i] : 0;
      final y = i < b.length ? b[i] : 0;
      if (x != y) return x > y;
    }
    return false;
  }

  /// Downloads the APK and opens the Android installer. Because the new APK
  /// is signed with the same key, Android updates the app in place and keeps
  /// the user's data.
  static Future<void> downloadAndInstall(
    UpdateInfo info,
    void Function(double progress) onProgress,
  ) async {
    if (!isTrustedUrl(info.apkUrl)) {
      throw const HttpException('The download is not from GitHub');
    }
    await cleanup();
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/peekless-${info.version}.apk');
    final client = http.Client();
    try {
      final response = await client.send(http.Request('GET', Uri.parse(info.apkUrl)));
      if (response.statusCode != 200) {
        throw HttpException('Download returned ${response.statusCode}');
      }
      final total = response.contentLength ?? 0;
      var received = 0;
      final sink = file.openWrite();
      try {
        await for (final chunk in response.stream) {
          sink.add(chunk);
          received += chunk.length;
          if (total > 0) onProgress(received / total);
        }
      } finally {
        await sink.close();
      }
    } finally {
      client.close();
    }
    await OpenFilex.open(file.path, type: 'application/vnd.android.package-archive');
  }
}
