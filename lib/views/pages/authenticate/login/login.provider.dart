// import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';

class LoginFormController {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  LoginFormController();
}

class LoginProvider extends ChangeNotifier {
  GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  final LoginFormController loginFormController = LoginFormController();
  final AuthenticateBloc authenticateBloc;

  LoginProvider({
    required this.authenticateBloc,
  });

  Future<void> login() async {
    // final String email = loginFormController.emailControl.text;
    // final String pass = loginFormController.passControl.text;
    // authenticateBloc.add(LogIn(email: email, pass: pass));
  }
}
