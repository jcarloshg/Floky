import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class EnterUsername extends StatelessWidget {
  const EnterUsername({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resetPassControll = di<ResetPassControll>().getController(context);
    final enterUsernameFormController =
        resetPassControll.enterUsernameFormController;

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: enterUsernameFormController.formEnterUsernameKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Titles.title("Ingresa tu correo electrónico"),
              Titles.thirdTitle(
                "Recibirás un código para poder restablecer tu contraseña.",
              ),
              InputEmail(
                emailControl: enterUsernameFormController.email,
              ),
              const ErrorMessage(
                error: 'Todo mal[dropthisI]',
              ),
              Button(
                function: resetPassControll.sendCodeResetPass,
                label: "Enviar código",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
