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
      : super(AuthenticateInitial(Params())) {
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
    return emit(AuthenticateInitial(Params()));
  }

  FutureOr<void> _authErrorEvent(AuthErrorEvent event, emit) {
    final student = state.params.student;
    final params = Params(messageError: event.messageError, student: student);
    return emit(params);
  }

  FutureOr<void> _authSingIn(event, emit) async {
    emit(AuthenticateLoading(state.params));

    final String email = event.email;
    final String pass = event.pass;
    final response = await authenticate.singIn(email: email, pass: pass);

    final student = state.params.student;
    final messageError = response.msg;
    final params = Params(student: student, messageError: messageError);

    return response.isOK == false
        ? emit(AuthErrorState(params))
        : emit(AuthLogInState(params));
  }

  FutureOr<void> _authSingUp(event, emit) async {
    emit(AuthenticateLoading(state.params));

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
      final student = state.params.student;
      final params = Params(student: student, messageError: response);
      return emit(AuthErrorState(params));
    }

    final Student student = Student('', '', email, name, '', registerSchool);
    final params = Params(student: student);
    return emit(AuthSingUpState(params));
  }

  FutureOr<void> _resendSignUpCode(event, emit) async {
    emit(AuthenticateLoading(state.params));
    final String email = event.email;
    await authenticate.resendCode(email: email);
    return emit(AuthResendSignUpCodeState(state.params));
  }

  FutureOr<void> _confirmSignUp(AuthConfirmSignUpEvent event, emit) async {
    emit(AuthenticateLoading(state.params));

    final String email = event.email;
    final String confirmationCode = event.confirmationCode;

    final isConfirmedSignUp = await authenticate.confirmSignUp(
      username: email,
      confirmationCode: confirmationCode,
    );

    if (isConfirmedSignUp is String) {
      final student = state.params.student;
      final params = Params(student: student, messageError: isConfirmedSignUp);
      return emit(AuthErrorState(params));
    }

    return emit(AuthConfirmSignUpState(state.params));
  }

  FutureOr<void> _logOut(event, emit) async {
    emit(AuthenticateLoading(state.params));
    await authenticate.logout();
    return emit(AuthenticateInitial(Params()));
  }

  void authErrorEvent(String error) {
    return add(AuthErrorEvent(messageError: error));
  }

  void cleanState() {
    return add(AuthCleanState());
  }
}
