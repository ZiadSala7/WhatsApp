// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome To WhatsApp`
  String get onAccWelcome {
    return Intl.message(
      'Welcome To WhatsApp',
      name: 'onAccWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Read our `
  String get read {
    return Intl.message('Read our ', name: 'read', desc: '', args: []);
  }

  /// `Privacy Policy. `
  String get privacy {
    return Intl.message(
      'Privacy Policy. ',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Tap 'Agree and Continue' to accept the `
  String get tap {
    return Intl.message(
      'Tap \'Agree and Continue\' to accept the ',
      name: 'tap',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions`
  String get terms {
    return Intl.message(
      'Terms and conditions',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Agree And Continue`
  String get agreeAndCont {
    return Intl.message(
      'Agree And Continue',
      name: 'agreeAndCont',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get language {
    return Intl.message('English', name: 'language', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
