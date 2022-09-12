import 'package:flutter_auth/data/interceptors/refresh_token_interceptor.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/service/refresh_token_service.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:flutter_auth/injectable/dio/dio_injectable.mocks.dart';
import 'package:flutter_auth/injectable/injectable.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

@GenerateMocks([Dio])
@module
abstract class DioModule {
  @lazySingleton
  @dev
  @prod
  Dio dio(BaseOptions options) => Dio(options);

  @singleton
  @test
  Dio testDio() => MockDio();
}

void registerInterceptors() {
  final dio = getIt<Dio>();
  dio.interceptors.addAll([
    RefreshTokenInterceptor(
      getIt<TokenStore>(),
      dio,
      getIt<AuthService>(),
      getIt<RefreshTokenService>(),
    ),
  ]);
}
