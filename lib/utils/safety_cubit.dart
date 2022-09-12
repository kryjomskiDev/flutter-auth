import 'package:bloc/bloc.dart';

abstract class SafetyCubit<State> extends BlocBase<State> {
  SafetyCubit(super.state);

  @override
  void emit(State state) {
    if (isClosed) {
      return;
    }
    super.emit(state);
  }
}
