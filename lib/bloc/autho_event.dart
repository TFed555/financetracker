part of 'autho_bloc.dart';

@freezed
class AuthoEvent with _$AuthoEvent {
  const factory AuthoEvent.signIn({
    required String username,
    required String password,
  }) = _SignIn;
  const factory AuthoEvent.signUp({
    required String username,
    required String password
  }) = _SignUp;
  const factory AuthoEvent.registration() = _Registrating;
}
