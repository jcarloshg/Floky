import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';

class LoginFormController {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();
  LoginFormController();
}

class AuthenticateLogin extends AuthenticateBloc {
  GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  final LoginFormController loginFormController = LoginFormController();

  AuthenticateLogin({required super.authenticate}) {
    on<LogIn>((event, emit) => null);
  }
}
