// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserCredentialsDto _$AuthUserCredentialsDtoFromJson(
        Map<String, dynamic> json) =>
    AuthUserCredentialsDto(
      json['email'] as String,
      json['password'] as String,
      json['returnSecureToken'] as bool,
    );

Map<String, dynamic> _$AuthUserCredentialsDtoToJson(
        AuthUserCredentialsDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'returnSecureToken': instance.returnSecureToken,
    };
