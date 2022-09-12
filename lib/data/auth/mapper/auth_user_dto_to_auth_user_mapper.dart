import 'package:flutter_auth/data/auth/model/auth_user_dto.dart';
import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthUserDtoToAuthUserMapper {
  AuthUser call(AuthUserDto dto) => AuthUser(
        dto.idToken,
        dto.refreshToken,
      );
}
