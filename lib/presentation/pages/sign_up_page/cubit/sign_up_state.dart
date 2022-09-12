import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/cubit/sign_up_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.loaded({
    required bool canProceed,
    required Map<SignUpFields, FailedValidation?> failedValidations,
  }) = SignUpStateLoaded;

  const factory SignUpState.loading() = SignUpStateLoading;
  const factory SignUpState.showErrorSnackBar() = SignUpStateShowErrorSnackBar;
  const factory SignUpState.goToNextPage() = SignUpStateGoToNextPage;
}
