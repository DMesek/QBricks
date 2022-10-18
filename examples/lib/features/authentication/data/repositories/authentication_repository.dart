import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticationRepositoryProvider = Provider<AuthenticationRepository>((ref) {
  return AuthenticationRepositoryImpl(
      ref.read(someDependencyProvider),ref.read(anotherDependencyProvider),
  );
});

abstract class AuthenticationRepository { 
  Future<void> login();
  
  Future<void> logout();
  
}

class AuthenticationRepositoryImpl implements AuthenticationRepository{
  AuthenticationRepositoryImpl(this.someDependency,this.anotherDependency,);
  SomeDependency someDependency;
  AnotherDependency anotherDependency;
  
  
  @override
  Future<void> login() async {
    // TODO: - Implement method
  } 
  @override
  Future<void> logout() async {
    // TODO: - Implement method
  } 
}