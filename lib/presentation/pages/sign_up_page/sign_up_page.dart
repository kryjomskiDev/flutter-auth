import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_auth/injectable/injectable.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/body/sign_up_page_body.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/cubit/sign_up_cubit.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/cubit/sign_up_state.dart';
import 'package:flutter_auth/presentation/pages/widgets/alerts/app_snack_bar.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_auth/style/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget implements AutoRouteWrapper {
  const SignUpPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SignUpCubit>(),
        child: this,
      );

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<SignUpCubit, SignUpState>(
        listener: _listener,
        builder: _builer,
        buildWhen: _buildWhen,
        listenWhen: _listenWhen,
      );

  void _listener(BuildContext context, SignUpState state) => state.maybeWhen(
        goToNextPage: _goToNextPage,
        showErrorSnackBar: _showSnackBarError,
        orElse: () => null,
      );

  bool _listenWhen(SignUpState previous, SignUpState current) =>
      current is SignUpStateGoToNextPage || current is SignUpStateShowErrorSnackBar;

  Widget _builer(BuildContext context, SignUpState state) => state.maybeWhen(
        loaded: (canProceed, failedValidations) => SignUpPageBody(
          failedValidations: failedValidations,
          canProceed: canProceed,
          nameController: _nameController,
          isLoading: false,
          emailController: _emailController,
          passwordController: _passwordController,
        ),
        loading: () => SignUpPageBody(
          failedValidations: const {},
          canProceed: false,
          nameController: _nameController,
          isLoading: true,
          emailController: _emailController,
          passwordController: _passwordController,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  bool _buildWhen(SignUpState previous, SignUpState current) =>
      current is SignUpStateLoaded || current is SignUpStateLoading;

  void _showSnackBarError() => ScaffoldMessenger.of(context).showSnackBar(
        AppSnackBar(
          title: Strings.of(context).snack_bar_error_msg,
          textColor: AppStandardColors.red,
        ),
      );

  void _goToNextPage() => AutoRouter.of(context).replaceAll(const [HomeRoute()]);
}
