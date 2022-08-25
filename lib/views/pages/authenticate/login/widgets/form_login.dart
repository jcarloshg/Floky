import 'package:floky/views/pages/pages.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  void navigateHome(BuildContext context) {
    Navigator.pushReplacementNamed(
      context,
      PageIndex.homeScreen.route,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
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
          TextButton(
            onPressed: () {},
            child: const Text('Registrarse'),
          )
        ],
      ),
    );
  }
}
