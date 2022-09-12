import 'dart:async';

import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubscribeToSessionExpiredUseCase {
  final AuthService _authService;

  const SubscribeToSessionExpiredUseCase(this._authService);

  Stream<SessionExpiredEvent> call() => _authService.sessionExpiredStream();
}
