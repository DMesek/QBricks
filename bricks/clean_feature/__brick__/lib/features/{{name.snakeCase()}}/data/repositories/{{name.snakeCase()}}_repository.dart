import 'package:hooks_riverpod/hooks_riverpod.dart';

final {{name.camelCase()}}RepositoryProvider = Provider<{{name.pascalCase()}}Repository>((ref) {
  return {{name.pascalCase()}}RepositoryImpl(
      {{#dependencies}}ref.read({{dependencyName.camelCase()}}Provider),{{/dependencies}}
  );
});

abstract class {{name.pascalCase()}}Repository { {{#methods}}
  Future<{{type}}> {{methodName}}();
  {{/methods}}
}

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository{
  {{name.pascalCase()}}RepositoryImpl({{#dependencies}}this.{{dependencyName.camelCase()}},{{/dependencies}});
  {{#dependencies}}{{dependencyName.pascalCase()}} {{dependencyName.camelCase()}};
  {{/dependencies}}
  {{#methods}}
  @override
  Future<{{type}}> {{methodName}}() async {
    // TODO: - Implement method
  } {{/methods}}
}