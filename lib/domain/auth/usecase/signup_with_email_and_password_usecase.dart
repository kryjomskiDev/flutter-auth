import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpWithEmailAndPasswordUseCase {
  final AuthService authService;

  const SignUpWithEmailAndPasswordUseCase(this.authService);

  Future<AuthUser> call(String email, String password, String name) => authService.signUpWithEmailAndPassword(
        email,
        password,
        name,
      );
}
