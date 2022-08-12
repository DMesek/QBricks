import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/notifiers/login_notifier.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final state = ref.watch(loginNotifierProvider);
    return state.when(
      data: () => LoginBody(),
      loading: () => Container(),
      error: () => Container(),
    );
  }
}
