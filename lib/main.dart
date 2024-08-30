import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whats_app/core/themes/dark_theme.dart';
import 'package:whats_app/core/themes/light_theme.dart';
import 'package:whats_app/core/utils/app_router.dart';

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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.appRouter,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
      ),
    );
  }
}
