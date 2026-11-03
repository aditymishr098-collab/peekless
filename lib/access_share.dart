import 'scoring.dart';

/// How many apps can use the most sensitive things. Shown on Home as
/// "Privacy overview". It only counts what is already known from the scan.
class AccessShare {
  const AccessShare({
    required this.total,
    required this.camera,
    required this.microphone,
    required this.location,
    required this.trackers,
  });

  final int total;
  final int camera;
  final int microphone;
  final int location;
  final int trackers;

  /// A part of the apps as a number from 0 to 1.
  double fraction(int count) => total == 0 ? 0 : count / total;
}

bool _allows(AppReport report, String group) {
  return report.findings.any(
    (f) => f.rule.group == group && f.status == PermStatus.allowed,
  );
}

AccessShare accessShare(List<AppReport> reports) {
  return AccessShare(
    total: reports.length,
    camera: reports.where((r) => _allows(r, 'Camera')).length,
    microphone: reports.where((r) => _allows(r, 'Microphone')).length,
    location: reports.where((r) => _allows(r, 'Location')).length,
    trackers: reports.where((r) => r.app.trackers.isNotEmpty).length,
  );
}
