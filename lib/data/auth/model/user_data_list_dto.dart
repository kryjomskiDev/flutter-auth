import 'package:equatable/equatable.dart';
import 'package:flutter_auth/data/auth/model/user_data_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDataListDto extends Equatable {
  final List<UserDataDto> users;

  const UserDataListDto(this.users);

  factory UserDataListDto.fromJson(Map<String, dynamic> json) => _$UserDataListDtoFromJson(json);

  @override
  List<Object?> get props => [users];
}
