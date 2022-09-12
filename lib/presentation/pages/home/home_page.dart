import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/injectable/injectable.dart';
import 'package:flutter_auth/presentation/pages/home/body/home_page_loaded_body.dart';
import 'package:flutter_auth/presentation/pages/home/cubit/home_cubit.dart';
import 'package:flutter_auth/presentation/pages/home/cubit/home_state.dart';
import 'package:flutter_auth/presentation/pages/widgets/indicators/loading_indicator.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<HomeCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) => state.maybeWhen(
                  logout: () => _performLogout(context),
                  orElse: () => null,
                ),
            builder: (context, state) => state.maybeWhen(
                  loading: () => const AppLoadingIndicator(),
                  loaded: () => const HomePageLoadedBody(),
                  orElse: () => const SizedBox.shrink(),
                )),
      );

  void _performLogout(BuildContext context) => AutoRouter.of(context).replaceAll(const [SignInRoute()]);
}
