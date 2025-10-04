import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  static bool darkMode = false;

  getTheme() {
    return darkMode;
  }

  setTheme() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
