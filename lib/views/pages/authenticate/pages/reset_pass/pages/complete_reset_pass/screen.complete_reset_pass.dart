import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/controller.confirm_reset_password.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CompleteResetPass extends StatelessWidget {
  const CompleteResetPass({super.key});

  final String title = 'Tu contraseña ya esta restablecida 🥳';
  final String subtitle =
      'Ahora ingresa con tu contraseña nueva para poder  continuar aprendiendo ingles.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(flex: 1, child: Container()),
                const ImageLogo(),
                Titles.title(title),
                Titles.subtitle(subtitle),
                const CompleteResetPassButton(),
                Flexible(flex: 1, child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CompleteResetPassButton extends StatelessWidget {
  const CompleteResetPassButton({super.key});

  static String label = 'Ir a iniciar sesión';

  @override
  Widget build(BuildContext context) {
    final controller = di<ConfirmResetPasswordController>();
    final navigator = controller.navigator;
    navigator.setBuildContext(context);

    return Button(
      label: label,
      function: () => navigator.goToLogInScreen(),
    );
  }
}
