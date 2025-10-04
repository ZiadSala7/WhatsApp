import 'package:flutter/material.dart';
import 'package:whats_app/core/utils/app_styles.dart';

class RichTextSection extends StatelessWidget {
  const RichTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Read our",
        style: AppStyles.style14Med.copyWith(
          color: const Color(0xff8696A0),
        ),
        children: [
          TextSpan(
            text: " Privacy Policy. ",
            style: AppStyles.style14Med.copyWith(
              color: const Color(0xff53BDEB),
            ),
          ),
          const TextSpan(
            text: "Tap 'Agree and Continue' to accept the",
            style: AppStyles.style14Med,
          ),
          TextSpan(
            text: " Terms of Services. ",
            style: AppStyles.style14Med.copyWith(
              color: const Color(0xff53BDEB),
            ),
          ),
        ],
      ),
    );
  }
}
