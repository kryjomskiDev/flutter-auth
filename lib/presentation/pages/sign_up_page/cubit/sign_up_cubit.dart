import 'package:flutter_auth/domain/auth/usecase/signup_with_email_and_password_usecase.dart';
import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validators/mail_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validators/name_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validators/password_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/usecase/validate_text_field_use_case.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/cubit/sign_up_state.dart';
import 'package:flutter_auth/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

enum SignUpFields {
  email,
  password,
  name,
}

@injectable
class SignUpCubit extends SafetyCubit<SignUpState> {
  final SignUpWithEmailAndPasswordUseCase _signUpWithEmailAndPasswordUseCase;
  final ValidateTextFieldUseCase _validateTextFieldUseCase;
  bool _canProceed = false;

  SignUpCubit(
    this._signUpWithEmailAndPasswordUseCase,
    this._validateTextFieldUseCase,
  ) : super(const SignUpState.loaded(
          canProceed: false,
          failedValidations: {},
        ));

  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      emit(const SignUpState.loading());
      await _signUpWithEmailAndPasswordUseCase(email, password, name);
      emit(const SignUpState.goToNextPage());
    } catch (_) {
      emit(SignUpState.loaded(canProceed: _canProceed, failedValidations: {}));
      emit(const SignUpState.showErrorSnackBar());
    }
  }

  Future<void> verifyInputs(
    String email,
    String password,
    String name,
  ) async {
    emit(const SignUpState.loading());

    Map<SignUpFields, FailedValidation?> failedValidations = await _verifyInputs(
      email,
      password,
      name,
    );

    _canProceed = _validateTextFieldUseCase.canProceed(failedValidations);

    if (_canProceed) {
      emit(SignUpState.loaded(canProceed: _canProceed, failedValidations: failedValidations));
    } else {
      emit(SignUpState.loaded(canProceed: _canProceed, failedValidations: failedValidations));
    }
  }

  Future<Map<SignUpFields, FailedValidation?>> _verifyInputs(
    String email,
    String password,
    String name,
  ) async {
    Map<SignUpFields, FailedValidation?> failedValidations = {};

    failedValidations[SignUpFields.email] = await _validateTextFieldUseCase(
      email,
      [const MailValidator()],
    );

    failedValidations[SignUpFields.name] = await _validateTextFieldUseCase(
      name,
      [const NameValidator()],
    );

    failedValidations[SignUpFields.password] = await _validateTextFieldUseCase(
      password,
      [const PasswordValidator()],
    );
    return failedValidations;
  }
}
