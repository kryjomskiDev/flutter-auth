// Mocks generated by Mockito 5.2.0 from annotations
// in flutter_auth/test/unit_tests/domain/auth/use_case/logout_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flutter_auth/domain/auth/model/auth_user.dart' as _i2;
import 'package:flutter_auth/domain/auth/model/user_data.dart' as _i3;
import 'package:flutter_auth/domain/auth/service/auth_service.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeAuthUser_0 extends _i1.Fake implements _i2.AuthUser {}

class _FakeUserData_1 extends _i1.Fake implements _i3.UserData {}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i4.AuthService {
  MockAuthService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.AuthUser> signUpWithEmailAndPassword(
          String? email, String? password, String? name) =>
      (super.noSuchMethod(
              Invocation.method(
                  #signUpWithEmailAndPassword, [email, password, name]),
              returnValue: Future<_i2.AuthUser>.value(_FakeAuthUser_0()))
          as _i5.Future<_i2.AuthUser>);
  @override
  _i5.Future<_i2.AuthUser> signInWithEmailAndPassword(
          String? email, String? password) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithEmailAndPassword, [email, password]),
              returnValue: Future<_i2.AuthUser>.value(_FakeAuthUser_0()))
          as _i5.Future<_i2.AuthUser>);
  @override
  _i5.Future<_i3.UserData> getUserData() =>
      (super.noSuchMethod(Invocation.method(#getUserData, []),
              returnValue: Future<_i3.UserData>.value(_FakeUserData_1()))
          as _i5.Future<_i3.UserData>);
  @override
  _i5.Stream<_i4.SessionExpiredEvent> sessionExpiredStream() =>
      (super.noSuchMethod(Invocation.method(#sessionExpiredStream, []),
              returnValue: Stream<_i4.SessionExpiredEvent>.empty())
          as _i5.Stream<_i4.SessionExpiredEvent>);
  @override
  _i5.Future<void> logout() =>
      (super.noSuchMethod(Invocation.method(#logout, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> pushSessionExpiredEvent() =>
      (super.noSuchMethod(Invocation.method(#pushSessionExpiredEvent, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
}
