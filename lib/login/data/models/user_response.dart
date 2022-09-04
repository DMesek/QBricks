import 'package:equatable/equatable.dart';

part 'user_response.g.dart';

class UserResponse extends Equatable {
  const UserResponse({ 
    required this.name,
    required this.age,
  });

  factory UserResponse.fromJson(Map<String, dynamic> data) => _$UserResponseFromJson(data);


  final String name;

  final int age;

  UserResponse copyWith({ 
    String? name,
    int? age,
  }) {
    return UserResponse(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  List<Object?> get props => [
        name,
        age,
      ];

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
