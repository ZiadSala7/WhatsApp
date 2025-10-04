import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

ThemeData lightTheme() {
  final lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    scaffoldBackgroundColor: AppColors.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.editedGreen,
        foregroundColor: const Color(0xffffffff),
      ),
    ),
  );
}
