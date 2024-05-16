import 'package:flutter/material.dart';
import 'package:flutter_portfolio/helpers/responsive.dart';

class AppThemes {

  static ThemeData light(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return ThemeData(
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
        ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: Responsive.isMobile(context) || Responsive.isMobile(context) ? size.height * 0.02 : size.width * 0.02,
            fontWeight: FontWeight.w700,
            color: const Color(0xFFFF5F00),
        ),
        titleMedium: TextStyle(
            fontSize: Responsive.isMobile(context) || Responsive.isMobile(context) ? size.height * 0.02 : size.width * 0.01,
            fontWeight: FontWeight.w700,
            color: const Color(0xFFFF5F00),
        ),
        bodyMedium: TextStyle(
          fontSize: Responsive.isMobile(context) || Responsive.isMobile(context) ? size.height / 64 : size.width / 90,
          color: const Color(0xFF002379),
        ),
      )
    );
  }
}