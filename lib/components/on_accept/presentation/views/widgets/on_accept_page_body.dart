import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/components/on_accept/presentation/views/widgets/custom_on_accept_button.dart';
import 'package:whats_app/components/on_accept/presentation/views/widgets/rich_text_section.dart';
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
              Text(
                'Welcome To WhatsApp',
                style: AppStyles.style25Bol.copyWith(
                  color: Colors.white,
                ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.language,
                        color: editedGreen,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'English',
                        style: AppStyles.style16Med.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: editedGreen,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
