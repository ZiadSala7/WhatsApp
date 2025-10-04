import 'package:flutter/material.dart';
import 'package:whats_app/core/utils/app_colors.dart';

ThemeData darkTheme() {
  final darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    scaffoldBackgroundColor: AppColors.darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.editedGreen,
        foregroundColor: const Color(0xff111B21),
      ),
    ),
  );
}
