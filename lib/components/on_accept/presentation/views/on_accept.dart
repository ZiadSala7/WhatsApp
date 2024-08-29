import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/constants.dart';
import 'package:whats_app/core/utils/app_images.dart';
import 'package:whats_app/core/utils/app_styles.dart';

class OnAcceptPage extends StatelessWidget {
  const OnAcceptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff111B21),
      body: OnAcceptPageBody(),
    );
  }
}

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
              RichText(
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
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40.h,
                width: 290.w,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: editedGreen,
                    foregroundColor: const Color(0xff111B21),
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: const Text(
                    'AGREE AND CONTINUE',
                    style: AppStyles.style18Med,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
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
