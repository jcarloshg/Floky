import 'package:flutter/material.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class ConfirmResetPassword extends StatelessWidget {
  const ConfirmResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resetPassControll = di<ResetPassControll>().getController(context);

    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Titles.title("Cambiar contraseña"),
              Titles.thirdTitle(
                "Ingrese una nueva contraseña y el código de verificación que llegó a su correo electrónico",
              ),
              const InputPass(),
              const InputCodeVerification(),
              Button(
                function: () {},
                label: 'Restablecer contraseña',
              )
            ],
          ),
        ),
      ),
    );
  }
}
