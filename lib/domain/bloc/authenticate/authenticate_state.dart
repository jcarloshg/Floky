part of 'authenticate_bloc.dart';

class Params {
  final Student? student;
  final String? messageError;
  Params({
    this.student,
    this.messageError,
  });
}

@immutable
abstract class AuthenticateState {
  final Params params;
  const AuthenticateState(this.params);
}

class AuthErrorState extends AuthenticateState {
  const AuthErrorState(Params params) : super(params);
}

class AuthLogInState extends AuthenticateState {
  const AuthLogInState(Params params) : super(params);
}

class AuthenticateInitial extends AuthenticateState {
  const AuthenticateInitial(Params params) : super(params);
}

class AuthenticateLoading extends AuthenticateState {
  const AuthenticateLoading(Params params) : super(params);
}

class AuthSingUpState extends AuthenticateState {
  const AuthSingUpState(Params params) : super(params);
}

class AuthResendSignUpCodeState extends AuthenticateState {
  const AuthResendSignUpCodeState(Params params) : super(params);
}

class AuthConfirmSignUpState extends AuthenticateState {
  const AuthConfirmSignUpState(Params params) : super(params);
}

class AuthSendCodeResetPassState extends AuthenticateState {
  const AuthSendCodeResetPassState(Params params) : super(params);
}

class AuthConfirmResetPasswordState extends AuthenticateState {
  const AuthConfirmResetPasswordState(Params params) : super(params);
}
