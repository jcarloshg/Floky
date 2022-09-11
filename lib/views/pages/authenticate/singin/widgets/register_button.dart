import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/singin/login.controller.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = di<LoginController>().getController(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Titles.text('¿Deseas aprender inglés?', withMargin: false),
        ButtonText(
          function: () => loginController.goFormRegisterScreen(context),
          label: 'Registrarse aquí',
        ),
      ],
    );
  }
}
