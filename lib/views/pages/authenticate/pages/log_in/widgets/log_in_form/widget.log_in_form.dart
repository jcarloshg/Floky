import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/input_email/input.email.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/input_pass/input.pass.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final logInController = di<LogInController>();
    final changeNotifier = logInController.changeNotifier;

    return Form(
      key: changeNotifier.formKey,
      child: Column(
        children: [
          EmailInput(control: changeNotifier.loginEmailController),
          PassInput(control: changeNotifier.loginPassController),
        ],
      ),
    );
  }
}
