import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/controller.confirm_reset_password.dart';
import 'package:floky/views/pages/authenticate/widgets/code_verification_input/input.code_verification.dart';
import 'package:floky/views/pages/authenticate/widgets/input_pass/input.pass.dart';
import 'package:flutter/material.dart';

class ConfirmResetForm extends StatelessWidget {
  const ConfirmResetForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = di<ConfirmResetPasswordController>();
    final state = controller.state;
    final formController =
        state.getConfirmResetPasswordValues().getNewFormControl();

    return Form(
      key: formController.formKey,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CodeVerificationInput(
              control: formController.codeVerificationController,
            ),
            PassInput(
              control: formController.passController,
            ),
            PassInput(
              control: formController.confirmPassController,
              isToConfirm: true,
            ),
          ],
        ),
      ),
    );
  }
}
