part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateState {
  final Student student;

  const AuthenticateState({required this.student});
}

class AuthenticateInitial extends AuthenticateState {
  const AuthenticateInitial({required super.student});
}
