import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:floky/views/widgets/UI/button_text/button_text.dart';
import 'package:flutter/material.dart';

class GoToResetPassButton extends StatelessWidget {
  const GoToResetPassButton({super.key});

  final String label = 'Recordar contraseña';

  @override
  Widget build(BuildContext context) {
    final controller = di<LogInController>();
    final navigator = controller.navigator;
    navigator.setBuildContext(context);

    return ButtonText(
      label: label,
      function: () => controller.navigator.goToSetUserNameScreen(),
    );
  }
}
