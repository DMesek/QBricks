import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.data( ) = _Data;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.error() = _Error;
}
