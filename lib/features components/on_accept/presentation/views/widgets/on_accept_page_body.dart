import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/features%20components/on_accept/presentation/views/widgets/custom_language_change_button.dart';
import 'package:whats_app/features%20components/on_accept/presentation/views/widgets/custom_on_accept_button.dart';
import 'package:whats_app/features%20components/on_accept/presentation/views/widgets/rich_text_section.dart';
import 'package:whats_app/constants.dart';
import 'package:whats_app/core/utils/app_images.dart';
import 'package:whats_app/core/utils/app_styles.dart';

class OnAcceptPageBody extends StatelessWidget {
  const OnAcceptPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset(
              AppImages.circle,
              color: editedGreen,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const Text(
                'Welcome To WhatsApp',
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
