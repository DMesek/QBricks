part of 'user_response.dart';

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      name: json['name'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) => <String, dynamic>{ 
      'name': instance.name,
      'age': instance.age,
    };