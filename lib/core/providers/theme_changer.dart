import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  static bool darkMode = true;

  getTheme() {
    return darkMode;
  }

  setTheme() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
