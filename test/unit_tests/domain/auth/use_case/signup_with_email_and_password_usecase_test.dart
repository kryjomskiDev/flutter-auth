import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/usecase/signup_with_email_and_password_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'signup_with_email_and_password_usecase_test.mocks.dart';

@GenerateMocks([AuthService])
void main() {
  late AuthService authService;
  late SignUpWithEmailAndPasswordUseCase signUpWithEmailAndPasswordUseCase;

  const email = 'email';
  const password = 'password123';
  const name = 'name';
  const user = AuthUser('token', 'refreshToken');

  setUp(() {
    authService = MockAuthService();
    signUpWithEmailAndPasswordUseCase = SignUpWithEmailAndPasswordUseCase(authService);
  });

  test("signup with email and password successfully", () async {
    when(authService.signUpWithEmailAndPassword(email, password, name)).thenAnswer((_) async => user);

    const AuthUser expectedAnswer = user;

    expect(await signUpWithEmailAndPasswordUseCase(email, password, name), expectedAnswer);
  });

  test("throws error when signup fails", () async {
    when(authService.signUpWithEmailAndPassword(email, password, name)).thenAnswer((_) async => Future.error('error'));

    await expectLater(
      signUpWithEmailAndPasswordUseCase(email, password, name),
      throwsA('error'),
    );
  });
}
