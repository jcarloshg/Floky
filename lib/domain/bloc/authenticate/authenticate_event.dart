part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateEvent {}

class LogIn extends AuthenticateEvent {
  final String email;
  final String pass;

  LogIn({
    required this.email,
    required this.pass,
  });
}

class LogOut extends AuthenticateEvent {}
