import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#dependencies}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/repositories/{{dependencyName.snakeCase()}}.dart';
{{/dependencies}}

final {{name.camelCase()}}Provider = StateNotifierProvider<{{name.pascalCase()}}>((ref) {
  return {{name.pascalCase()}}(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

class {{name.pascalCase()}} extends StateNotifier<{{state.pascalCase()}}>{
  {{#dependencies}}final {{dependencyName.pascalCase()}} _{{dependencyName.camelCase()}};
  {{/dependencies}}

  {{name.pascalCase()}}({{#dependencies}}this._{{dependencyName.camelCase()}},{{/dependencies}}): super(const {{name.pascalCase()}}State.loading());;
  
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}} async {
    // TODO: - Implement method
  } {{/methods}}
}