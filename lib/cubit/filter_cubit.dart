import 'package:bloc/bloc.dart';
import 'package:simple_bloc/model/pet.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterState.init());
  void changeName(String name) {
    emit(FilterState.copyWith(
      name: name,
      type: state.pet.type,
      size: state.pet.size,
    ));
  }

  void changeType(PetType type) {
    emit(FilterState.copyWith(
      name: state.pet.name,
      type: type,
      size: state.pet.size,
    ));
  }

  void changeSize(PetSize size) {
    emit(FilterState.copyWith(
      name: state.pet.name,
      type: state.pet.type,
      size: size,
    ));
  }
}
