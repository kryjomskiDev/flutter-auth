import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/injectable/injectable.dart';
import 'package:flutter_auth/presentation/pages/splash/cubit/splash_cubit.dart';
import 'package:flutter_auth/presentation/pages/splash/cubit/splash_state.dart';
import 'package:flutter_auth/presentation/pages/widgets/indicators/loading_indicator.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget implements AutoRouteWrapper {
  const SplashPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SplashCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<SplashCubit, SplashState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const AppLoadingIndicator(),
            orElse: () => const SizedBox.shrink(),
          ),
          listener: (context, state) => state.maybeWhen(
            goToHomePage: () => goToHomePage(context),
            goToSignUpPage: () => goToSignUp(context),
            orElse: () => null,
          ),
        ),
      );

  void goToSignUp(BuildContext context) => AutoRouter.of(context).replaceAll(const [SignInRoute()]);

  void goToHomePage(BuildContext context) => AutoRouter.of(context).replaceAll(const [HomeRoute()]);
}
