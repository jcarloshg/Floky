part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateState {
  final Student? student;

  const AuthenticateState({this.student});
}

class AuthenticateInitial extends AuthenticateState {
  const AuthenticateInitial({required super.student});
}

class AuthenticateLoading extends AuthenticateState {}

class AuthenticateError extends AuthenticateState {
  final String messageError;
  const AuthenticateError({required this.messageError});
}
