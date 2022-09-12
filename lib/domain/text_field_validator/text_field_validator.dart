import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';

abstract class TextFieldValidator {
  Future<ValidationError?> validate(String value);
}
