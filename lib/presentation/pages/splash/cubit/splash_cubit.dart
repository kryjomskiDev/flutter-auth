import 'package:flutter_auth/domain/auth/usecase/check_if_exists_tokens_usecase.dart';
import 'package:flutter_auth/presentation/pages/splash/cubit/splash_state.dart';
import 'package:flutter_auth/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class SplashCubit extends SafetyCubit<SplashState> {
  final CheckIfTokensExistsUseCase _checkIfTokensExistsUseCase;

  SplashCubit(this._checkIfTokensExistsUseCase) : super(const SplashState.loading());

  Future<void> init() async {
    final isLogedIn = await _checkIfTokensExistsUseCase();
    if (isLogedIn) {
      emit(const SplashState.goToHomePage());
    } else {
      emit(const SplashState.goToSignUpPage());
    }
  }
}
