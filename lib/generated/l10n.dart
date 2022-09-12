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

class Strings {
  Strings();

  static Strings? _current;

  static Strings get current {
    assert(_current != null,
        'No instance of Strings was loaded. Try to initialize the Strings delegate before accessing Strings.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Strings> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Strings();
      Strings._current = instance;

      return instance;
    });
  }

  static Strings of(BuildContext context) {
    final instance = Strings.maybeOf(context);
    assert(instance != null,
        'No instance of Strings present in the widget tree. Did you add Strings.delegate in localizationsDelegates?');
    return instance!;
  }

  static Strings? maybeOf(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  /// `Field is required`
  String get field_validation_msg_empty {
    return Intl.message(
      'Field is required',
      name: 'field_validation_msg_empty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get field_validation_msg_invalid_email {
    return Intl.message(
      'Invalid email',
      name: 'field_validation_msg_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Password`
  String get field_validation_msg_invalid_password {
    return Intl.message(
      'Invalid Password',
      name: 'field_validation_msg_invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get field_name_email {
    return Intl.message(
      'Email',
      name: 'field_name_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get field_name_password {
    return Intl.message(
      'Password',
      name: 'field_name_password',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get field_name_user_name {
    return Intl.message(
      'Name',
      name: 'field_name_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? Create one.`
  String get sing_in_text_button_msg {
    return Intl.message(
      'Don\'t have an account? Create one.',
      name: 'sing_in_text_button_msg',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? Login instead.`
  String get sing_up_text_button_msg {
    return Intl.message(
      'Already have an account? Login instead.',
      name: 'sing_up_text_button_msg',
      desc: '',
      args: [],
    );
  }

  /// `Signed In`
  String get home_page_signed_in {
    return Intl.message(
      'Signed In',
      name: 'home_page_signed_in',
      desc: '',
      args: [],
    );
  }

  /// `Name: {userName}`
  String home_page_user_name(Object userName) {
    return Intl.message(
      'Name: $userName',
      name: 'home_page_user_name',
      desc: '',
      args: [userName],
    );
  }

  /// `Email: {userEmail}`
  String home_page_user_email(Object userEmail) {
    return Intl.message(
      'Email: $userEmail',
      name: 'home_page_user_email',
      desc: '',
      args: [userEmail],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `An error occured. Please try again.`
  String get snack_bar_error_msg {
    return Intl.message(
      'An error occured. Please try again.',
      name: 'snack_bar_error_msg',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Strings> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Strings> load(Locale locale) => Strings.load(locale);
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
