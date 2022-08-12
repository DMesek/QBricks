import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  return LoginRepositoryImpl(
      ref.read(someDepProvider),ref.read(anotherDepProvider),
  );
});

abstract class LoginRepository { 
  Future<String> login();
  
  Future<void> saySomething();
  
}

class LoginRepositoryImpl implements LoginRepository{
  LoginRepositoryImpl(this.someDep,this.anotherDep,);
  SomeDep someDep;
  AnotherDep anotherDep;
  
  
  @override
  Future<String> login() async {
    // TODO: - Implement method
  } 
  @override
  Future<void> saySomething() async {
    // TODO: - Implement method
  } 
}