# Entity

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create your entity for a desired feature with properties, copyWith and equatable.
This brick supports custom types and custom lists!

## Prerequisites

Installed version of [Equatable](https://pub.dev/packages/equatable)

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
                ├── entities
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
