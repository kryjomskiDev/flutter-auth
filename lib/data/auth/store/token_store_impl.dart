import 'package:flutter_auth/data/auth/store/token_box.dart';
import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:injectable/injectable.dart';

const tokenKey = 'tokenKey';
const refreshTokenKey = 'refreshTokenKey';

@LazySingleton(as: TokenStore)
class TokenStoreImpl implements TokenStore {
  final TokenBox _tokenBox;

  TokenStoreImpl(this._tokenBox);

  @override
  Future<void> saveRefreshToken(String refreshToken) async =>
      _tokenBox.write(key: refreshTokenKey, value: refreshToken);

  @override
  Future<void> saveToken(String token) async => _tokenBox.write(key: tokenKey, value: token);

  @override
  Future<bool> hasToken() async {
    final hasToken = await _tokenBox.containsKey(key: tokenKey);
    final refreshToken = await _tokenBox.containsKey(key: refreshTokenKey);

    return hasToken && refreshToken;
  }

  @override
  Future<void> logout() async => _tokenBox.deleteAll();

  @override
  Future<String?> getTokenOrNull() async => _tokenBox.read(key: tokenKey);

  @override
  Future<String?> getRefreshTokenOrNull() async => _tokenBox.read(key: refreshTokenKey);
}
