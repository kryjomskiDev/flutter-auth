import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/usecase/sign_in_with_email_and_password_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_in_with_email_and_password_usecase_test.mocks.dart';

@GenerateMocks([AuthService])
void main() {
  late AuthService authService;
  late SignInWithEmailAndPasswordUseCase signInWithEmailAndPasswordUseCase;

  const email = 'email';
  const password = 'password123';
  const user = AuthUser('token', 'refreshToken');

  setUp(() {
    authService = MockAuthService();
    signInWithEmailAndPasswordUseCase = SignInWithEmailAndPasswordUseCase(authService);
  });

  test("signup with email and password successfully", () async {
    when(authService.signInWithEmailAndPassword(email, password)).thenAnswer((_) async => user);

    const AuthUser expectedAnswer = user;

    expect(await signInWithEmailAndPasswordUseCase(email, password), expectedAnswer);
  });

  test("throws error when signup fails", () async {
    when(authService.signInWithEmailAndPassword(email, password)).thenAnswer((_) async => Future.error('error'));

    await expectLater(
      signInWithEmailAndPasswordUseCase(email, password),
      throwsA('error'),
    );
  });
}
