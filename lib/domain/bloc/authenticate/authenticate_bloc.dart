import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:floky/domain/entities/entities.index.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  final Authenticate authenticate;

  AuthenticateBloc({required this.authenticate})
      : super(AuthenticateInitial(student: Student.getVoidStudent())) {
    on<AuthenticateEvent>((event, emit) {});

    on<AuthSingInEvent>(_authSingIn);

    on<AuthSingUpEvent>(_authSingUp);
    on<AuthResendSignUpCodeEvent>(_resendSignUpCode);
    on<AuthConfirmSignUpEvent>(_confirmSignUp);

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

  FutureOr<void> _authSingIn(event, emit) async {
    emit(AuthenticateLoading());

    final String email = event.email;
    final String pass = event.pass;
    final response = await authenticate.singIn(email: email, pass: pass);

    if (response.runtimeType == String) {
      return emit(AuthErrorState(response));
    }
  }

  FutureOr<void> _authSingUp(event, emit) async {
    emit(AuthenticateLoading());

    final String name = event.name;
    final String registerSchool = event.registerSchool;
    final String email = event.email;
    final String pass = event.pass;

    final response = await authenticate.singUp(
      name: name,
      email: email,
      pass: pass,
    );

    // ignore: avoid_print
    print('auth/singup $response');

    if (response.runtimeType == String) {
      return emit(AuthErrorState(response));
    }
    if (response.runtimeType == bool && response == false) {
      return emit(const AuthErrorState('Error inesperado'));
    }
    final Student student = Student('', '', email, name, '', registerSchool);
    return emit(AuthSingUpState(student));
  }

  FutureOr<void> _resendSignUpCode(event, emit) async {
    emit(AuthenticateLoading());
    final String email = event.email;
    await authenticate.resendCode(email: email);
    return emit(AuthResendSignUpCodeState());
  }

  FutureOr<void> _confirmSignUp(AuthConfirmSignUpEvent event, emit) async {
    emit(AuthenticateLoading());

    final String email = event.email;
    final String confirmationCode = event.confirmationCode;

    final isConfirmedSignUp = await authenticate.confirmSignUp(
      username: email,
      confirmationCode: confirmationCode,
    );

    if (isConfirmedSignUp is String) {
      return emit(AuthErrorState(isConfirmedSignUp));
    }

    return emit(AuthConfirmSignUpState());
  }

  FutureOr<void> _logOut(event, emit) async {
    emit(AuthenticateLoading());
    await authenticate.logout();
    return emit(AuthenticateInitial(student: Student.getVoidStudent()));
  }

  void authErrorEvent(String error) {
    return add(AuthErrorEvent(messageError: error));
  }

  void cleanState() {
    return add(AuthCleanState());
  }
}
