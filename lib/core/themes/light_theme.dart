import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';

ThemeData lightTheme() {
  final lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    scaffoldBackgroundColor: lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: editedGreen,
        foregroundColor: const Color(0xffffffff),
      ),
    ),
  );
}
