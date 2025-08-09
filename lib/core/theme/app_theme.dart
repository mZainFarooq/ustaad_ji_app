import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  // Common Border Radius
  static final BorderRadius _defaultRadius = BorderRadius.circular(12);

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightBackground,
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
      secondary: AppColors.lightSecondary,
      surface: AppColors.lightBackground,
      onSurface: AppColors.lightText,
      error: AppColors.error,
      onError: Colors.white,
    ),
    fontFamily: 'Roboto',

    // Typography
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.lightText,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.lightText,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.lightText,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.lightText,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.lightText,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.lightText,
      ),
    ),

    // AppBar Style
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.lightText,
      ),
      iconTheme: IconThemeData(color: AppColors.lightText),
    ),

    // Elevated Button Style
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    // Outlined Button Style
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
        side: BorderSide(color: AppColors.lightPrimary),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
    ),

    // Text Button Style
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),

    // Input Field Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: _defaultRadius,
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: AppColors.lightText.withValues(alpha: 0.6)),
    ),

    // Card Theme
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
      elevation: 2,
      margin: const EdgeInsets.all(8),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(size: 24, color: AppColors.lightText),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackground,
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      secondary: AppColors.darkSecondary,
      surface: AppColors.darkBackground,
      onSurface: AppColors.darkText,
      error: AppColors.error,
      onError: Colors.white,
    ),
    fontFamily: 'Roboto',

    // Typography
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.darkText,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.darkText,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.darkText,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.darkText,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.darkText,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.darkText,
      ),
    ),

    // AppBar Style
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.darkText,
      ),
      iconTheme: IconThemeData(color: AppColors.darkText),
    ),

    // Elevated Button Style
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    // Outlined Button Style
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
        side: BorderSide(color: AppColors.darkPrimary),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
    ),

    // Text Button Style
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    ),

    // Input Field Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade900,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: _defaultRadius,
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: AppColors.darkText.withValues(alpha: 0.6)),
    ),

    // Card Theme
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: _defaultRadius),
      elevation: 2,
      margin: const EdgeInsets.all(8),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(size: 24, color: AppColors.darkText),
  );
}
