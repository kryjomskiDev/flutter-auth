import 'dart:async';

import 'package:flutter_auth/domain/auth/model/user_data.dart';
import 'package:flutter_auth/domain/auth/service/auth_service.dart';
import 'package:flutter_auth/domain/auth/usecase/get_user_data_usecase.dart';
import 'package:flutter_auth/domain/auth/usecase/logout_usecase.dart';
import 'package:flutter_auth/domain/auth/usecase/subscribe_to_session_expired_stream_usecase.dart';
import 'package:flutter_auth/presentation/pages/home/cubit/home_state.dart';
import 'package:flutter_auth/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends SafetyCubit<HomeState> {
  final LogoutUseCase _logoutUseCase;
  final GetUserDataUseCase _getUserDataUseCase;
  final SubscribeToSessionExpiredUseCase _subscribeToSessionExpiredUseCase;

  late final UserData userData;
  StreamSubscription? _sessionExpiredStreamSubscription;

  HomeCubit(
    this._logoutUseCase,
    this._getUserDataUseCase,
    this._subscribeToSessionExpiredUseCase,
  ) : super(const HomeState.loading());

  Future<void> init() async {
    userData = await _getUserDataUseCase();
    emit(const HomeState.loaded());
  }

  void initializeStreamSubscripitions() {
    _sessionExpiredStreamSubscription = _subscribeToSessionExpiredUseCase().listen(sessionExpiredStreamListener);
  }

  void sessionExpiredStreamListener(SessionExpiredEvent event) {
    if (event == SessionExpiredEvent.expired) {
      emit(const HomeState.logout());
    }
  }

  Future<void> logout() async {
    await _logoutUseCase();
    emit(const HomeState.logout());
  }

  @override
  Future<void> close() async {
    await _sessionExpiredStreamSubscription?.cancel();
    return super.close();
  }
}
