import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';

ThemeData darkTheme() {
  final darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    scaffoldBackgroundColor: darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: editedGreen,
        foregroundColor: const Color(0xff111B21),
      ),
    ),
  );
}
