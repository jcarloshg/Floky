import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/code_verification_input/input.code_verification.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/confirmar_account_form/behavior.confirmar_account_form.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/confirmar_account_form/form_contoller.dart';
import 'package:floky/views/widgets/widgets.index.dart';

import 'package:flutter/material.dart';

class ConfirmarAccountForm extends StatelessWidget
    with ConfirmarAccountFormBehavior {
  //

  ConfirmarAccountForm({super.key});

  final FormController formController = FormController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formController.formKey,
      onChanged: () => updateConfirmarAccountData(formController),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size10,
        ),
        child: Column(
          children: [
            CodeVerificationInput(
              control: formController.codeVerificationController,
            ),
          ],
        ),
      ),
    );
  }
}
