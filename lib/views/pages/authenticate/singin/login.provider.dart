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
    final String email = loginFormController.emailControl.text.trim();
    final String pass = loginFormController.passControl.text.trim();
    // ignore: avoid_print
    print('email $email, pass $pass');

    return authenticateBloc.add(
      AuthErrorEvent(messageError: 'Ingresa los datos correctamente'),
    );

    // final isValidForm =
    //     loginFormController.formLoginKey.currentState?.validate();
    // // ignore: avoid_print
    // print('the form is $isValidForm');
    // if (isValidForm == false) {
    //   return authenticateBloc.add(
    //     AuthErrorEvent(messageError: 'Ingresa los datos correctamente'),
    //   );
    // }

    // authenticateBloc.add(LogIn(email: email, pass: pass));
  }
}
