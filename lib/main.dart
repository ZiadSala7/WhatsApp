import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whats_app/features%20components/on_accept/presentation/view%20models/provider/theme_changer.dart';
import 'package:whats_app/features%20components/on_accept/presentation/views/on_accept.dart';
import 'package:whats_app/features%20components/splash/presentation/views/splash_view.dart';
import 'package:whats_app/core/themes/dark_theme.dart';
import 'package:whats_app/core/utils/app_navigations.dart';

bool darkMode = false;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (BuildContext context) => ThemeChanger(),
      child: const MaterialAppClass(),
    );
  }
}

class MaterialAppClass extends StatelessWidget {
  const MaterialAppClass({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return ScreenUtilInit(
      child: MaterialApp(
        initialRoute: AppNavigations.splashView,
        routes: {
          AppNavigations.splashView: (context) => const SplashView(),
          AppNavigations.onAcceptView: (context) => const OnAcceptPage(),
        },
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
