import 'package:flutter_auth/domain/text_field_validator/text_field_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';

class NameValidator implements TextFieldValidator {
  const NameValidator();

  @override
  Future<ValidationError?> validate(String value) async {
    if (value.isEmpty) {
      return ValidationError.empty;
    }
    return null;
  }
}
