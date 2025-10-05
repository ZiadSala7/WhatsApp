import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

List<LocalizationsDelegate<dynamic>> get localizationDelegatesList {
  return const [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
}

final Map<String, String> languageNames = {
  'en': 'English',
  'ar': 'العربية',
};
