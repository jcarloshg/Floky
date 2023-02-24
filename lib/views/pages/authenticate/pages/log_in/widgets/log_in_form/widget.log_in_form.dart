import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:floky/views/pages/authenticate/widgets/input_email/input.email.dart';
import 'package:floky/views/pages/authenticate/widgets/input_pass/input.pass.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final logInController = di<LogInController>();
    final state = logInController.state;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Spacers.size15,
        vertical: Spacers.size10,
      ),
      child: const Text('loginForm'),
      // Form(
      //   key: loginFormController.formKey,
      //   child: Column(
      //     children: [
      //       EmailInput(control: loginFormController.emailController),
      //       PassInput(control: loginFormController.passController),
      //     ],
      //   ),
      // ),
    );
  }
}
