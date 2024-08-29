import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/constants.dart';
import 'package:whats_app/core/utils/app_styles.dart';

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
        onPressed: () {},
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
