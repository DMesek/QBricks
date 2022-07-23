import 'package:equatable/equatable.dart';

class {{entity.pascalCase()}} extends Equatable {
  final String property;
  const {{entity.pascalCase()}}({
    required this.property,
  });

  @override
  List<Object?> get props => [property];

}
