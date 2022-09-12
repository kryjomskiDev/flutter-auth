import 'package:flutter/material.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:flutter_auth/style/theme.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

const _tabletSize = Size(750, 1334);
const _mobileSize = Size(375, 667);

class FlutterAuthApp extends StatelessWidget {
  final MainRouter mainRouter;

  const FlutterAuthApp({required this.mainRouter, super.key});

  @override
  Widget build(BuildContext context) {
    final themeModel = ThemeModel();

    return ScreenUtilInit(
      designSize: Device.get().isTablet ? _tabletSize : _mobileSize,
      builder: (_, __) => MultiProvider(
        providers: [
          ListenableProvider(create: (_) => themeModel),
        ],
        child: Consumer(
          builder: (context, value, child) => MaterialApp.router(
            routerDelegate: mainRouter.delegate(),
            routeInformationParser: mainRouter.defaultRouteParser(),
            localizationsDelegates: const [
              Strings.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            supportedLocales: Strings.delegate.supportedLocales,
            theme: ThemeData(
              useMaterial3: true,
              scaffoldBackgroundColor: themeModel.theme.bgColor,
              primaryColor: themeModel.theme.white,
            ),
          ),
        ),
      ),
    );
  }
}
