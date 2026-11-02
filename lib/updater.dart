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
  static const String repo = 'lumio-apps/peekless';

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
    final apks = assets
        .where((a) => ((a['name'] as String?) ?? '').endsWith('.apk'))
        .toList();
    if (tag.isEmpty || apks.isEmpty) return null;

    final current = await currentVersion();
    if (!isNewer(tag, current)) return null;

    return UpdateInfo(
      version: tag,
      apkUrl: apks.first['browser_download_url'] as String,
      notes: ((json['body'] as String?) ?? '').trim(),
    );
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
