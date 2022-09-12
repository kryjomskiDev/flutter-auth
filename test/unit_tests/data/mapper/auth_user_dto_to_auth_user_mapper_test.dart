import 'package:flutter_auth/data/auth/mapper/auth_user_dto_to_auth_user_mapper.dart';
import 'package:flutter_auth/data/auth/model/auth_user_dto.dart';
import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  AuthUserDtoToAuthUserMapper authUserMapper = AuthUserDtoToAuthUserMapper();

  test("maps AuthUserDto to AuthUser", () {
    const idToken = 'idToken';
    const refreshToken = 'refreshToken';
    const authUserDto = AuthUserDto(idToken, refreshToken);

    final actualAnswer = authUserMapper(authUserDto);
    const expectedAnswer = AuthUser(idToken, refreshToken);

    expect(actualAnswer, expectedAnswer);
  });
}
