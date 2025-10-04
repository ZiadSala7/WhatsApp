import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:whats_app/features/on_accept/presentation/managers/provider/locale_changer.dart';

import 'constants.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';
import 'core/utils/app_router.dart';
import 'features/on_accept/presentation/managers/provider/theme_changer.dart';
import 'generated/l10n.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        localizationsDelegates: localizationDelegatesList,
        supportedLocales: S.delegate.supportedLocales,
        locale: Provider.of<LocaleChanger>(context).locale,
        routerConfig: AppRouter.appRouter,
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeChanger>(context).getTheme()
            ? lightTheme()
            : darkTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
