import 'package:flutter/material.dart';

class LocaleChanger extends ChangeNotifier {
  Locale locale = const Locale('ar');

  getLocale() {
    return locale;
  }

  changeLocale() {
    locale == const Locale('ar')
        ? locale = const Locale('en')
        : locale = const Locale('ar');
    notifyListeners();
  }
}
