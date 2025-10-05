import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import 'custom_language_change_button.dart';
import 'custom_on_accept_button.dart';
import 'rich_text_section.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset(
              AppImages.circle,
              color: AppColors.editedGreen,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                s.onAccWelcome,
                style: AppStyles.style25Bol,
              ),
              const SizedBox(
                height: 10,
              ),
              const RichTextSection(),
              const SizedBox(
                height: 30,
              ),
              const CustomOnAcceptButton(),
              SizedBox(
                height: 70.h,
              ),
              const CustomLanguageChangeButton()
            ],
          ),
        ),
      ],
    );
  }
}
