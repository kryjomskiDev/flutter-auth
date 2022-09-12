import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_user_dto.g.dart';

@JsonSerializable()
class AuthUserDto extends Equatable {
  final String idToken;
  final String refreshToken;

  const AuthUserDto(this.idToken, this.refreshToken);

  factory AuthUserDto.fromJson(Map<String, dynamic> json) => _$AuthUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserDtoToJson(this);

  @override
  List<Object?> get props => [idToken, refreshToken];
}
