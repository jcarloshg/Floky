part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateState {
  final Student? student;

  const AuthenticateState({this.student});
}

class AuthErrorState extends AuthenticateState {
  final String messageError;
  const AuthErrorState(this.messageError);
}

class AuthenticateInitial extends AuthenticateState {
  const AuthenticateInitial({required super.student});
}

class AuthenticateLoading extends AuthenticateState {}