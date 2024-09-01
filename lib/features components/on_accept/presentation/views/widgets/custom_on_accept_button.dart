import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whats_app/core/utils/app_styles.dart';
import 'package:whats_app/features%20components/on_accept/presentation/view%20models/provider/theme_changer.dart';

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
            Provider.of<ThemeChanger>(context, listen: false).setTheme();
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
