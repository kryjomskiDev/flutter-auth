import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_auth_user_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RefreshTokenAuthUserDto extends Equatable {
  final String idToken;
  final String refreshToken;

  const RefreshTokenAuthUserDto(this.idToken, this.refreshToken);

  factory RefreshTokenAuthUserDto.fromJson(Map<String, dynamic> json) => _$RefreshTokenAuthUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenAuthUserDtoToJson(this);

  @override
  List<Object?> get props => [idToken, refreshToken];
}
