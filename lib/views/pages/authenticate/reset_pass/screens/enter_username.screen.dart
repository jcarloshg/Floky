import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class EnterUsername extends StatelessWidget {
  const EnterUsername({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Titles.title("Ingresa tu correo electrónico"),
            Titles.thirdTitle(
              "Recibiras un código de verificación para restablecer tu contraseña.",
            ),
            const InputEmail(),
            Button(
              function: () {},
              label: "Enviar código de verificación",
            ),
          ],
        ),
      ),
    );
  }
}
