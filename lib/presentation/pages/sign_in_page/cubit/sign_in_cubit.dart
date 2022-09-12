import 'package:flutter_auth/domain/auth/usecase/sign_in_with_email_and_password_usecase.dart';
import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validators/mail_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validators/password_validator.dart';
import 'package:flutter_auth/domain/text_field_validator/usecase/validate_text_field_use_case.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/cubit/sign_in_state.dart';
import 'package:flutter_auth/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

enum SignInFields {
  email,
  password,
}

@injectable
class SignInCubit extends SafetyCubit<SignInState> {
  final SignInWithEmailAndPasswordUseCase _signInWithEmailAndPasswordUseCase;
  final ValidateTextFieldUseCase _validateTextFieldUseCase;
  bool _canProceed = false;

  SignInCubit(
    this._signInWithEmailAndPasswordUseCase,
    this._validateTextFieldUseCase,
  ) : super(const SignInState.loaded(
          canProceed: false,
          failedValidations: {},
        ));

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      emit(const SignInState.loading());
      await _signInWithEmailAndPasswordUseCase(email, password);
      emit(const SignInState.goToNextPage());
    } catch (_) {
      emit(SignInState.loaded(
        canProceed: _canProceed,
        failedValidations: {},
      ));
      emit(const SignInState.showErrorSnackBar());
    }
  }

  Future<void> verifyInputs(
    String email,
    String password,
  ) async {
    emit(const SignInState.loading());

    Map<SignInFields, FailedValidation?> failedValidations = await _verifyInputs(email, password);

    _canProceed = _validateTextFieldUseCase.canProceed(failedValidations);

    if (_canProceed) {
      emit(SignInState.loaded(canProceed: _canProceed, failedValidations: failedValidations));
    } else {
      emit(SignInState.loaded(canProceed: _canProceed, failedValidations: failedValidations));
    }
  }

  Future<Map<SignInFields, FailedValidation?>> _verifyInputs(
    String email,
    String password,
  ) async {
    Map<SignInFields, FailedValidation?> failedValidations = {};

    failedValidations[SignInFields.email] = await _validateTextFieldUseCase(
      email,
      [const MailValidator()],
    );

    failedValidations[SignInFields.password] = await _validateTextFieldUseCase(
      password,
      [const PasswordValidator()],
    );
    return failedValidations;
  }
}
