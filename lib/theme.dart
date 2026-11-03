import 'package:flutter/material.dart';

const ColorScheme _lightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF00685A),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF9EF2DE),
  onPrimaryContainer: Color(0xFF00201B),
  secondary: Color(0xFF4A635D),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFCCE8E0),
  onSecondaryContainer: Color(0xFF06201B),
  tertiary: Color(0xFF7A5900),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDEA6),
  onTertiaryContainer: Color(0xFF261900),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD6),
  onErrorContainer: Color(0xFF410002),
  surface: Color(0xFFF5FBF8),
  onSurface: Color(0xFF171D1B),
  onSurfaceVariant: Color(0xFF3F4946),
  outline: Color(0xFF6F7976),
  outlineVariant: Color(0xFFBFC9C5),
  surfaceContainerLowest: Color(0xFFFFFFFF),
  surfaceContainerLow: Color(0xFFEFF5F2),
  surfaceContainer: Color(0xFFE9F0ED),
  surfaceContainerHigh: Color(0xFFE3EAE7),
  surfaceContainerHighest: Color(0xFFDEE4E1),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFF2B322F),
  onInverseSurface: Color(0xFFECF2EF),
  inversePrimary: Color(0xFF5BDCC0),
);

const ColorScheme _darkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF34E8A5),
  onPrimary: Color(0xFF04130D),
  primaryContainer: Color(0xFF0F3A2E),
  onPrimaryContainer: Color(0xFF5FF0B5),
  secondary: Color(0xFFB1CCC4),
  onSecondary: Color(0xFF0B1D18),
  secondaryContainer: Color(0xFF12302A),
  onSecondaryContainer: Color(0xFFCFE6DD),
  tertiary: Color(0xFFF5B23C),
  onTertiary: Color(0xFF2A1A00),
  tertiaryContainer: Color(0xFF2A210E),
  onTertiaryContainer: Color(0xFFF5B23C),
  error: Color(0xFFFF6B5E),
  onError: Color(0xFF3A0A06),
  errorContainer: Color(0xFF3A1B1B),
  onErrorContainer: Color(0xFFFF8A7E),
  surface: Color(0xFF06110E),
  onSurface: Color(0xFFEAF6F1),
  onSurfaceVariant: Color(0xFF9DB8AE),
  outline: Color(0xFF5E7A70),
  outlineVariant: Color(0xFF17342B),
  surfaceContainerLowest: Color(0xFF040C0A),
  surfaceContainerLow: Color(0xFF0A1814),
  surfaceContainer: Color(0xFF0B1D18),
  surfaceContainerHigh: Color(0xFF10251F),
  surfaceContainerHighest: Color(0xFF17302A),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFFEAF6F1),
  onInverseSurface: Color(0xFF0B1D18),
  inversePrimary: Color(0xFF00685A),
);

ThemeData buildTheme(Brightness brightness) {
  final scheme = brightness == Brightness.light ? _lightScheme : _darkScheme;
  final dark = brightness == Brightness.dark;
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: scheme.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: scheme.surface,
      foregroundColor: scheme.onSurface,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: scheme.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      height: 72,
      backgroundColor: dark ? const Color(0xFF08150F) : scheme.surfaceContainer,
      surfaceTintColor: Colors.transparent,
      indicatorColor: scheme.primaryContainer,
      indicatorShape: const StadiumBorder(),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        final selected = states.contains(WidgetState.selected);
        return TextStyle(
          fontSize: 12,
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          color: selected ? scheme.primary : scheme.onSurfaceVariant,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        final selected = states.contains(WidgetState.selected);
        return IconThemeData(
          color: selected ? scheme.primary : scheme.onSurfaceVariant,
        );
      }),
    ),
    chipTheme: ChipThemeData(
      shape: const StadiumBorder(),
      side: BorderSide(color: scheme.outlineVariant),
      backgroundColor: scheme.surfaceContainer,
      selectedColor: scheme.primaryContainer,
      showCheckmark: false,
      labelStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: scheme.onSurface,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: const StadiumBorder(),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
