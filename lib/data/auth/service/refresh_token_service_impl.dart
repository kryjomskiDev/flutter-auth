import 'package:flutter_auth/data/api_url_provider.dart';
import 'package:flutter_auth/data/auth/data_source/refresh_token_api_data_source.dart';
import 'package:flutter_auth/data/auth/model/refresh_token_dto.dart';
import 'package:flutter_auth/domain/auth/service/refresh_token_service.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:injectable/injectable.dart';

const grantType = 'refresh_token';

@LazySingleton(as: RefreshTokenService)
class RefreshTokenSerivceImpl implements RefreshTokenService {
  final TokenStore _tokenStore;
  final RefreshTokenApiDataSource _apiDataSource;
  final ApiUrlProvider _apiUrlProvider;

  RefreshTokenSerivceImpl(
    this._apiDataSource,
    this._apiUrlProvider,
    this._tokenStore,
  );

  @override
  Future<void> refreshToken() async {
    final refreshToken = await _tokenStore.getRefreshTokenOrNull();

    if (refreshToken != null) {
      final authUser = await _apiDataSource.refreshToken(
        _apiUrlProvider.getRefreshTokenUrl(),
        RefreshTokenDto(grantType, refreshToken),
      );

      await _tokenStore.saveToken(authUser.idToken);
      await _tokenStore.saveRefreshToken(authUser.refreshToken);
    }
  }
}
