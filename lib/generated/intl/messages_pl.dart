// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  static String m0(userEmail) => "Email: ${userEmail}";

  static String m1(userName) => "Imię: ${userName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "create_account": MessageLookupByLibrary.simpleMessage("Stwórz Konto"),
        "field_name_email": MessageLookupByLibrary.simpleMessage("Email"),
        "field_name_password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "field_name_user_name": MessageLookupByLibrary.simpleMessage("Imie"),
        "field_validation_msg_empty":
            MessageLookupByLibrary.simpleMessage("Pole jest wymagane"),
        "field_validation_msg_invalid_email":
            MessageLookupByLibrary.simpleMessage("Niepoprawny email"),
        "field_validation_msg_invalid_password":
            MessageLookupByLibrary.simpleMessage("Niepoprawne hasło"),
        "home_page_signed_in":
            MessageLookupByLibrary.simpleMessage("Zalogowano"),
        "home_page_user_email": m0,
        "home_page_user_name": m1,
        "logout": MessageLookupByLibrary.simpleMessage("Wyloguj się"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "sing_in_text_button_msg": MessageLookupByLibrary.simpleMessage(
            "Nie masz jeszcze konta? Załóz je."),
        "sing_up_text_button_msg": MessageLookupByLibrary.simpleMessage(
            "Masz juz konto? Zaloguj się."),
        "snack_bar_error_msg": MessageLookupByLibrary.simpleMessage(
            "Wystąpił błąd. Spróbuj ponownie.")
      };
}
