import 'package:flutter/material.dart';

class AppTheme {
  static final Map<String, Color> colors = {
    'blue': const Color(0xFF4076E5),
    'lightBlue': const Color(0xFF9EBAF4),
    'grey': const Color(0xFF8F9BB3),
    'green': const Color(0xFF40E5BF),
    'backgroundColor': const Color(0xFFF7F8FA),
    'dark': const Color(0xFF131A22),
    'purple': const Color(0xFFE0D9FF),
  };

  static final appTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: AppTheme.colors['dark'],
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: AppTheme.colors['dark'],
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        fontSize: 14,
        color: AppTheme.colors['dark'],
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: AppTheme.colors['dark'],
      ),
      labelSmall: TextStyle(
        fontFamily: 'SF Pro Display',
        fontSize: 14,
        color: AppTheme.colors['dark'],
      ),
      labelLarge: TextStyle(
        fontFamily: 'SF Pro Display',
        fontSize: 16,
        color: AppTheme.colors['dark'],
      ),
    ),
  );
}
