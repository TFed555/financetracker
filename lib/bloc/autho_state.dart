part of 'autho_bloc.dart';

@freezed
class AuthoState with _$AuthoState {
  const factory AuthoState.initial() = _Initial;
  const factory AuthoState.loading() = _Loading;
  const factory AuthoState.validate() = _Validate;
  const factory AuthoState.authenticated(User user) = _Authenticated;
  const factory AuthoState.registration() = _Registration;
  const factory AuthoState.failure({required String errTxt}) = _Failure;
}
