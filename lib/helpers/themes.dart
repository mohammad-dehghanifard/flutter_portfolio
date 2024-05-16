import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      background: Color(0xFFFFFAE6),
      primary: Color(0xFF002379),
      secondary: Color(0xFFFF5F00),
      primaryContainer: Color(0xFFFF9F66)
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFFFAE6),
      elevation: 0.0,
      surfaceTintColor: Colors.transparent
    )
  );
}