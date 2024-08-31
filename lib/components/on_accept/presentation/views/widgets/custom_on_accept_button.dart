import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whats_app/components/on_accept/presentation/view%20models/cubit/theme_change_cubit.dart';
import 'package:whats_app/core/utils/app_styles.dart';
import 'package:whats_app/main.dart';

class CustomOnAcceptButton extends StatelessWidget {
  const CustomOnAcceptButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 290.w,
      child: ElevatedButton(
        onPressed: () async {
          final prefs = await SharedPreferences.getInstance();
          prefs.setBool('darkMode', !darkMode);
          // ignore: use_build_context_synchronously
        },
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
        ),
        child: const Text(
          'AGREE AND CONTINUE',
          style: AppStyles.style18Med,
        ),
      ),
    );
  }
}
