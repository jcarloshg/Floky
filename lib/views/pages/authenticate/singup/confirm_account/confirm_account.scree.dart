import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';

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
                'Se le envió un código de verificación a su número',
              ),
              // const SizedBox(height: 30),
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
