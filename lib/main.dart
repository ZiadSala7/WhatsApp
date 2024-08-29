import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whats_app/core/utils/app_router.dart';

void main() async {
  runApp(const MyApp());
  final prefs = await SharedPreferences.getInstance();
  prefs.getBool('modeChange');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.appRouter,
      ),
    );
  }
}
