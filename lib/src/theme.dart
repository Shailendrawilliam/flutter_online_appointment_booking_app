import 'package:flutter/material.dart';

ThemeData buildDarkBlueTheme() {
  const primary = Color(0xFFFD988A); // deep/dark blue
  const surface = Color(0xFFFD988A); // darker for cards
  const accent  = Color(0xFF5CC8FF);

  final base = ThemeData.dark(useMaterial3: true);
  return base.copyWith(
    scaffoldBackgroundColor: const Color(0xFFFF340E),
    colorScheme: base.colorScheme.copyWith(
      primary: primary,
      secondary: accent,
      surface: surface,
      onSurface: Colors.white,
      onPrimary: Colors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xBAFF6863),
      border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(12))),
      hintStyle: TextStyle(color: Colors.white70),
      labelStyle: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    cardTheme: const CardTheme(
      color: surface,
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
    chipTheme: base.chipTheme.copyWith(
      color: WidgetStatePropertyAll(surface),
      side: const BorderSide(color: Colors.white24),
      labelStyle: const TextStyle(color: Colors.white),
    ),
  );
}
