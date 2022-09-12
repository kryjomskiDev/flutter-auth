import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile_credentials_dto.g.dart';

@JsonSerializable()
class UserProfileCredentialsDto extends Equatable {
  final String displayName;
  final List<String> deleteAttribute;
  final bool returnSecureToken;
  final String idToken;

  const UserProfileCredentialsDto(
    this.idToken,
    this.deleteAttribute,
    this.displayName,
    this.returnSecureToken,
  );

  factory UserProfileCredentialsDto.fromJson(Map<String, dynamic> json) => _$UserProfileCredentialsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileCredentialsDtoToJson(this);

  @override
  List<Object?> get props => [displayName, deleteAttribute, returnSecureToken];
}
