import 'package:dio/dio.dart';
import 'package:flutter_auth/data/api_url_provider.dart';
import 'package:injectable/injectable.dart';

const timeout = Duration(seconds: 20);

@module
abstract class DioConfigurationModule {
  @singleton
  BaseOptions createDioOptions(ApiUrlProvider apiUrlProvider) => BaseOptions(
        sendTimeout: timeout.inMilliseconds,
        connectTimeout: timeout.inMilliseconds,
        receiveTimeout: timeout.inMilliseconds,
        baseUrl: apiUrlProvider.getApiUrl(),
      );
}
