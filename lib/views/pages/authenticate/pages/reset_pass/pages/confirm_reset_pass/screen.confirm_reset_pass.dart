import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ConfirmResetPass extends StatelessWidget {
  const ConfirmResetPass({super.key});

  final String title = 'Ingresa tu correo electrónico 📧';
  final String subtitle =
      'Introduce el correo electrónico que usas para ingresar 🙋‍♀️🙋‍♂️';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              Flexible(flex: 1, child: Container()),
              const ImageLogo(svgPictureWidth: 150),
              Spacers.spacer30,
              Spacers.spacer30,
            ],
          ),
        ),
      ),
    );
  }
}
