import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:safeprint/safeprint.dart';

class SingUpFormController {
  GlobalKey<FormState> formRegisterKey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController registerSchool = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();

  SingUpFormController();
}

class SingUpProvider extends ChangeNotifier {
  final SingUpFormController singUpFormController = SingUpFormController();
  final AuthenticateBloc authenticateBloc;

  SingUpProvider({
    required this.authenticateBloc,
  });

  void singUp() {
    final isValidForm =
        singUpFormController.formRegisterKey.currentState?.validate();
    if (isValidForm == false) {
      return authenticateBloc.authErrorEvent('Ingresa los datos correctamente');
    }

    final String name = singUpFormController.name.text;
    final String registerSchool = singUpFormController.registerSchool.text;
    final String email = singUpFormController.email.text;
    final String pass = singUpFormController.pass.text;
    return authenticateBloc.add(AuthSingUpEvent(
      name: name,
      registerSchool: registerSchool,
      email: email,
      pass: pass,
    ));
  }
}
