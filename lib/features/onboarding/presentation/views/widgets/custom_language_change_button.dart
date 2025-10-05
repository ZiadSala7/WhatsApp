import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/providers/locale_changer.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

class CustomLanguageChangeButton extends StatefulWidget {
  const CustomLanguageChangeButton({
    super.key,
  });

  @override
  State<CustomLanguageChangeButton> createState() =>
      _CustomLanguageChangeButtonState();
}

class _CustomLanguageChangeButtonState
    extends State<CustomLanguageChangeButton> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LocaleChanger>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130),
      child: PopupMenuButton(
        onSelected: (value) {
          if ((value == 'English' && provider.locale == const Locale('ar')) ||
              (value == 'العربية' && provider.locale == const Locale('en'))) {
            provider.changeLocale();
          }
        },
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(value: 'English', child: Text('English')),
          const PopupMenuItem(value: 'العربية', child: Text('العربية')),
        ],
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.language,
                color: AppColors.editedGreen,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                S.of(context).language,
                style: AppStyles.style16Med.copyWith(
                  color: AppColors.editedGreen,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.editedGreen,
              )
            ],
          ),
        ),
      ),
    );
  }
}
