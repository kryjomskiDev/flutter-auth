import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/usecase/get_user_data_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_user_data_usecase_test.mocks.dart';

@GenerateMocks([AuthService])
void main() {
  late AuthService authServiceMock;
  late GetUserDataUseCase getUserDataUseCase;

  setUp(() {
    authServiceMock = MockAuthService();
    getUserDataUseCase = GetUserDataUseCase(authServiceMock);
  });

  test("gets UserData successfully", () async {
    const userData = UserData("email", "name");

    when(authServiceMock.getUserData()).thenAnswer((_) async => userData);

    expect(await getUserDataUseCase(), userData);
  });

  test("throws error when fails.", () async {
    when(authServiceMock.getUserData()).thenAnswer((_) async => Future.error('error'));

    await expectLater(getUserDataUseCase(), throwsA('error'));
  });
}
