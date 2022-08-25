import 'package:flutter/material.dart';

import '../../../widgets/widgets.index.dart';

class ConfirmAccountScreen extends StatelessWidget {
  const ConfirmAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Titles.title('Confirma tu cuenta'),
              Titles.subtitle(
                'Ingrese el código de verificación y la contraseña',
              ),
              // const SizedBox(height: 30),
              const InputPass(),
              const InputCodeVerification(),
              // const SizedBox(height: 30),
              Button(
                function: () {},
                label: 'Continuar',
              )
            ],
          ),
        ),
      ),
    );
  }
}
