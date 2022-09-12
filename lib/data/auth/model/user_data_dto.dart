import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_data_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDataDto extends Equatable {
  final String email;
  final String displayName;

  const UserDataDto(this.displayName, this.email);

  factory UserDataDto.fromJson(Map<String, dynamic> json) => _$UserDataDtoFromJson(json);

  @override
  List<Object?> get props => [
        email,
        displayName,
      ];
}
