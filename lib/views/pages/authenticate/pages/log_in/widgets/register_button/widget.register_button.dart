import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  static const String labelText = '¿Quieres aprender inglés?';
  static const String labelButton = 'Regístrate aquí';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          label(),
          ButtonText(
            label: labelButton,
            function: () => goToRegisterNewAccount(context),
          ),
        ],
      ),
    );
  }

  label() => const Text(
        labelText,
        style: TextStyle(
          // color: Colors.blueGrey.shade900,
          color: ColorsApp.text,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );

  void goToRegisterNewAccount(BuildContext context) {
    final controller = di<LogInController>();
    controller.navigator.goToRegisterNewAccount(context);
  }
}
