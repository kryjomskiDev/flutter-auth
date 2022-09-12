import 'package:flutter_auth/domain/text_field_validator/text_field_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';

const String _allowedSpecialCharacters = "~`!@#\\\$%\\^&*\\(\\)_\\-\\+=\\{\\[\\}\\]\\|:;\"'<\\,>\\.?\\/";

// Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character
final RegExp _passwordValidationRegExp = RegExp(
    "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$_allowedSpecialCharacters])[A-Za-z\\d$_allowedSpecialCharacters]{8,}\$");

class PasswordValidator implements TextFieldValidator {
  const PasswordValidator();

  @override
  Future<ValidationError?> validate(String value) async {
    if (value.isEmpty) {
      return ValidationError.empty;
    } else if (!_passwordValidationRegExp.hasMatch(value)) {
      return ValidationError.invalidPassword;
    }

    return null;
  }
}
