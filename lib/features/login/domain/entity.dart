import 'package:equatable/equatable.dart';

class Entity extends Equatable {
  const Entity({ 
    required this.name,
    required this.age,
  });


  final String name;

  final int age;
  
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
