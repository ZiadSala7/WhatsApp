import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/on_accept/presentation/managers/provider/locale_changer.dart';
import 'package:whats_app/my_app.dart';
import 'features/on_accept/presentation/managers/provider/theme_changer.dart';

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
