// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_auth_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenAuthUserDto _$RefreshTokenAuthUserDtoFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenAuthUserDto(
      json['id_token'] as String,
      json['refresh_token'] as String,
    );

Map<String, dynamic> _$RefreshTokenAuthUserDtoToJson(
        RefreshTokenAuthUserDto instance) =>
    <String, dynamic>{
      'id_token': instance.idToken,
      'refresh_token': instance.refreshToken,
    };
