import 'package:flutter_auth/data/auth/mapper/user_data_list_dto_to_user_data_mapper.dart';
import 'package:flutter_auth/data/auth/model/user_data_dto.dart';
import 'package:flutter_auth/data/auth/model/user_data_list_dto.dart';
import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  UserDataListDtoToUserDataMapper userDataListDtoToUserDataMapper = UserDataListDtoToUserDataMapper();

  test("maps UserDataListDto to UserData", () {
    const displayName = 'name';
    const email = 'email';
    const userDataDto = UserDataDto(displayName, email);
    const userDataListDto = UserDataListDto([userDataDto]);

    final actualAnswer = userDataListDtoToUserDataMapper(userDataListDto);

    const expectedAnswer = UserData(email, displayName);

    expect(actualAnswer, expectedAnswer);
  });
}
