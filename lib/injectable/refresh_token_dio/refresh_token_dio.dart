import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RefreshTokenDio with DioMixin {
  RefreshTokenDio(BaseOptions baseOptions) {
    options = baseOptions;
  }
}
