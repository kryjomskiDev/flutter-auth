import 'package:flutter_auth/domain/auth/model/auth_user.dart';
import 'package:flutter_auth/domain/auth/model/user_data.dart';

enum SessionExpiredEvent {
  expired,
}

abstract class AuthService {
  Future<AuthUser> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
  Future<AuthUser> signInWithEmailAndPassword(String email, String password);
  Future<UserData> getUserData();
  Stream<SessionExpiredEvent> sessionExpiredStream();
  Future<void> logout();
  Future<void> pushSessionExpiredEvent();
}
