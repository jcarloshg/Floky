import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/params.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:floky/views/pages/authenticate/widgets/input_email/input.email.dart';
import 'package:floky/views/pages/authenticate/widgets/input_pass/input.pass.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final LogInFormController logInFormController =
        di<LogInController>().state.getNewLogInFormController();

    return Form(
      key: logInFormController.formKey,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size10,
        ),
        child: Column(
          children: [
            EmailInput(control: logInFormController.email),
            PassInput(control: logInFormController.pass),
          ],
        ),
      ),
    );
  }
}
