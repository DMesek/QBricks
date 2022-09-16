import 'package:hooks_riverpod/hooks_riverpod.dart';
{{#dependencies}}
import 'package:{{project_name.snakeCase()}}/features/{{feature_name.snakeCase()}}/data/repositories/{{dependencyName.snakeCase()}}.dart';
{{/dependencies}}
import 'package:{{project_name.snakeCase()}}/common/domain/notifiers/base_state_notifier.dart';
import 'package:{{project_name.snakeCase()}}/common/domain/notifiers/base_state.dart';


final {{name.camelCase()}}Provider = StateNotifierProvider<{{name.pascalCase()}}, BaseState<{{entity.pascalCase()}}, Object>>((ref) {
  return {{name.pascalCase()}}(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}, ref.read
  );
});

class {{name.pascalCase()}} extends BaseStateNotifier<{{entity.pascalCase()}}, Object>{
  {{#dependencies}}final {{dependencyName.pascalCase()}} _{{dependencyName.camelCase()}};
  {{/dependencies}}

  {{name.pascalCase()}}({{#dependencies}}this._{{dependencyName.camelCase()}},{{/dependencies}} Reader reader): super(const {{name.pascalCase()}}State.loading(), reader);;
  
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}} async {
    // TODO: - Implement method
  } {{/methods}}
}