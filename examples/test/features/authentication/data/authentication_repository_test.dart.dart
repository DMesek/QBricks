import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockSomeDependency extends Mock implements SomeDependency {} 
class MockAnotherDependency extends Mock implements AnotherDependency {} 


void main() {
  late MockSomeDependency someDependency;
  late MockAnotherDependency anotherDependency;
  
  late Authentication authentication;
  setUp(() {
    someDependency = MockAuthentication();
    anotherDependency = MockAuthentication();
    
    authentication = Authentication(someDependency,anotherDependency,);
  });

    group('Authentication', () {
    test('can be instantiated', () {
      expect(const Authentication(someDependency,anotherDependency,), isNotNull);
    });
    
    group('login', () {
      test('executes success flow', () async {
        final value = authentication.login();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = authentication.login();
        //expect(value, equals(smth));
      });
    });
    
    group('logout', () {
      test('executes success flow', () async {
        final value = authentication.logout();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = authentication.logout();
        //expect(value, equals(smth));
      });
    });
    
  });

}