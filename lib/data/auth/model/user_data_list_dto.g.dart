// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataListDto _$UserDataListDtoFromJson(Map<String, dynamic> json) =>
    UserDataListDto(
      (json['users'] as List<dynamic>)
          .map((e) => UserDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
