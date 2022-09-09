// import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/views/pages/pages.index.dart';
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

  //============================================================
  // functions navigation
  //============================================================
  void goFormRegisterScreen(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.formRegisterScreen.route);
    // Navigator.pushNamed(context, PageIndex.confirmationRegister.route);
  }

  void goConfirmAccountScreen(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.confirmationRegister.route);
  }

  void gologinIndex(BuildContext context) {
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, PageIndex.loginIndex.route);
  }
}
