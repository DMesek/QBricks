import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/notifiers/{{name.snakeCase()}}_notifier.dart';

class {{name.pascalCase()}}Page extends ConsumerWidget {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final state = ref.watch({{name.camelCase()}}NotifierProvider);
    return state.when(
      data: ({{entity.camelCase()}}) => {{name.pascalCase()}}Body(),
      loading: () => Container(),
      error: () => Container(),
    );
  }
}
