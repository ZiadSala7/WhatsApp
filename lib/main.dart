import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whats_app/core/themes/light_theme.dart';
import 'package:whats_app/features%20components/on_accept/presentation/view%20models/provider/theme_changer.dart';
import 'package:whats_app/features%20components/on_accept/presentation/views/on_accept.dart';
import 'package:whats_app/features%20components/splash/presentation/views/splash_view.dart';
import 'package:whats_app/core/themes/dark_theme.dart';
import 'package:whats_app/core/utils/app_navigations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ThemeChanger(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        initialRoute: AppNavigations.splashView,
        routes: {
          AppNavigations.splashView: (context) => const SplashView(),
          AppNavigations.onAcceptView: (context) => const OnAcceptPage(),
        },
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeChanger>(context).getTheme()
            ? lightTheme()
            : darkTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
