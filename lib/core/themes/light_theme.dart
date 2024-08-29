import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';

ThemeData lightTheme() {
  final lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    scaffoldBackgroundColor: lightBackground,
  );
}
