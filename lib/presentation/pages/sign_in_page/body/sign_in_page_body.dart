import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/domain/text_field_validator/failed_validation.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validation_messages/mail_validation_message.dart';
import 'package:flutter_auth/domain/text_field_validator/model/validation_messages/password_validation_message.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/cubit/sign_in_cubit.dart';
import 'package:flutter_auth/presentation/pages/widgets/buttons/app_button.dart';
import 'package:flutter_auth/presentation/pages/widgets/buttons/app_text_button.dart';
import 'package:flutter_auth/presentation/pages/widgets/text/app_text_field.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_auth/style/app_typography.dart';
import 'package:flutter_auth/style/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPageBody extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isLoading;
  final bool canProceed;
  final Map<SignInFields, FailedValidation?> failedValidations;

  const SignInPageBody({
    required this.emailController,
    required this.passwordController,
    required this.isLoading,
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
                  Strings.of(context).sign_in,
                  style: AppTypography.header.copyWith(color: AppStandardColors.white),
                ),
                AppTextField(
                  title: Strings.of(context).field_name_email,
                  error: buildEmailErrorMsg(),
                  controller: emailController,
                  onChanged: (_) => _verifyInputs(context),
                ),
                SizedBox(height: 20.h),
                AppTextField(
                  error: buildPasswordErrorMsg(),
                  title: Strings.of(context).field_name_password,
                  controller: passwordController,
                  isObsecure: true,
                  onChanged: (_) => _verifyInputs(context),
                ),
                SizedBox(height: 20.h),
                AppButton(
                  onPressed: () => context.read<SignInCubit>().signInWithEmailAndPassword(
                        emailController.text,
                        passwordController.text,
                      ),
                  canProceed: canProceed,
                  isLoading: isLoading,
                  title: Strings.of(context).sign_in.toUpperCase(),
                ),
                AppTextButton(
                  onTap: () => _goToSignUpPage(context),
                  title: Strings.of(context).sing_in_text_button_msg,
                ),
              ],
            ),
          ),
        ),
      );

  String buildEmailErrorMsg() {
    FailedValidation? emailValidation = failedValidations[SignInFields.email];
    return emailValidation?.validationMessage(
          emailValidation.error,
          [const MailValidationMessage()],
        ) ??
        '';
  }

  String buildPasswordErrorMsg() {
    FailedValidation? passwordValidation = failedValidations[SignInFields.password];
    return passwordValidation?.validationMessage(
          passwordValidation.error,
          [const PasswordValidationMessage()],
        ) ??
        '';
  }

  void _verifyInputs(BuildContext context) => context.read<SignInCubit>().verifyInputs(
        emailController.text,
        passwordController.text,
      );

  void _goToSignUpPage(BuildContext context) => AutoRouter.of(context).navigate(const SignUpRoute());
}
