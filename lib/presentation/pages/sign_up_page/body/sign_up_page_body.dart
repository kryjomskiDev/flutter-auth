import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validation_messages/mail_validation_message.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validation_messages/name_validation_message.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validation_messages/password_validation_message.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/cubit/sign_up_cubit.dart';
import 'package:flutter_auth/presentation/pages/widgets/buttons/app_button.dart';
import 'package:flutter_auth/presentation/pages/widgets/buttons/app_text_button.dart';
import 'package:flutter_auth/presentation/pages/widgets/text/app_text_field.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_auth/style/app_typography.dart';
import 'package:flutter_auth/style/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPageBody extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final bool isLoading;
  final bool canProceed;
  final Map<SignUpFields, FailedValidation?> failedValidations;

  const SignUpPageBody({
    required this.emailController,
    required this.passwordController,
    required this.isLoading,
    required this.nameController,
    required this.canProceed,
    required this.failedValidations,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Strings.of(context).sign_up,
                  style: AppTypography.header.copyWith(color: AppStandardColors.white),
                ),
                AppTextField(
                  title: Strings.of(context).field_name_email,
                  controller: emailController,
                  onChanged: (_) => _verifyInputs(context),
                  error: buildEmailErrorMsg(),
                ),
                SizedBox(height: 20.h),
                AppTextField(
                  title: Strings.of(context).field_name_password,
                  controller: passwordController,
                  onChanged: (_) => _verifyInputs(context),
                  isObsecure: true,
                  error: buildPasswordErrorMsg(),
                ),
                SizedBox(height: 20.h),
                AppTextField(
                  title: Strings.of(context).field_name_user_name,
                  controller: nameController,
                  onChanged: (_) => _verifyInputs(context),
                  error: buildNameErrorMsg(),
                ),
                SizedBox(height: 20.h),
                AppButton(
                  onPressed: () => context.read<SignUpCubit>().signUpWithEmailAndPassword(
                        emailController.text,
                        passwordController.text,
                        nameController.text,
                      ),
                  canProceed: canProceed,
                  isLoading: isLoading,
                  title: Strings.of(context).create_account.toUpperCase(),
                ),
                AppTextButton(
                  onTap: () => _goToSignInPage(context),
                  title: Strings.of(context).sing_up_text_button_msg,
                ),
              ],
            ),
          ),
        ),
      );

  String buildEmailErrorMsg() {
    FailedValidation? emailValidation = failedValidations[SignUpFields.email];
    return emailValidation?.validationMessage(
          emailValidation.error,
          [const MailValidationMessage()],
        ) ??
        '';
  }

  String buildNameErrorMsg() {
    FailedValidation? nameValidation = failedValidations[SignUpFields.name];
    return nameValidation?.validationMessage(
          nameValidation.error,
          [const NameValidationMessage()],
        ) ??
        '';
  }

  String buildPasswordErrorMsg() {
    FailedValidation? passwordValidation = failedValidations[SignUpFields.password];
    return passwordValidation?.validationMessage(
          passwordValidation.error,
          [const PasswordValidationMessage()],
        ) ??
        '';
  }

  void _verifyInputs(BuildContext context) =>
      context.read<SignUpCubit>().verifyInputs(emailController.text, passwordController.text, nameController.text);

  void _goToSignInPage(BuildContext context) => AutoRouter.of(context).navigate(const SignInRoute());
}
