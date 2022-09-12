import 'package:dio/dio.dart';
import 'package:flutter_auth/data/auth/model/auth_user_credentials_dto.dart';
import 'package:flutter_auth/data/auth/model/auth_user_dto.dart';
import 'package:flutter_auth/data/auth/model/user_data_list_dto.dart';
import 'package:flutter_auth/data/auth/model/user_id_token_dto.dart';
import 'package:flutter_auth/data/auth/model/user_profile_credentials_dto.dart';
import 'package:flutter_auth/networking_endpoints/networking_endpoints.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'auth_api_data_source.g.dart';

@injectable
@RestApi()
abstract class AuthApiDataSource {
  @factoryMethod
  factory AuthApiDataSource(Dio dio) = _AuthApiDataSource;

  @POST(NetworkingEndpoints.signUpWithEmailAndPassword)
  Future<void> signUp(
    @Body() AuthUserCredentialsDto userCredentials,
  );

  @POST(NetworkingEndpoints.signInWithEmailAndPassword)
  Future<AuthUserDto> loginWithEmail(
    @Body() AuthUserCredentialsDto userCredentials,
  );

  @POST(NetworkingEndpoints.setUserName)
  Future<void> setUserName(
    @Body() UserProfileCredentialsDto userProfileCredentialsDto,
  );

  @POST(NetworkingEndpoints.getUserData)
  Future<UserDataListDto> getUserData(
    @Body() UserIdTokenDto userIdTokenDto,
  );
}
