// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileCredentialsDto _$UserProfileCredentialsDtoFromJson(
        Map<String, dynamic> json) =>
    UserProfileCredentialsDto(
      json['idToken'] as String,
      (json['deleteAttribute'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      json['displayName'] as String,
      json['returnSecureToken'] as bool,
    );

Map<String, dynamic> _$UserProfileCredentialsDtoToJson(
        UserProfileCredentialsDto instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'deleteAttribute': instance.deleteAttribute,
      'returnSecureToken': instance.returnSecureToken,
      'idToken': instance.idToken,
    };
