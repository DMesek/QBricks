import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/authentication_repository.dart';
import 'authentication_state.dart';

final authenticationNotifierProvider = StateNotifierProvider<AuthenticationNotifier, AuthenticationState>(
  (ref) => AuthenticationNotifier(
    ref.read(authenticationRepositoryProvider),
  ),
);

class AuthenticationNotifier extends StateNotifier<AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationNotifier(
    this._authenticationRepository,
  ) : super(const AuthenticationState.loading());
}