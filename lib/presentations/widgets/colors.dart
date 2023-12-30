import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF0F9565);
  // static const background = Color(0xFFdce5dd);
  static const background = Color(0xFFF8FdFF);
  static const surface = Color(0xFFFFFFFF);
  static const outline = Color(0xFF707972);

  // get colorScheme from primaty color
  static ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        surface: surface,
        background: background,
        outline: outline,
        surfaceTint: Colors.transparent,
      );
}
