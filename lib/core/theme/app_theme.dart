import 'package:flutter/material.dart';

class AppTheme {
  // Color Palette
  static const Color softWhite = Color(0xFFF8F9FA);
  static const Color softBlack = Color(0xFF212529);
  static const Color softGrey = Color(0xFFE9ECEF);
  static const Color softBlue = Color(0xFF407DFF);
  static const Color softDarkGrey = Color(0xFF495057);
  static const Color primaryColor = Color(0xFF134DFA);

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: Colors.amber,
      surface: softWhite,
      background: softWhite,
      onPrimary: softWhite,
      onSecondary: softBlack,
      onSurface: softBlack,
      onBackground: softBlack,
    ),
    scaffoldBackgroundColor: softWhite,
    cardTheme: const CardTheme(
      color: softGrey,
      elevation: 1,
      margin: EdgeInsets.zero,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: softWhite,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: softWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: softWhite,
        backgroundColor: primaryColor,
      ),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: Colors.amber,
      surface: Color(0xFF1A1A1A),
      background: Color(0xFF121212),
      onPrimary: softWhite,
      onSecondary: softWhite,
      onSurface: softWhite,
      onBackground: softWhite,
    ),
    scaffoldBackgroundColor: const Color(0xFF121212),
    cardTheme: const CardTheme(
      color: Color(0xFF1E1E1E),
      elevation: 1,
      margin: EdgeInsets.zero,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: softWhite,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: softWhite,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: softWhite,
        backgroundColor: primaryColor,
      ),
    ),
  );
}
