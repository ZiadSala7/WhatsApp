import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:whats_app/core/utils/app_images.dart';

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
        // Navigator.of(context).pushReplacement(newRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.splashLight,
        width: 300.sp,
      ),
    );
  }
}
