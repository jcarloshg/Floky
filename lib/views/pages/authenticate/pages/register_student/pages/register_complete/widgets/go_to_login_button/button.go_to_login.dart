import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_complete/widgets/go_to_login_button/behavior.go_to_login.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class GoToLoginButton extends StatelessWidget with GoToLoginBehavior {
  const GoToLoginButton({super.key});

  final String label = 'Ir a iniciar sesión';
  @override
  Widget build(BuildContext context) {
    return Button(
      label: label,
      function: () => goToLogin(context),
    );
  }
}
