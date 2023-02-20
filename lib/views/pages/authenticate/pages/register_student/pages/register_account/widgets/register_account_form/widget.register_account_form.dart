import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_account/widgets/register_account_form/form_controller.dart';
import 'package:floky/views/pages/authenticate/widgets/input_email/input.email.dart';
import 'package:floky/views/pages/authenticate/widgets/input_pass/input.pass.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterAccountForm extends StatelessWidget {
  RegisterAccountForm({super.key});

  final FormController formController = FormController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formController.formKey,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size15,
        ),
        // decoration: BoxDecoration(border: Border.all()),
        child: Column(
          children: [
            EmailInput(control: formController.email),
            PassInput(control: formController.pass),
            PassInput(control: formController.confirmPass),
          ],
        ),
      ),
    );
  }
}
