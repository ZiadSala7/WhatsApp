import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whats_app/my_app.dart';
import 'features/on_accept/presentation/view%20models/provider/theme_changer.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeChanger(),
      child: const WhatsApp(),
    ),
  );
}
