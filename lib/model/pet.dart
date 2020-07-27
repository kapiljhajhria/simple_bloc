enum PetType {
  dog,
  cat,
  all,
  other,
}
enum PetSize {
  small,
  medium,
  large,
}

class Pet {
  final String name;
  final PetType type;
  final PetSize size;
  const Pet({this.name, this.size, this.type});
}
