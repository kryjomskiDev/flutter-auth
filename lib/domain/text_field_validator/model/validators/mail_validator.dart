import 'package:flutter_auth/domain/text_field_validator/text_field_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';
import 'package:email_validator/email_validator.dart';

class MailValidator implements TextFieldValidator {
  const MailValidator();

  @override
  Future<ValidationError?> validate(String value) async {
    if (value.isEmpty) {
      return ValidationError.empty;
    } else if (!EmailValidator.validate(value)) {
      return ValidationError.invalidEmail;
    }

    return null;
  }
}
