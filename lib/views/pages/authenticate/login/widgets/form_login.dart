import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Titles.title('Iniciar sesión'),
          const InputEmail(),
          const InputPass(),
        ],
      ),
    );
  }
}
