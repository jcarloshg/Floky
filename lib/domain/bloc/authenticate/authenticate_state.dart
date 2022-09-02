part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateState {
  final Student student;

  const AuthenticateState({required this.student});
}

class AuthenticateLoading extends AuthenticateState {
  const AuthenticateLoading({required super.student});
}

class AuthenticateInitial extends AuthenticateState {
  const AuthenticateInitial({required super.student});
}
