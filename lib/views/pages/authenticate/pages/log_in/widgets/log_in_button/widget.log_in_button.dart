import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  static const String text = 'Ingresar';

  @override
  Widget build(BuildContext context) {
    final logInController = di<LogInController>();
    final changeNotifier = logInController.changeNotifier;

    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      child: Button(
        label: text,
        function: () => logInController.logIn(),
      ),
    );
  }
}
