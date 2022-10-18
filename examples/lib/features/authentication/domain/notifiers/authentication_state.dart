import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.data( ) = _Data;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.error() = _Error;
}
