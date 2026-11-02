import 'package:flutter/material.dart';

import '../updater.dart';

class UpdateDialog extends StatefulWidget {
  const UpdateDialog({super.key, required this.info});

  final UpdateInfo info;

  @override
  State<UpdateDialog> createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<UpdateDialog> {
  bool _busy = false;
  double? _progress;
  String? _error;

  Future<void> _start() async {
    setState(() {
      _busy = true;
      _progress = 0;
      _error = null;
    });
    try {
      await Updater.downloadAndInstall(widget.info, (value) {
        if (mounted) setState(() => _progress = value);
      });
      if (mounted) Navigator.of(context).pop();
    } catch (_) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = 'Download failed. Check your connection and try again.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final notes = widget.info.notes;
    return AlertDialog(
      title: const Text('Update available'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Version ${widget.info.version} is ready to install.'),
          if (notes.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(notes, maxLines: 6, overflow: TextOverflow.ellipsis),
          ],
          if (_busy) ...[
            const SizedBox(height: 16),
            LinearProgressIndicator(value: _progress),
          ],
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(_error!, style: TextStyle(color: scheme.error)),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: _busy ? null : () => Navigator.of(context).pop(),
          child: const Text('Later'),
        ),
        FilledButton(
          onPressed: _busy ? null : _start,
          child: const Text('Download and install'),
        ),
      ],
    );
  }
}
