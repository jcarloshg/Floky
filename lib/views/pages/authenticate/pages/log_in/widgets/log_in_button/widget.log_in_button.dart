import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  static const String text = 'Inicia sesión';

  @override
  Widget build(BuildContext context) {
    final logInController = di<LogInController>();
    return Button(
      label: text,
      function: () => logInController.logIn(),
    );
  }
}
