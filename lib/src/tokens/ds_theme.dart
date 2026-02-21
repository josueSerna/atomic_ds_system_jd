import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:flutter/material.dart';

abstract class DsTheme {
  /// Tema principal de la aplicación.
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: DsColors.blue,
      primary: DsColors.blue,
      secondary: DsColors.yellow,
      error: DsColors.red,
      surface: DsColors.white,
    ),
    textTheme: _textTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    appBarTheme: _appBarTheme,
    cardTheme: _cardTheme,
  );

  /// Tema oscuro de la aplicación.
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
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
    scaffoldBackgroundColor: DsColors.darkBackground,
  );

  /// Tema de texto personalizado con tipografía Bold/Black para headers.
  static TextTheme get _textTheme => const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'ArchivoBlack',
      fontSize: 57,
      fontWeight: FontWeight.w900, // Black
      color: DsColors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w900, // Black
      color: DsColors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w900, // Black
      color: DsColors.black,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.black,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Rubik',
      fontSize: 28,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600, // SemiBold
      color: DsColors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600, // SemiBold
      color: DsColors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400, // Regular
      color: DsColors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400, // Regular
      color: DsColors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400, // Regular
      color: DsColors.greyDark,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500, // Medium
      color: DsColors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500, // Medium
      color: DsColors.black,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500, // Medium
      color: DsColors.greyDark,
    ),
  );

  /// Tema de texto personalizado para modo oscuro.
  static TextTheme get _darkTextTheme => const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'ArchivoBlack',
      fontSize: 57,
      fontWeight: FontWeight.w900, // Black
      color: DsColors.darkTextPrimary,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w900, // Black
      color: DsColors.darkTextPrimary,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w900, // Black
      color: DsColors.darkTextPrimary,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Rubik',
      fontSize: 32,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.darkTextPrimary,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.darkTextPrimary,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.darkTextPrimary,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.darkTextPrimary,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600, // SemiBold
      color: DsColors.darkTextPrimary,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600, // SemiBold
      color: DsColors.darkTextPrimary,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400, // Regular
      color: DsColors.darkTextPrimary,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400, // Regular
      color: DsColors.darkTextPrimary,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400, // Regular
      color: DsColors.darkTextSecondary,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500, // Medium
      color: DsColors.darkTextPrimary,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500, // Medium
      color: DsColors.darkTextPrimary,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500, // Medium
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

  /// Tema de AppBar.
  static AppBarTheme get _appBarTheme => const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: DsColors.blue,
    foregroundColor: DsColors.white,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700, // Bold
      color: DsColors.white,
    ),
  );

  /// Tema de tarjetas.
  static CardThemeData get _cardTheme => const CardThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    margin: EdgeInsets.zero,
  );

  /// Tema de AppBar para modo oscuro.
  static AppBarTheme get _darkAppBarTheme => const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    backgroundColor: DsColors.darkSurface,
    foregroundColor: DsColors.darkTextPrimary,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700, // Bold
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
}
