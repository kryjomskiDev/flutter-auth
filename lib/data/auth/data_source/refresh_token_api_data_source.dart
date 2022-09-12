import 'package:dio/dio.dart';
import 'package:flutter_auth/data/auth/model/refresh_token_auth_user_dto.dart';
import 'package:flutter_auth/data/auth/model/refresh_token_dto.dart';
import 'package:flutter_auth/injectable/refresh_token_dio/refresh_token_dio.dart';
import 'package:flutter_auth/networking_endpoints/networking_endpoints.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'refresh_token_api_data_source.g.dart';

@injectable
@RestApi()
abstract class RefreshTokenApiDataSource {
  @factoryMethod
  factory RefreshTokenApiDataSource(RefreshTokenDio dio) = _RefreshTokenApiDataSource;

  @POST(NetworkingEndpoints.refreshToken)
  Future<RefreshTokenAuthUserDto> refreshToken(
    @Path('key') String apiKey,
    @Body() RefreshTokenDto refreshTokenDto,
  );
}
