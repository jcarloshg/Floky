part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateEvent {}

class AuthCleanState extends AuthenticateEvent {}

class AuthErrorEvent extends AuthenticateEvent {
  final String messageError;
  AuthErrorEvent({required this.messageError});
}

class AuthSingInEvent extends AuthenticateEvent {
  final String email;
  final String pass;

  AuthSingInEvent({
    required this.email,
    required this.pass,
  });
}

class AuthSingUpEvent extends AuthenticateEvent {
  final String name;
  final String registerSchool;
  final String email;
  final String pass;

  AuthSingUpEvent({
    required this.name,
    required this.registerSchool,
    required this.email,
    required this.pass,
  });
}

class AuthResendSignUpCodeEvent extends AuthenticateEvent {
  final String email;
  AuthResendSignUpCodeEvent({required this.email});
}

class AuthConfirmSignUpEvent extends AuthenticateEvent {
  final String email;
  final String confirmationCode;

  AuthConfirmSignUpEvent({
    required this.email,
    required this.confirmationCode,
  });
}

class AuthSendCodeResetPassEvent extends AuthenticateEvent {
  final String email;
  AuthSendCodeResetPassEvent({required this.email});
}

class LogOut extends AuthenticateEvent {}
