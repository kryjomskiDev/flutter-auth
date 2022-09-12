import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_id_token_dto.g.dart';

@JsonSerializable()
class UserIdTokenDto extends Equatable {
  final String idToken;

  const UserIdTokenDto(this.idToken);

  factory UserIdTokenDto.fromJson(Map<String, dynamic> json) => _$UserIdTokenDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserIdTokenDtoToJson(this);

  @override
  List<Object?> get props => [idToken];
}
