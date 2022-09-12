import 'package:flutter_auth/injectable/dio/dio_injectable.dart';
import 'package:flutter_auth/injectable/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependecies(String environment) {
  $initGetIt(
    getIt,
    environment: environment,
  );

  if (environment != Environment.test) {
    registerInterceptors();
  }
}
