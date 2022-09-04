# Model

A brick to create your entity for a desired feature with properties, copyWith and equatable.
This brick supports custom types and custom lists!

## How to use 🚀

```
mason make entity --model_name user --feature_name login
```

## Variables ✨

| Variable         | Description                      | Default | Type      |
| ---------------- | -------------------------------- | ------- | --------- |
| `model_name`     | The name of the model            | user    | `string`  |
| `feature_name`   | The name of the feature          | login   | `string`  |

## Outputs 📦

```
mason make entity --model_name user --feature_name login
├── features
      ├── login
          ├── domain
                ├── user.dart
```

```dart
import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.name,
    required this.age,
  });

  final String name;
  final int age;

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
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

```
