import 'package:hooks_riverpod/hooks_riverpod.dart';

final {{name.camelCase()}}RepositoryProvider = Provider<{{name.pascalCase()}}Repository>((ref) {
  return {{name.pascalCase()}}RepositoryImpl();
});

abstract class {{name.pascalCase()}}Repository {}

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository{}
