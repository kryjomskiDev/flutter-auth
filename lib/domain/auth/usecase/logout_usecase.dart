import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  final AuthService _authService;

  const LogoutUseCase(this._authService);

  Future<void> call() => _authService.logout();
}
