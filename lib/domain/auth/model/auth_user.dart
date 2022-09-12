import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String token;
  final String refreshToken;

  const AuthUser(
    this.token,
    this.refreshToken,
  );

  @override
  List<Object?> get props => [
        token,
        refreshToken,
      ];
}
