import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/{{name.snakeCase()}}_repository.dart';
import '{{name.snakeCase()}}_state.dart';

final {{name.camelCase()}}NotifierProvider = StateNotifierProvider<{{name.pascalCase()}}Notifier, {{name.pascalCase()}}State>(
  (ref) => {{name.pascalCase()}}Notifier(
    ref.read({{name.camelCase()}}RepositoryProvider),
  ),
);

class {{name.pascalCase()}}Notifier extends StateNotifier<{{name.pascalCase()}}State> {
  final {{name.pascalCase()}}Repository _{{name.camelCase()}}Repository;

  {{name.pascalCase()}}Notifier(
    this._{{name.camelCase()}}Repository,
  ) : super(const {{name.pascalCase()}}State.loading());
}