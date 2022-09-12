import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/cubit/sign_in_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loaded({
    required bool canProceed,
    required Map<SignInFields, FailedValidation?> failedValidations,
  }) = SignInStateLoaded;

  const factory SignInState.loading() = SignInStateLoading;
  const factory SignInState.goToNextPage() = SignInStateGoToNextPage;
  const factory SignInState.showErrorSnackBar() = SignInStateShowErrorSnackBar;
}
