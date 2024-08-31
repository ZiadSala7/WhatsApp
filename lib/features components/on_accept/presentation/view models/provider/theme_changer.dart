import 'package:flutter/material.dart';
import 'package:whats_app/core/themes/dark_theme.dart';
import 'package:whats_app/core/themes/light_theme.dart';
import 'package:whats_app/main.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData _themeData = darkMode ? lightTheme() : darkTheme();

  getTheme() {
    return _themeData;
  }

  setTheme() {
    _themeData = darkMode ? darkTheme() : lightTheme();
    notifyListeners();
  }
}
