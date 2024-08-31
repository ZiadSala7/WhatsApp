import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whats_app/components/on_accept/presentation/views/on_accept.dart';
import 'package:whats_app/components/splash/presentation/views/splash_view.dart';
import 'package:whats_app/core/themes/dark_theme.dart';
import 'package:whats_app/core/themes/light_theme.dart';
import 'package:whats_app/core/utils/app_navigations.dart';

bool darkMode = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((instance) {
    darkMode = instance.getBool('darkMode')!;
  });

  runApp(const MyApp());
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
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
