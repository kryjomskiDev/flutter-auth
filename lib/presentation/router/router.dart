import 'package:auto_route/auto_route.dart';
import 'package:flutter_auth/presentation/pages/home/home_page.dart';
import 'package:flutter_auth/presentation/pages/sign_in_page/sign_in_page.dart';
import 'package:flutter_auth/presentation/pages/sign_up_page/sign_up_page.dart';
import 'package:flutter_auth/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashPage,
    ),
    CustomRoute(page: SignInPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    AutoRoute(page: HomePage)
  ],
)
class $MainRouter {}
