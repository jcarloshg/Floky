import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';

class _LoginFormController {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  _LoginFormController();
}

class LoginController {
  final loginFormController = _LoginFormController();
  final AuthenticateBloc authenticateBloc;

  LoginController({
    required this.authenticateBloc,
  });

  Future<void> login() async {
    final String email = loginFormController.emailControl.text;
    final String pass = loginFormController.passControl.text;
    authenticateBloc.add(LogIn(email: email, pass: pass));
  }
}
