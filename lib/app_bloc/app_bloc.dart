import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppStateBloc extends Cubit<AppState> {
  AppStateBloc() : super(StatePageA());
  void changeState(AppState appState) {
    if (state != appState) {
      emit(appState);
    }
  }
}
