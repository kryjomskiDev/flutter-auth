import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_auth/flutter_auth_app.dart';
import 'package:flutter_auth/injectable/injectable.dart';
import 'package:flutter_auth/presentation/router/router.gr.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

const _supportedEnvironments = [Environment.dev, Environment.prod];

Future<void>? runMobileApp(String environment) async => runZonedGuarded(
      () async {
        if (!_supportedEnvironments.contains(environment)) {
          throw ArgumentError('Environment $environment is not suppported');
        }

        await Hive.initFlutter();
        configureDependecies(environment);
        runApp(
          FlutterAuthApp(mainRouter: MainRouter()),
        );
      },
      (st, err) {},
    );
