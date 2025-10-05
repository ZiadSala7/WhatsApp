import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_app/my_app.dart';

import 'core/providers/locale_changer.dart';
import 'core/providers/theme_changer.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeChanger(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => LocaleChanger(),
        ),
      ],
      child: const WhatsApp(),
    ),
  );
}
