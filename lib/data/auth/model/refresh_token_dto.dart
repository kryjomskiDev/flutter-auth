import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RefreshTokenDto extends Equatable {
  final String grantType;
  final String refreshToken;

  const RefreshTokenDto(this.grantType, this.refreshToken);

  factory RefreshTokenDto.fromJson(Map<String, dynamic> json) => _$RefreshTokenDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenDtoToJson(this);

  @override
  List<Object?> get props => [
        grantType,
        refreshToken,
      ];
}
