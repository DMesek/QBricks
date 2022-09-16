import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/repositories/{{name.snakeCase()}}.dart';
import 'package:{{project_name.snakeCase()}}/common/data/api_client.dart';



{{#dependencies}}
class Mock{{dependencyName.pascalCase()}} extends Mock implements {{dependencyName.pascalCase()}} {} {{/dependencies}}
class MockApiClient extends Mock implements ApiClient {} 

void main() {
  late ApiClient apiClient;
  {{#dependencies}}late {{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  late {{name.pascalCase()}} {{name.camelCase()}};
  setUp(() {
    apiClient = MockApiClient();
    {{#dependencies}}{{dependencyName.camelCase()}} = Mock{{dependencyName.pascalCase()}}();
    {{/dependencies}}
    {{name.camelCase()}} = {{name.pascalCase()}}Impl(apiClient, {{#dependencies}}{{dependencyName.camelCase()}},{{/dependencies}});
  });

    
    {{#methods}}
    group('{{methodName}}', () {
      test('executes success flow', () async {
        final value = {{name.camelCase()}}.{{methodName}};
        //expect(value, equals(smth));
      });

      test('executes failure flow', () async {
        final value = {{name.camelCase()}}.{{methodName}};
        //expect(value, equals(smth));
      });
    });
    {{/methods}}

}