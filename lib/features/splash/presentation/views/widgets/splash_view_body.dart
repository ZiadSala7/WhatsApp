import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/theme_changer.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.onAccept);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Provider.of<ThemeChanger>(context).getTheme()
            ? AppImages.splashLight
            : AppImages.splashDark,
        width: 300.sp,
      ),
    );
  }
}
