import 'package:flutter_auth/domain/text_field_validator/text_field_validation_message.dart';
import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';
import 'package:flutter_auth/generated/l10n.dart';

class NameValidationMessage implements TextFieldValidationMessage {
  const NameValidationMessage();
  @override
  String getMessage(ValidationError error) {
    switch (error) {
      case ValidationError.empty:
        return Strings.current.field_validation_msg_empty;
      default:
        return '';
    }
  }
}
