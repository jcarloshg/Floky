import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:floky/domain/entities/entities.index.dart';

part 'authenticate_event.dart';
part 'authenticate_state.dart';

class AuthenticateBloc extends Bloc<AuthenticateEvent, AuthenticateState> {
  final Authenticate authenticate;

  AuthenticateBloc({required this.authenticate})
      : super(AuthenticateInitial(Params())) {
    on<AuthenticateEvent>((event, emit) {});
    on<AuthCleanState>(_authCleanState);
    on<AuthErrorEvent>(_authErrorEvent);
    on<AuthSingInEvent>(_authSingIn); // login
    on<AuthSingUpEvent>(_authSingUp); // singup
    on<AuthConfirmSignUpEvent>(_confirmSignUp);
    on<AuthResendSignUpCodeEvent>(_resendSignUpCode);
    on<AuthSendCodeResetPassEvent>(_sendCodeResetPass); // reset pass
    on<AuthConfirmResetPasswordEvent>(_confirmResetPassword);
    on<LogOut>(_logOut); // logout
  }

  FutureOr<void> _authCleanState(event, emit) {
    return emit(AuthenticateInitial(Params()));
  }

  FutureOr<void> _authErrorEvent(AuthErrorEvent event, emit) {
    final student = state.params.student;
    final msg = event.messageError;
    final params = Params(messageError: msg, student: student);
    return emit(AuthErrorState(params));
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

    developer.log('auth/singup ${response.isOK}');

    final student = Student('', '', email, name, '', registerSchool);
    final message = response.msg;
    // final data = response.data;
    final params = Params(student: student, messageError: message);

    return response.isOK
        ? emit(AuthSingUpState(params))
        : emit(AuthErrorState(params));
  }

  FutureOr<void> _resendSignUpCode(event, emit) async {
    emit(AuthenticateLoading(state.params));

    final String email = event.email;
    final resResendCode = await authenticate.resendCode(email: email);

    final Student? student = state.params.student;
    final msg = resResendCode.msg;
    final params = Params(student: student, messageError: msg);

    return resResendCode.isOK
        ? emit(AuthResendSignUpCodeState(params))
        : emit(AuthErrorState(params));
  }

  FutureOr<void> _confirmSignUp(AuthConfirmSignUpEvent event, emit) async {
    emit(AuthenticateLoading(state.params));

    final String email = event.email;
    final String confirmationCode = event.confirmationCode;

    final resConfirmSignUp = await authenticate.confirmSignUp(
      username: email,
      confirmationCode: confirmationCode,
    );

    final Student? student = state.params.student;
    final String? message = resConfirmSignUp.msg;
    final params = Params(student: student, messageError: message);

    return resConfirmSignUp.isOK
        ? emit(AuthConfirmSignUpState(params))
        : emit(AuthErrorState(params));
  }

  FutureOr<void> _sendCodeResetPass(
    AuthSendCodeResetPassEvent event,
    Emitter<AuthenticateState> emit,
  ) async {
    emit(AuthenticateLoading(state.params));
    final String emailToSendCode = event.email;
    final resForgetPass = await authenticate.forgetPass(email: emailToSendCode);

    final Student? student = state.params.student;
    final String? message = resForgetPass.msg;
    final params = Params(student: student, messageError: message);

    return resForgetPass.isOK
        ? emit(AuthSendCodeResetPassState(params))
        : emit(AuthErrorState(params));
  }

  FutureOr<void> _confirmResetPassword(
    AuthConfirmResetPasswordEvent event,
    Emitter<AuthenticateState> emit,
  ) async {
    emit(AuthenticateLoading(state.params));

    final String username = event.username;
    final String newPass = event.newPass;
    final String confirmationCode = event.confirmationCode;

    final resConfirmResetPassword = await authenticate.confirmResetPassword(
      username: username,
      newPass: newPass,
      confirmationCode: confirmationCode,
    );

    final student = state.params.student;
    final message = resConfirmResetPassword.msg;
    final Params params = Params(student: student, messageError: message);

    developer.log('authBloc/_confiResetPass: ${resConfirmResetPassword.isOK}');

    return resConfirmResetPassword.isOK
        ? emit(AuthConfirmResetPasswordState(params))
        : emit(AuthErrorState(params));
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
