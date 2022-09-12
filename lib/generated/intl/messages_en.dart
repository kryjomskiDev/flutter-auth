// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(userEmail) => "Email: ${userEmail}";

  static String m1(userName) => "Name: ${userName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "create_account":
            MessageLookupByLibrary.simpleMessage("Create Account"),
        "field_name_email": MessageLookupByLibrary.simpleMessage("Email"),
        "field_name_password": MessageLookupByLibrary.simpleMessage("Password"),
        "field_name_user_name": MessageLookupByLibrary.simpleMessage("Name"),
        "field_validation_msg_empty":
            MessageLookupByLibrary.simpleMessage("Field is required"),
        "field_validation_msg_invalid_email":
            MessageLookupByLibrary.simpleMessage("Invalid email"),
        "field_validation_msg_invalid_password":
            MessageLookupByLibrary.simpleMessage("Invalid Password"),
        "home_page_signed_in":
            MessageLookupByLibrary.simpleMessage("Signed In"),
        "home_page_user_email": m0,
        "home_page_user_name": m1,
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "sing_in_text_button_msg": MessageLookupByLibrary.simpleMessage(
            "Don\'t have an account? Create one."),
        "sing_up_text_button_msg": MessageLookupByLibrary.simpleMessage(
            "Already have an account? Login instead."),
        "snack_bar_error_msg": MessageLookupByLibrary.simpleMessage(
            "An error occured. Please try again.")
      };
}
