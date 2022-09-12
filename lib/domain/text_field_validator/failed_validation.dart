import 'package:flutter_auth/domain/text_field_validator/text_field_validation_message.dart';
import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';

class FailedValidation {
  final ValidationError error;
  final String? message;

  const FailedValidation(
    this.error, {
    this.message,
  });

  String validationMessage(ValidationError error, List<TextFieldValidationMessage> validationMessages) {
    for (TextFieldValidationMessage validationMessage in validationMessages) {
      String message = '';

      message = validationMessage.getMessage(error);

      if (message.isNotEmpty) {
        return message;
      }
    }
    return '';
  }
}
