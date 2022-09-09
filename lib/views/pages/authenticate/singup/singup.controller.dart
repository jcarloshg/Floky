//============================================================
//  secuence pages
//    1. formRegisterScreen
//    2. confirmaccount
//    3. confirmation_register
//============================================================

import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpFormController {
  GlobalKey<FormState> formRegisterKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController registerSchool = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  SingUpFormController();
}

class ConfirmSignUpFormController {
  GlobalKey<FormState> confirmSignUpKey = GlobalKey<FormState>();
  final TextEditingController codeVerification = TextEditingController();
  ConfirmSignUpFormController();
}

class SingupController {
  final singUpFormController = SingUpFormController();
  final confirmSignUpFormController = ConfirmSignUpFormController();
  late AuthenticateBloc authenticateBloc;

  /// get the [BlocProvider] by [context] and return [SingupController]
  SingupController getController(BuildContext context) {
    final authenticateBloc = BlocProvider.of<AuthenticateBloc>(context);
    this.authenticateBloc = authenticateBloc;
    return this;
  }

  void printStatus() {
    final String name = singUpFormController.name.text.trim();
    final String registerSchool =
        singUpFormController.registerSchool.text.trim();
    final String email = singUpFormController.email.text.trim();
    final String pass = singUpFormController.pass.text.trim();
    // ignore: avoid_print
    print('singUpFormController : $name $registerSchool $email $pass');

    final codeVerification =
        confirmSignUpFormController.codeVerification.text.trim();
    // ignore: avoid_print
    print('confirmSignUpFormController : $codeVerification');
  }

  void singUp() {
    final isValidForm =
        singUpFormController.formRegisterKey.currentState?.validate();
    if (isValidForm == false) {
      return authenticateBloc.authErrorEvent('Ingresa los datos correctamente');
    }

    final String name = singUpFormController.name.text.trim();
    final String registerSchool =
        singUpFormController.registerSchool.text.trim();
    final String email = singUpFormController.email.text.trim();
    final String pass = singUpFormController.pass.text.trim();
    return authenticateBloc.add(AuthSingUpEvent(
      name: name,
      registerSchool: registerSchool,
      email: email,
      pass: pass,
    ));
  }

  void confirmSignUp() {
    final isValidForm =
        confirmSignUpFormController.confirmSignUpKey.currentState?.validate();
    if (isValidForm == false) {
      return authenticateBloc.authErrorEvent('Deben ser ser dígitos');
    }

    final email = singUpFormController.email.text.trim();
    final confirmationCode =
        confirmSignUpFormController.codeVerification.text.trim();

    return authenticateBloc.add(AuthConfirmSignUpEvent(
      email: email,
      confirmationCode: confirmationCode,
    ));
  }

  void resendSignUpCode() {
    final email = singUpFormController.email.text.trim();
    authenticateBloc.add(AuthResendSignUpCodeEvent(email: email));
  }

  //============================================================
  // functions navigation
  //============================================================
  void goConfirmAccountScreen(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.confirmAccountScreen.route);
  }

  void goConfirmationRegister(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.confirmationRegister.route);
  }

  void goLoginScreen(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.loginScreen.route);
  }
}
