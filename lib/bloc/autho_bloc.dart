import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finance_tracker1/services/authorepository.dart';
import 'package:finance_tracker1/models/user.dart';

part 'autho_event.dart';
part 'autho_state.dart';
part 'autho_bloc.freezed.dart';

class AuthoBloc extends Bloc<AuthoEvent, AuthoState> {
  final AuthoRepository _repository;

  AuthoBloc(this._repository) : super(const AuthoState.initial()) {
    on<AuthoEvent>((event, emit) async {
      await event.map(
        signIn: (value) async => _signIn(value, emit),
        signUp: (value) async => _signUp(value, emit),
        registration: (_)  async=> _registration(emit),
      );
    }
    );
  }

  Future<void> _signIn(_SignIn value, Emitter<AuthoState> emit) async {
    emit(const AuthoState.loading());
    final bool state = await _repository.passData(login: value.username,
        password: value.password);
    if (state==true){
      final User user = await _repository.getUser(login: value.username,
          password: value.password);
      emit(AuthoState.authenticated(user));
    }
    else{
      emit(const AuthoState.failure(errTxt: 'Неверный логин или пароль'));
    }
  }

  Future<void> _signUp(_SignUp value, Emitter<AuthoState> emit) async {
    emit(const AuthoState.loading());
    final bool state = await _repository.createUser(login: value.username,
        password: value.password);
    if (state==true){
      final User user = await _repository.getUser(login: value.username,
          password: value.password);
      emit(AuthoState.authenticated(user));
    }
    else{
      emit(const AuthoState.failure(errTxt: 'Логин занят'));
    }
  }

  Future<void> _registration(Emitter<AuthoState> emit) async{
    emit(const AuthoState.loading());
    emit(const AuthoState.registration());
  }

}