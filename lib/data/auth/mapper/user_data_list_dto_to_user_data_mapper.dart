import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_auth/data/auth/model/user_data_list_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserDataListDtoToUserDataMapper {
  UserData call(UserDataListDto dto) {
    final user = dto.users.first;

    return UserData(user.email, user.displayName);
  }
}
