import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserDataUseCase {
  final AuthService _service;

  GetUserDataUseCase(this._service);

  Future<UserData> call() => _service.getUserData();
}
