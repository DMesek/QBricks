# Model

A brick to create your model for a desired feature with properties, copyWith, to/from json and equatable.

## How to use 🚀

```
mason make model --model_name userResponse --feature_name login
```

## Variables ✨

| Variable         | Description                      | Default      | Type      |
| ---------------- | -------------------------------- | -----------  | --------- |
| `model_name`     | The name of the model            | userResponse | `string`  |
| `feautre_name`   | The name of the feature          | login        | `string`  |

## Outputs 📦

```
mason make model --model_name userResponse --feature_name login
├── features
      ├── login
          ├── data
                ├── models
                      ├── user_response.dart
```

```dart
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

  Map<String, dynamic> toJson() => _$UserResponseToJso(this);
}


//user.g.dart
part of 'user_response.dart';

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      name: json['name'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) => <String, dynamic>{ 
      'name': instance.name,
      'age': instance.age,
    };

```
