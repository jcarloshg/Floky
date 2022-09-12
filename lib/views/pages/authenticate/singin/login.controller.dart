//============================================================
//  secuence pages
//    1. LoginScreen
//============================================================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';

class LoginFormController {
  final GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();
  LoginFormController();
}

class LoginController {
  LoginFormController loginFormController = LoginFormController();
  late AuthenticateBloc authenticateBloc;

  /// get the [BlocProvider] by [context] and return [LoginController]
  /// isFirstScreen is the flag parameter to get a new [LoginFormController]
  /// this is because the GlobalKey<FormState> is could not be the same a
  /// other GlobalKey already register in the tree components
  LoginController getController(
    BuildContext context, {
    bool isFirstScreen = false,
  }) {
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);
    this.authenticateBloc = authenticateBloc;
    if (isFirstScreen) loginFormController = LoginFormController();
    log(loginFormController.formLoginKey.toString());
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
    Navigator.pushNamed(context, PageIndex.formRegisterScreen.route);
  }

  void goConfirmationRegister(BuildContext context) {
    Navigator.pushNamed(context, PageIndex.confirmationRegister.route);
  }

  void goEnterUsername(BuildContext context) {
    Navigator.pushNamed(context, PageIndex.enterUsername.route);
    // Navigator.pushNamed(context, PageIndex.confirmResetPassword.route);
  }
}
