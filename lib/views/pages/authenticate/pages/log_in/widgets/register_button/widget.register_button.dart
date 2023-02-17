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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          label(),
          Spacers.spacer5,
          button(context: context),
        ],
      ),
    );
  }

  label() => const Text(
        labelText,
        style: TextStyle(
          color: ColorsApp.text,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      );

  button({required BuildContext context}) => InkWell(
        onTap: () => goToRegisterNewAccount(context),
        child: Ink(
          child: Text(
            labelButton,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorsApp.buttonBackground,
            ),
          ),
        ),
      );

  void goToRegisterNewAccount(BuildContext context) {
    final controller = di<LogInController>();
    controller.navigator.goToRegisterNewAccount(context);
  }
}
