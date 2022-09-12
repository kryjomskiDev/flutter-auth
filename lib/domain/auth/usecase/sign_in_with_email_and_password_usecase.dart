import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignInWithEmailAndPasswordUseCase {
  final AuthService _authService;

  const SignInWithEmailAndPasswordUseCase(this._authService);

  Future<AuthUser> call(String email, String password) => _authService.signInWithEmailAndPassword(email, password);
}
