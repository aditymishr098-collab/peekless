import 'dart:ui' show DartPluginRegistrant;

import 'package:flutter/material.dart';

import 'background.dart';
import 'controller.dart';
import 'l10n/app_localizations.dart';
import 'l10n_resolve.dart';
import 'screens/shell.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await controller.loadPrefs();
  runApp(const PeeklessApp());
  controller.restoreAlerts();
  controller.scan();
}

/// Entry point of the background check. Android starts it in a separate
/// Flutter engine, so it must stay a top-level function with this pragma.
@pragma('vm:entry-point')
Future<void> backgroundMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  await runBackgroundCheck();
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
          locale: controller.locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeListResolutionCallback: resolveLocales,
          home: const AppShell(),
        );
      },
    );
  }
}
