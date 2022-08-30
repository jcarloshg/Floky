part of 'authenticate_bloc.dart';

@immutable
abstract class AuthenticateState {
  Student student;

  AuthenticateState({required this.student});
}

class AuthenticateInitial extends AuthenticateState {
  AuthenticateInitial({required super.student});
}
