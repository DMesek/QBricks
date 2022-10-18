import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/notifiers/authentication_notifier.dart';

class AuthenticationPage extends ConsumerWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final state = ref.watch(authenticationNotifierProvider);
    return state.when(
      data: () => AuthenticationBody(),
      loading: () => Container(),
      error: () => Container(),
    );
  }
}
