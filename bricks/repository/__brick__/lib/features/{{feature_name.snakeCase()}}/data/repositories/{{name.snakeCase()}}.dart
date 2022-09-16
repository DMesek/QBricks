import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#methods}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{type.snakeCase()}}.dart';
{{/methods}}
import 'package:{{project_name.snakeCase()}}/common/data/api_client.dart';


final {{name.camelCase()}}Provider = Provider<{{name.pascalCase()}}>((ref) {
  return {{name.pascalCase()}}Impl(
      ref.read(apiClientProvider),
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

abstract class {{name.pascalCase()}} { {{#methods}}
  Future<{{type}}> {{methodName}};
  {{/methods}}
}

class {{name.pascalCase()}}Impl implements {{name.pascalCase()}}{
  final ApiClient _apiClient;
  {{#dependencies}}final {{dependencyName.pascalCase()}} _{{dependencyName.camelCase()}};
  {{/dependencies}}

  {{name.pascalCase()}}Impl(this._apiClient, {{#dependencies}}this._{{dependencyName.camelCase()}},{{/dependencies}});
  
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}} async {
    throw UnimplementedError();
  } {{/methods}}
}