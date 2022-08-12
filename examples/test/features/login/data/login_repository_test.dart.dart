import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDep extends Mock implements SomeDep {} 
class MockAnotherDep extends Mock implements AnotherDep {} 


void main() {
  late MockSomeDep someDep;
  late MockAnotherDep anotherDep;
  
  late Login login;
  setUp(() {
    someDep = MockLogin();
    anotherDep = MockLogin();
    
    login = Login(someDep,anotherDep,);
  });

    group('Login', () {
    test('can be instantiated', () {
      expect(const Login(someDep,anotherDep,), isNotNull);
    });
    
    group('login', () {
      test('executes success flow', () async {
        final value = login.login();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = login.login();
        //expect(value, equals(smth));
      });
    });
    
    group('saySomething', () {
      test('executes success flow', () async {
        final value = login.saySomething();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = login.saySomething();
        //expect(value, equals(smth));
      });
    });
    
  });

}