import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
{{#dependencies}}
class Mock{{dependencyName.pascalCase()}} extends Mock implements {{dependencyName.pascalCase()}} {} {{/dependencies}}


void main() {
  {{#dependencies}}late Mock{{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  late {{name.pascalCase()}} {{name.camelCase()}};
  setUp(() {
    {{#dependencies}}{{dependencyName.camelCase()}} = Mock{{name.pascalCase()}}();
    {{/dependencies}}
    {{name.camelCase()}} = {{name.pascalCase()}}({{#dependencies}}{{dependencyName.camelCase()}},{{/dependencies}});
  });

    group('{{name.pascalCase()}}', () {
    test('can be instantiated', () {
      expect(const {{name.pascalCase()}}({{#dependencies}}{{dependencyName.camelCase()}},{{/dependencies}}), isNotNull);
    });
    {{#methods}}
    group('{{methodName}}', () {
      test('executes success flow', () async {
        final value = {{name.camelCase()}}.{{methodName}}();
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = {{name.camelCase()}}.{{methodName}}();
        //expect(value, equals(smth));
      });
    });
    {{/methods}}
  });

}