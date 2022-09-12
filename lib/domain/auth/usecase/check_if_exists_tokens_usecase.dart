import 'package:flutter_auth/domain/auth/store/token_store.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckIfTokensExistsUseCase {
  final TokenStore _tokenStore;
  const CheckIfTokensExistsUseCase(this._tokenStore);

  Future<bool> call() => _tokenStore.hasToken();
}
