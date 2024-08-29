import 'package:flutter/material.dart';
import 'package:whats_app/constants.dart';
import 'package:whats_app/core/utils/app_styles.dart';

class CustomLanguageChangeButton extends StatelessWidget {
  const CustomLanguageChangeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
