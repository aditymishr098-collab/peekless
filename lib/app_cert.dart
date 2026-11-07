/// The certificate an app was signed with, as the Android side reports it.
class AppCert {
  const AppCert({
    required this.sha256,
    required this.subject,
    required this.debug,
    required this.expires,
    required this.signers,
  });

  /// Reads the map from the Android side. Returns null when it is empty or
  /// has no usable fingerprint.
  static AppCert? fromMap(Map<Object?, Object?>? map) {
    if (map == null) return null;
    final sha = map['sha256'];
    if (sha is! String || sha.isEmpty) return null;
    return AppCert(
      sha256: sha,
      subject: (map['subject'] as String?) ?? '',
      debug: (map['debug'] as bool?) ?? false,
      expires: (map['expires'] as int?) ?? 0,
      signers: (map['signers'] as int?) ?? 1,
    );
  }

  /// Hex pairs separated by colons, for example `AB:CD:...`.
  final String sha256;
  final String subject;

  /// True when the app is signed with the standard Android debug key.
  final bool debug;
  final int expires;
  final int signers;

  /// A short form for the list row: the first 4 and last 4 byte pairs.
  String get shortSha {
    final parts = sha256.split(':');
    if (parts.length <= 8) return sha256;
    return '${parts.take(4).join(':')}:…:${parts.skip(parts.length - 4).join(':')}';
  }
}
