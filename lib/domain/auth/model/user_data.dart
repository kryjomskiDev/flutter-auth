import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String email;
  final String name;

  const UserData(this.email, this.name);

  @override
  List<Object?> get props => [
        email,
        name,
      ];
}
