import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      // decoration: BoxDecoration(border: Border.all()),
      // padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Titles.title('Floky'),
          const InputEmail(),
          const InputPass(),
          Button(
            label: 'Iniciar sesión',
            function: () => navigateHome(context),
          ),
          ButtonSecondary(
            label: 'Registrarse',
            function: () => goSingUp(context),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Olvide mi contraseña'),
          ),
        ],
      ),
    );
  }

  void goSingUp(BuildContext context) {
    Navigator.pushNamed(
      context,
      PageIndex.singupIndex.route,
    );
  }

  void navigateHome(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      PageIndex.homeScreen.route,
    );
  }

  void navigateFormRegisterScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      PageIndex.formRegisterScreen.route,
    );
  }
}
