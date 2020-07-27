part of 'filter_cubit.dart';

class FilterState {
  final Pet pet;
  const FilterState({this.pet});

  factory FilterState.init() {
    return FilterState(pet: Pet(type: PetType.all));
  }

  factory FilterState.copyWith({String name, PetType type, PetSize size}) {
    return FilterState(
      pet: Pet(
        name: name,
        type: type,
        size: size,
      ),
    );
  }
}
