import 'dart:ui' show PlatformDispatcher;

import 'package:flutter/widgets.dart';

import 'l10n/app_localizations.dart';

/// Turns a saved language code such as "de" or "zh_Hant" into a Locale.
/// Null (or "system") means: follow the phone.
Locale? localeFromCode(String? code) {
  if (code == null || code.isEmpty || code == 'system') return null;
  final parts = code.split('_');
  return Locale.fromSubtags(
    languageCode: parts[0],
    scriptCode: parts.length > 1 ? parts[1] : null,
  );
}

/// The code to save for a Locale, the opposite of [localeFromCode].
String codeFromLocale(Locale locale) {
  final script = locale.scriptCode;
  return script == null ? locale.languageCode : '${locale.languageCode}_$script';
}

/// Picks the best supported locale. A language that Peekless does not have
/// falls back to English (not to the first language in the list).
Locale resolveLocales(List<Locale>? preferred, Iterable<Locale> supported) {
  final languages = supported.map((l) => l.languageCode).toSet();
  final usable = (preferred ?? const <Locale>[])
      .where((l) => languages.contains(l.languageCode))
      .toList();
  if (usable.isEmpty) return const Locale('en');
  return basicLocaleListResolution(usable, supported);
}

/// The translations for [locale], or for the phone language when it is null.
/// It works without a BuildContext, so the background check can use it.
/// A language that Peekless does not have falls back to English.
AppLocalizations l10nFor(Locale? locale) {
  final wanted = locale ?? PlatformDispatcher.instance.locale;
  final resolved = resolveLocales(<Locale>[wanted], AppLocalizations.supportedLocales);
  return lookupAppLocalizations(resolved);
}
