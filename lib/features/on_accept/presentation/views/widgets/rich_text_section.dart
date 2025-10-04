import 'package:flutter/material.dart';
import 'package:whats_app/core/utils/app_styles.dart';

import '../../../../../generated/l10n.dart';

class RichTextSection extends StatelessWidget {
  const RichTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: s.read,
        style: AppStyles.style14Bol.copyWith(
          color: const Color(0xff8696A0),
        ),
        children: [
          TextSpan(
            text: s.privacy,
            style: AppStyles.style14Bol.copyWith(
              color: const Color(0xff53BDEB),
            ),
          ),
          TextSpan(
            text: s.tap,
            style: AppStyles.style14Bol,
          ),
          TextSpan(
            text: s.terms,
            style: AppStyles.style14Bol.copyWith(
              color: const Color(0xff53BDEB),
            ),
          ),
        ],
      ),
    );
  }
}
