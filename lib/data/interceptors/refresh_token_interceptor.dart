import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/service/refresh_token_service.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';

class RefreshTokenInterceptor extends Interceptor {
  final TokenStore _store;
  final Dio _dio;
  final AuthService _authService;
  final RefreshTokenService _refreshTokenService;

  RefreshTokenInterceptor(
    this._store,
    this._dio,
    this._authService,
    this._refreshTokenService,
  );

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 400 || err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      await _pushSessionExpired();
      return handler.next(err);
    }
    //TODO: implement token referesh
  }

  Future<void> _pushSessionExpired() async => _authService.pushSessionExpiredEvent();

  Future<void> _refreshToken() async => _refreshTokenService.refreshToken();
}
