abstract class TokenStore {
  Future<void> saveToken(String token);
  Future<void> saveRefreshToken(String refreshToken);
  Future<bool> hasToken();
  Future<void> logout();
  Future<String?> getTokenOrNull();
  Future<String?> getRefreshTokenOrNull();
}
