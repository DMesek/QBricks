import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#methods}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/domain/entities/{{type.snakeCase()}}.dart';
{{/methods}}

final {{name.camelCase()}}Provider = Provider<{{name.pascalCase()}}>((ref) {
  return {{name.pascalCase()}}Impl(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

abstract class {{name.pascalCase()}} { {{#methods}}
  Future<{{type}}> {{methodName}};
  {{/methods}}
}

class {{name.pascalCase()}}Impl implements {{name.pascalCase()}}{
  {{#dependencies}}final {{dependencyName.pascalCase()}} _{{dependencyName.camelCase()}};
  {{/dependencies}}

  {{name.pascalCase()}}Impl({{#dependencies}}this._{{dependencyName.camelCase()}},{{/dependencies}});
  
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}} async {
    throw UnimplementedError();
  } {{/methods}}
}