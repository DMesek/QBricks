import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
{{#dependencies}}
class Mock{{dependencyName.pascalCase()}} extends Mock implements {{dependencyName.pascalCase()}} {} {{/dependencies}}


void main() {
  {{#dependencies}}late {{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  late {{name.pascalCase()}} {{name.camelCase()}};
  setUp(() {
    {{#dependencies}}{{dependencyName.camelCase()}} = Mock{{dependencyName.pascalCase()}}();
    {{/dependencies}}
    {{name.camelCase()}} = {{name.pascalCase()}}Impl({{#dependencies}}{{dependencyName.camelCase()}},{{/dependencies}});
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

}