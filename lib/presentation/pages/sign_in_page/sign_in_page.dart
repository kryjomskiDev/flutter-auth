import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_auth/injectable/injectable.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/body/sign_in_page_body.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/cubit/sign_in_cubit.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/cubit/sign_in_state.dart';
import 'package:flutter_auth/presentation/pages/widgets/alerts/app_snack_bar.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_auth/style/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget implements AutoRouteWrapper {
  const SignInPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SignInCubit>(),
        child: this,
      );

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocConsumer<SignInCubit, SignInState>(
        listener: _listener,
        builder: _builder,
        buildWhen: _buildWhen,
        listenWhen: _listenWhen,
      );

  void _listener(BuildContext context, SignInState state) => state.maybeWhen(
        goToNextPage: goToNextPage,
        showErrorSnackBar: _showSnackBarError,
        orElse: () => null,
      );

  bool _listenWhen(SignInState previous, SignInState current) =>
      current is SignInStateGoToNextPage || current is SignInStateShowErrorSnackBar;

  Widget _builder(BuildContext context, SignInState state) => state.maybeWhen(
        loading: () => SignInPageBody(
          emailController: _emailController,
          passwordController: _passwordController,
          isLoading: true,
          canProceed: false,
          failedValidations: const {},
        ),
        loaded: (canProceed, failedValidations) => SignInPageBody(
          emailController: _emailController,
          passwordController: _passwordController,
          isLoading: false,
          canProceed: canProceed,
          failedValidations: failedValidations,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  bool _buildWhen(SignInState previous, SignInState current) =>
      current is SignInStateLoading || current is SignInStateLoaded;

  void _showSnackBarError() => ScaffoldMessenger.of(context).showSnackBar(
        AppSnackBar(
          title: Strings.of(context).snack_bar_error_msg,
          textColor: AppStandardColors.red,
        ),
      );

  void goToNextPage() => AutoRouter.of(context).replaceAll(const [HomeRoute()]);
}
