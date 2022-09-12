import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/domain/text_field_validator/text_field_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/validation_error.dart';
import 'package:injectable/injectable.dart';

@injectable
class ValidateTextFieldUseCase {
  Future<FailedValidation?> call(
    String value,
    List<TextFieldValidator> validators,
  ) async {
    for (TextFieldValidator validator in validators) {
      ValidationError? error = await validator.validate(value);
      if (error == null) return null;

      return FailedValidation(error);
    }
    return null;
  }

  bool canProceed(Map<dynamic, FailedValidation?> failedValidations) {
    failedValidations.removeWhere((_, value) => value == null);
    return failedValidations.isEmpty;
  }
}
