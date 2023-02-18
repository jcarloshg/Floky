import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/register_button/behavior.register_button.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget with RegisterButtonBehavior {
  const RegisterButton({super.key});
  static const String text = 'Registrarse';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: text,
      function: () => singUp(),
    );
  }
}
