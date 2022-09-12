import 'package:flutter/services.dart';
import 'package:flutter_auth/data/api_url_provider.dart';
import 'package:flutter_auth/data/auth/data_source/auth_api_data_source.dart';
import 'package:flutter_auth/data/auth/mapper/auth_user_dto_to_auth_user_mapper.dart';
import 'package:flutter_auth/data/auth/mapper/user_data_list_dto_to_user_data_mapper.dart';
import 'package:flutter_auth/data/auth/model/auth_user_credentials_dto.dart';
import 'package:flutter_auth/data/auth/model/auth_user_dto.dart';
import 'package:flutter_auth/data/auth/model/user_data_dto.dart';
import 'package:flutter_auth/data/auth/model/user_data_list_dto.dart';
import 'package:flutter_auth/data/auth/model/user_id_token_dto.dart';
import 'package:flutter_auth/data/auth/service/auth_service_impl.dart';
import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_service_impl_test.mocks.dart';

@GenerateMocks([
  AuthApiDataSource,
  AuthUserDtoToAuthUserMapper,
  TokenStore,
  UserDataListDtoToUserDataMapper,
])
void main() {
  late AuthApiDataSource authApiDataSource;
  late AuthUserDtoToAuthUserMapper authUserDtoToAuthUserMapper;
  late TokenStore tokenStore;
  late UserDataListDtoToUserDataMapper userDataListDtoToUserDataMapper;
  late AuthServiceImpl authService;

  const AuthUserCredentialsDto userCredentialsDto = AuthUserCredentialsDto(
    'email',
    'password',
    true,
  );

  setUp(() {
    authApiDataSource = MockAuthApiDataSource();
    authUserDtoToAuthUserMapper = MockAuthUserDtoToAuthUserMapper();
    tokenStore = MockTokenStore();
    userDataListDtoToUserDataMapper = MockUserDataListDtoToUserDataMapper();

    authService = AuthServiceImpl(
      authApiDataSource,
      authUserDtoToAuthUserMapper,
      tokenStore,
      userDataListDtoToUserDataMapper,
    );
  });

  group("Auth Service tests.", () {
    test("Login with email and password successfully", () async {
      const AuthUserDto authUserDto = AuthUserDto('token', 'refreshToken');
      const AuthUser authUser = AuthUser('token', 'refreshToken');

      when(authApiDataSource.loginWithEmail(userCredentialsDto)).thenAnswer((_) async => authUserDto);

      when(authUserDtoToAuthUserMapper(authUserDto)).thenReturn(authUser);

      final actualAnswer = await authService.signInWithEmailAndPassword('email', 'password');

      expect(actualAnswer, authUser);
    });

    test("when login with email throws error", () async {
      when(authApiDataSource.loginWithEmail(userCredentialsDto)).thenAnswer((_) async => Future.error('error'));

      await expectLater(authService.signInWithEmailAndPassword('email', 'password'), throwsA('error'));
    });

    test("gets userData successfully", () async {
      const UserIdTokenDto userIdTokenDto = UserIdTokenDto('idToken');
      const UserDataDto userDataDto = UserDataDto('displayName', 'email');
      const UserDataListDto userDataListDto = UserDataListDto([userDataDto]);
      const UserData userData = UserData('email', 'displayName');

      when(tokenStore.getTokenOrNull()).thenAnswer((_) async => 'idToken');

      when(authApiDataSource.getUserData(userIdTokenDto)).thenAnswer((_) async => userDataListDto);

      when(userDataListDtoToUserDataMapper(userDataListDto)).thenReturn(userData);

      final actualAnswer = await authService.getUserData();

      expect(actualAnswer, userData);
    });
  });
}
