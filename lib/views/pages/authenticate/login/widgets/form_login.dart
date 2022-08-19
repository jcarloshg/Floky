import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      // decoration: BoxDecoration(border: Border.all()),
      // padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Titles.title('Iniciar sesión'),
          const InputEmail(),
          const InputPass(),
          const Button(label: 'Ingresar')
        ],
      ),
    );
  }
}
