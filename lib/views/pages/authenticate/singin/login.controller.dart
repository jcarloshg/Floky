import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormController {
  final GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();
  LoginFormController();
}

class LoginController {
  final LoginFormController loginFormController = LoginFormController();
  late AuthenticateBloc authenticateBloc;

  /// get the [BlocProvider] by [context] and return [LoginController]
  LoginController getController(BuildContext context) {
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);
    this.authenticateBloc = authenticateBloc;
    return this;
  }

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

  Future<void> logout() async {
    return authenticateBloc.add(LogOut());
  }

  //============================================================
  // functions navigation
  //============================================================
  void goFormRegisterScreen(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.formRegisterScreen.route);
    // Navigator.pushNamed(context, PageIndex.confirmationRegister.route);
  }
}
