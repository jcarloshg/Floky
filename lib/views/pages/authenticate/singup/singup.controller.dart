import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';

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

  void singUp(AuthenticateBloc authenticateBloc) {
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

  void confirmSignUp(AuthenticateBloc authenticateBloc) {
    final isValidForm =
        confirmSignUpFormController.confirmSignUpKey.currentState?.validate();
    if (isValidForm == false) {
      return authenticateBloc.authErrorEvent('El código no condice');
    }
  }

  void goScreen(
    AuthenticateBloc authenticateBloc,
    BuildContext context,
    String route,
  ) {
    // ignore: avoid_print
    print('===========================================asldkfjaslkdjfaslkdfo');
    authenticateBloc.cleanState();
    Navigator.pushNamed(context, route);
  }
}
