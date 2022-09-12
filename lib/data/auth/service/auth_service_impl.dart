import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_auth/data/api_url_provider.dart';
import 'package:flutter_auth/data/auth/data_source/auth_api_data_source.dart';
import 'package:flutter_auth/data/auth/mapper/auth_user_dto_to_auth_user_mapper.dart';
import 'package:flutter_auth/data/auth/mapper/user_data_list_dto_to_user_data_mapper.dart';
import 'package:flutter_auth/data/auth/model/auth_user_credentials_dto.dart';
import 'package:flutter_auth/data/auth/model/user_id_token_dto.dart';
import 'package:flutter_auth/data/auth/model/user_profile_credentials_dto.dart';
import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:injectable/injectable.dart';

const omitPhoto = 'PHOTO_URL';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final AuthApiDataSource _authApiDataSource;
  final AuthUserDtoToAuthUserMapper _authUserDtoToAuthUserMapper;
  final TokenStore _store;
  final UserDataListDtoToUserDataMapper _dataListDtoToUserDataMapper;

  final StreamController<SessionExpiredEvent> _seessionExpiredStreamController =
      StreamController<SessionExpiredEvent>.broadcast();

  AuthServiceImpl(
    this._authApiDataSource,
    this._authUserDtoToAuthUserMapper,
    this._store,
    this._dataListDtoToUserDataMapper,
  );

  @override
  Future<AuthUser> signInWithEmailAndPassword(String email, String password) async {
    final authUserDto = await _authApiDataSource.loginWithEmail(
      AuthUserCredentialsDto(email, password, true),
    );
    await _store.saveToken(authUserDto.idToken);
    await _store.saveRefreshToken(authUserDto.refreshToken);
    return _authUserDtoToAuthUserMapper(authUserDto);
  }

  @override
  Future<AuthUser> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    final userCredentials = AuthUserCredentialsDto(email, password, true);

    await _authApiDataSource.signUp(
      userCredentials,
    );

    final authUserDto = await _authApiDataSource.loginWithEmail(
      userCredentials,
    );

    await _authApiDataSource.setUserName(UserProfileCredentialsDto(
      authUserDto.idToken,
      const [omitPhoto],
      name,
      false,
    ));

    await _store.saveToken(authUserDto.idToken);
    await _store.saveRefreshToken(authUserDto.refreshToken);
    return _authUserDtoToAuthUserMapper(authUserDto);
  }

  @override
  Future<void> logout() async => _logout();

  @override
  Future<UserData> getUserData() async {
    final token = await _store.getTokenOrNull();

    if (token == null) {
      throw PlatformException;
    }

    return _dataListDtoToUserDataMapper(await _authApiDataSource.getUserData(
      UserIdTokenDto(token),
    ));
  }

  @override
  Stream<SessionExpiredEvent> sessionExpiredStream() => _seessionExpiredStreamController.stream;

  @override
  Future<void> pushSessionExpiredEvent() async {
    await _logout();
    _seessionExpiredStreamController.add(SessionExpiredEvent.expired);
  }

  Future<void> _logout() => _store.logout();
}
