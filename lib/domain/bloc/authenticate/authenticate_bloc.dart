import 'dart:async';
import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:floky/domain/entities/entities.index.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  final Authenticate authenticate;

  AuthenticateBloc({required this.authenticate})
      : super(
          AuthenticateInitial(student: Student.getVoidStudent()),
        ) {
    on<AuthenticateEvent>((event, emit) {});
    on<LogIn>(_logIn);
    on<AuthSingUp>(_authSingUp);
    on<LogOut>(_logOut);
    on<AuthCleanState>(_authCleanState);
    on<AuthErrorEvent>(_authErrorEvent);
  }

  FutureOr<void> _authCleanState(event, emit) {
    return emit(AuthenticateInitial(student: Student.getVoidStudent()));
  }

  FutureOr<void> _authErrorEvent(event, emit) {
    return emit(AuthErrorState(event.messageError));
  }

  FutureOr<void> _logIn(event, emit) async {
    emit(AuthenticateLoading());

    final String email = event.email;
    final String pass = event.pass;
    final response = await authenticate.login(email: email, pass: pass);

    if (response.runtimeType == String) {
      return emit(AuthErrorState(response));
    }
  }

  FutureOr<void> _authSingUp(event, emit) {
    final String name = event.name;
    final String registerSchool = event.registerSchool;
    final String email = event.email;
    final String pass = event.pass;
    // ignore: avoid_print
    print('[auth/singup] $email $pass $name $registerSchool');
  }

  FutureOr<void> _logOut(event, emit) {
    return emit(AuthenticateLoading());
  }

  void authErrorEvent(String error) {
    return add(AuthErrorEvent(messageError: error));
  }

  void cleanState() {
    return add(AuthCleanState());
  }
}
