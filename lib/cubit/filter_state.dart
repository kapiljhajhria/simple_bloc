part of 'filter_cubit.dart';

abstract class FilterState {
  final Pet pet;
  const FilterState(this.pet);
}

class FilterCopyWith extends FilterState {
  FilterCopyWith(pet) : super(pet);
}

class FilterInitialState extends FilterState {
  FilterInitialState() : super(Pet(type: PetType.all));
}

// class FilterState {
//   final Pet pet;
//   const FilterState({this.pet});

//   factory FilterState.init() {
//     return FilterState(pet: Pet(type: PetType.all));
//   }

//   factory FilterState.copyWith({String name, PetType type, PetSize size}) {
//     return FilterState(
//       pet: Pet(
//         name: name,
//         type: type,
//         size: size,
//       ),
//     );
//   }
// }
