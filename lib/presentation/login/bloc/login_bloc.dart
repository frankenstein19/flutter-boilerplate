import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/domain/usecase/login_screen_usecase.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginScreenUseCase) : super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<OnLogin>(_onLogin);
  }
  final LoginScreenUseCase loginScreenUseCase;
  VoidCallback? onLoginSuccess;

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    final email = event.email;
    emit(state.copyWith(
        email: email.isNotEmpty ? email : event.email,
        state: email.isNotEmpty && state.password.isNotEmpty
            ? LoginButtonState.enable
            : LoginButtonState.disable,
        canLogin:
            email.isNotEmpty && state.password.isNotEmpty ? true : false));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    final password = event.password;
    emit(state.copyWith(
        password: password.isNotEmpty ? password : event.password,
        state: password.isNotEmpty && state.email.isNotEmpty
            ? LoginButtonState.enable
            : LoginButtonState.disable,
        canLogin:
            password.isNotEmpty && state.email.isNotEmpty ? true : false));
  }

  Future<void> _onLogin(OnLogin event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
        email: state.email,
        password: state.password,
        state: LoginButtonState.progress,
        canLogin: false));
   await Future.delayed(const Duration(seconds: 2));
   if(loginScreenUseCase.onLogin(state.email, state.password)) {
      if (onLoginSuccess != null) onLoginSuccess!();
    }
    emit(state.copyWith(
        state: LoginButtonState.enable,
        canLogin: false));
  }
}
