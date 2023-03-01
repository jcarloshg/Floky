import 'package:floky/views/pages/authenticate/widgets/code_verification_input/input.code_verification.dart';
import 'package:floky/views/pages/authenticate/widgets/input_pass/input.pass.dart';
import 'package:flutter/material.dart';

class ConfirmResetForm extends StatelessWidget {
  const ConfirmResetForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController codeVerificationController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();

    return Container(
      width: double.infinity,
      height: 300,
      margin: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CodeVerificationInput(
            control: codeVerificationController,
          ),
          PassInput(control: passController),
          PassInput(
            control: confirmPassController,
            isToConfirm: true,
          ),
        ],
      ),
    );
  }
}
