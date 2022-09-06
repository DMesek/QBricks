# Repository

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create your repository with provided dependencies and methods, together with a test file template

## Prerequisites

Installed version of [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)

## How to use 🚀

```
mason make repository --name loginRepository --feature_name login
```

## Variables ✨

| Variable         | Description                      | Default         | Type      |
| ---------------- | -------------------------------- | --------------- | --------- |
| `name`           | The name of the repository       | loginRepository | `string`  |
| `feautre_name`   | The name of the feature          | login           | `string`  |

## Outputs 📦

```
mason make repository --name loginRepository --feature_name login
├── features
      ├── login
          ├── data
                ├── repositories
                      ├── login_repository.dart
```

```dart
// login_repository.dart
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/user.dart';


final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepositoryImpl(
      ref.read(apiClientProvider),
  );
});

abstract class LoginRepository { 
  Future<User> login();
  
}

class LoginRepositoryImpl implements LoginRepository{
  final ApiClient _apiClient;
  

  LoginRepositoryImpl(this._apiClient,);
  
  
  @override
  Future<User> login() async {
    // TODO: - Implement method
  } 
}


// login_repository_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockApiClient extends Mock implements ApiClient {} 


void main() {
  late ApiClient apiClient;
  
  late LoginRepository loginRepository;
  setUp(() {
    apiClient = MockApiClient();
    
    loginRepository = LoginRepositoryImpl(apiClient);
  });

    
    
    group('login()', () {
      test('executes success flow', () async {
        final value = loginRepository.login()();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = loginRepository.login()();
        //expect(value, equals(smth));
      });
    });
    

}

```