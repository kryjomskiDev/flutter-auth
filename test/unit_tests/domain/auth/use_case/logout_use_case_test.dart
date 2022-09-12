import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/usecase/logout_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'logout_use_case_test.mocks.dart';

@GenerateMocks([AuthService])
void main() {
  late AuthService authServiceMock;
  late LogoutUseCase logoutUseCase;

  setUp(() {
    authServiceMock = MockAuthService();
    logoutUseCase = LogoutUseCase(authServiceMock);
  });

  test("verify logout on logoutUseCase", () async {
    await logoutUseCase();

    verify(authServiceMock.logout());
  });
}
