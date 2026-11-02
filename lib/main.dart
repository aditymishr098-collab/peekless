import 'package:flutter/material.dart';

import 'controller.dart';
import 'screens/shell.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await controller.loadPrefs();
  runApp(const PeeklessApp());
  controller.scan();
}

class PeeklessApp extends StatelessWidget {
  const PeeklessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        return MaterialApp(
          title: 'Peekless',
          debugShowCheckedModeBanner: false,
          theme: buildTheme(Brightness.light),
          darkTheme: buildTheme(Brightness.dark),
          themeMode: controller.themeMode,
          home: const AppShell(),
        );
      },
    );
  }
}
