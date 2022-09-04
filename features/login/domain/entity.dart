import 'package:equatable/equatable.dart';

/// {@template entity}
/// Entity description
/// {@endtemplate}
class Entity extends Equatable {
  /// {@macro entity}
  const Entity({ 
    required this.name,
    required this.age,
  });

  /// A description for name
  final String name;
  /// A description for age
  final int age;
  /// Creates a copy of the current Entity with property changes
  Entity copyWith({ 
    String? name,
    int? age,
  }) {
    return Entity(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
  @override
  List<Object?> get props => [
        name,
        age,
      ];
}
