import 'package:bloc/bloc.dart';
import 'package:simple_bloc/model/pet.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitialState());
  void changeName(String name) {
    emit(FilterCopyWith(Pet(
      name: name,
      type: state.pet.type,
      size: state.pet.size,
    )));
  }

  void changeType(PetType type) {
    emit(FilterCopyWith(Pet(
      name: state.pet.name,
      type: type,
      size: state.pet.size,
    )));
  }

  void changeSize(PetSize size) {
    emit(FilterCopyWith(Pet(
      name: state.pet.name,
      type: state.pet.type,
      size: size,
    )));
  }
}
