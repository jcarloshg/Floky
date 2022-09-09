import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:floky/views/pages/authenticate/widgets/is_exist_error.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class ConfirmAccountScreen extends StatelessWidget {
  const ConfirmAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singUpProvider = di<SingupController>().getController(context);
    final confirmSignUpFormController =
        singUpProvider.confirmSignUpFormController;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: confirmSignUpFormController.confirmSignUpKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: 15),
                Titles.title('Confirma tu cuenta'),
                Titles.subtitle(
                  'Se le envió un código de verificación a su correo electrónico',
                ),
                const SizedBox(height: 30),
                InputCodeVerification(
                  controll: confirmSignUpFormController.codeVerification,
                ),
                const IsExistError(),
                Button(
                  function: singUpProvider.confirmSignUp,
                  label: 'Continuar',
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Reenviar código'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
