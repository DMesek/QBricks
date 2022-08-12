import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/login_repository.dart';
import 'login_state.dart';

final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(
    ref.read(loginRepositoryProvider),
  ),
);

class LoginNotifier extends StateNotifier<LoginState> {
  final LoginRepository _loginRepository;

  LoginNotifier(
    this._loginRepository,
  ) : super(const LoginState.loading());
}