import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/core/utils/app_styles.dart';
import 'package:whats_app/main.dart';

class CustomOnAcceptButton extends StatefulWidget {
  const CustomOnAcceptButton({
    super.key,
  });

  @override
  State<CustomOnAcceptButton> createState() => _CustomOnAcceptButtonState();
}

class _CustomOnAcceptButtonState extends State<CustomOnAcceptButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 290.w,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            darkMode = !darkMode;
            // ignore: use_build_context_synchronously
          });
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
