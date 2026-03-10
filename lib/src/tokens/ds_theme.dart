import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:flutter/material.dart';

abstract class DsTheme {
  /// Tema principal de la aplicación (Light).
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: DsColors.lightBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: DsColors.blue,
      primary: DsColors.blue,
      secondary: DsColors.yellow,
      error: DsColors.red,
      surface: DsColors.lightSurface,
    ),
    textTheme: _textTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    appBarTheme: _appBarTheme,
    cardTheme: _cardTheme,
    inputDecorationTheme: _inputDecorationTheme,
  );

  /// Tema oscuro de la aplicación (Dark — azul noche).
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: DsColors.darkBackground,
    colorScheme: ColorScheme.fromSeed(
      seedColor: DsColors.blue,
      primary: DsColors.blue,
      secondary: DsColors.yellow,
      error: DsColors.red,
      surface: DsColors.darkSurface,
      brightness: Brightness.dark,
    ),
    textTheme: _darkTextTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    appBarTheme: _darkAppBarTheme,
    cardTheme: _darkCardTheme,
    inputDecorationTheme: _darkInputDecorationTheme,
  );

  /// Tema de texto Light — títulos negros, body oscuro, labels suaves.
  static TextTheme get _textTheme => const TextTheme(
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w900,
      color: DsColors.lightTextPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w900,
      color: DsColors.lightTextPrimary,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w900,
      color: DsColors.lightTextPrimary,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontFamily: 'ArchivoBlack',
      fontWeight: FontWeight.w700,
      color: DsColors.lightTextPrimary,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'ArchivoBlack',
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: DsColors.lightTextPrimary,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontFamily: 'ArchivoBlack',
      fontWeight: FontWeight.w700,
      color: DsColors.lightTextPrimary,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: DsColors.lightTextPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: DsColors.lightTextPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: DsColors.lightTextPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: DsColors.lightTextPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w400,
      color: DsColors.lightTextPrimary,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: DsColors.lightTextSecondary,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: DsColors.lightTextPrimary,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: DsColors.lightTextSecondary,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w500,
      color: DsColors.lightTextSecondary,
    ),
  );

  /// Tema de texto Dark — títulos blancos, body claro, labels suaves.
  static TextTheme get _darkTextTheme => const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'ArchivoBlack',
      fontSize: 57,
      fontWeight: FontWeight.w900,
      color: DsColors.darkTextPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w900,
      color: DsColors.darkTextPrimary,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w900,
      color: DsColors.darkTextPrimary,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontFamily: 'ArchivoBlack',
      fontWeight: FontWeight.w700,
      color: DsColors.darkTextPrimary,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontFamily: 'ArchivoBlack',
      fontWeight: FontWeight.w700,
      color: DsColors.darkTextPrimary,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontFamily: 'ArchivoBlack',
      fontWeight: FontWeight.w700,
      color: DsColors.darkTextPrimary,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: DsColors.darkTextPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: DsColors.darkTextPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: DsColors.darkTextPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: DsColors.darkTextPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w400,
      color: DsColors.darkTextPrimary,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: DsColors.darkTextSecondary,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: DsColors.darkTextPrimary,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: DsColors.darkTextSecondary,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w500,
      color: DsColors.darkTextSecondary,
    ),
  );

  /// Tema de botones elevados.
  static ElevatedButtonThemeData get _elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      );

  /// Tema de AppBar Light — fondo blanco, títulos negros.
  static AppBarTheme get _appBarTheme => const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: DsColors.lightBackground,
    foregroundColor: DsColors.lightTextPrimary,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: DsColors.lightTextPrimary,
    ),
  );

  /// Tema de tarjetas Light — fondo claro.
  static CardThemeData get _cardTheme => const CardThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    margin: EdgeInsets.zero,
    color: DsColors.lightSurface,
  );

  /// Tema de AppBar Dark — mismo fondo que scaffold, títulos blancos.
  static AppBarTheme get _darkAppBarTheme => const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: DsColors.darkBackground,
    foregroundColor: DsColors.darkTextPrimary,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: DsColors.darkTextPrimary,
    ),
  );

  /// Tema de tarjetas para modo oscuro.
  static CardThemeData get _darkCardTheme => const CardThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    margin: EdgeInsets.zero,
    color: DsColors.darkCard,
  );

  /// Tema de inputs Light — relleno suave, bordes claros.
  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: DsColors.lightSurface,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: DsSpacing.md,
      vertical: DsSpacing.sm,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(DsSpacing.xs),
      borderSide: const BorderSide(color: DsColors.lightDivider),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(DsSpacing.xs),
      borderSide: const BorderSide(color: DsColors.lightDivider),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(DsSpacing.xs),
      borderSide: const BorderSide(color: DsColors.blue, width: 2),
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
      fontFamily: 'Rubik',
      color: DsColors.lightTextSecondary,
    ),
  );

  /// Tema de inputs Dark — relleno oscuro, bordes azul noche.
  static InputDecorationTheme get _darkInputDecorationTheme =>
      InputDecorationTheme(
        filled: true,
        fillColor: DsColors.darkCard,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: DsSpacing.md,
          vertical: DsSpacing.sm,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsSpacing.xs),
          borderSide: const BorderSide(color: DsColors.darkDivider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsSpacing.xs),
          borderSide: const BorderSide(color: DsColors.darkDivider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsSpacing.xs),
          borderSide: const BorderSide(color: DsColors.blue, width: 2),
        ),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Rubik',
          color: DsColors.darkTextSecondary,
        ),
      );
}
