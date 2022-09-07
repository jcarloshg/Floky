import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';
// import 'package:floky/views/pages/authenticate/singin/login.provider.dart';
// import 'package:provider/provider.dart';

class ConfirmAccountScreen extends StatelessWidget {
  const ConfirmAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singUpProvider = di<SingupController>();
    // final loginProvider = Provider.of<LoginProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Titles.title('Confirma tu cuenta'),
              Titles.text(
                'Se le envió un código de verificación a su correo electrónico',
              ),
              Titles.subtitle(
                'Se le envió un código de verificación a su correo electrónico',
              ),
              const InputCodeVerification(),
              TextButton(
                onPressed: () {},
                child: const Text('Reenviar código'),
              ),
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
