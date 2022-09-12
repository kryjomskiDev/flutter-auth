import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_user_credentials_dto.g.dart';

@JsonSerializable()
class AuthUserCredentialsDto extends Equatable {
  final String email;
  final String password;
  final bool returnSecureToken;

  const AuthUserCredentialsDto(this.email, this.password, this.returnSecureToken);

  factory AuthUserCredentialsDto.fromJson(Map<String, dynamic> json) => _$AuthUserCredentialsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserCredentialsDtoToJson(this);

  @override
  List<Object?> get props => [email, password];
}
