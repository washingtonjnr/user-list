import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor primary = MaterialColor(
    0xFF00796B,
    <int, Color>{
      50: Color(0xFFE0F2F1),
      100: Color(0xFFB2DFDB),
      200: Color(0xFF80CBC4),
      300: Color(0xFF4DB6AC),
      400: Color(0xFF26A69A),
      500: Color(0xFF00796B),
      600: Color(0xFF00796B),
      700: Color(0xFF004D40),
      800: Color(0xFF003B30),
      900: Color(0xFF00251A),
    },
  );

  static const MaterialColor secondary = MaterialColor(
    0xFF004D40,
    <int, Color>{
      50: Color(0xFFE0F2F1),
      100: Color(0xFFB2DFDB),
      200: Color(0xFF80CBC4),
      300: Color(0xFF4DB6AC),
      400: Color(0xFF26A69A),
      500: Color(0xFF004D40),
      600: Color(0xFF004D40),
      700: Color(0xFF003B30),
      800: Color(0xFF00251A),
      900: Color(0xFF001A12),
    },
  );

  // ignore: library_private_types_in_public_api
  static _TextColors text = const _TextColors();
  // ignore: library_private_types_in_public_api
  static _BackgroundColors background = const _BackgroundColors();
}

class _TextColors {
  final Color lightest = const Color(0xFFFFFFFF);
  final Color light = const Color(0xFFF7F7F7);
  final Color medium = const Color(0xFFA3A3A3);
  final Color dark = const Color(0xFF4A4A4A);
  final Color darkest = const Color(0xFF141414);

  const _TextColors();
}

@immutable
class _BackgroundColors {
  final Color lightest = const Color(0xFFFFFFFF);
  final Color light = const Color(0xFFF7F7F7);
  final Color medium = const Color(0xFFA3A3A3);
  final Color dark = const Color(0xFF525252);
  final Color darkest = const Color(0xFF141414);

  const _BackgroundColors();
}
