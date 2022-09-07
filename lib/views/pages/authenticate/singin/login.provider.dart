// import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';

class LoginFormController {
  final GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();
  LoginFormController();
}

class LoginProvider extends ChangeNotifier {
  final LoginFormController loginFormController = LoginFormController();
  final AuthenticateBloc authenticateBloc;

  LoginProvider({
    required this.authenticateBloc,
  });

  Future<void> login() async {
    final isValidForm =
        loginFormController.formLoginKey.currentState?.validate();

    if (isValidForm == false) {
      return authenticateBloc.authErrorEvent('Ingresa los datos correctamente');
    }

    final String email = loginFormController.emailControl.text.trim();
    final String pass = loginFormController.passControl.text.trim();
    return authenticateBloc.add(AuthSingInEvent(email: email, pass: pass));
  }

  void goScreen(BuildContext context, String route) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, route);
  }
}
