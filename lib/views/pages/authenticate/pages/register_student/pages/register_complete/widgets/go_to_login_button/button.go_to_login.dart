import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class GoToLoginButton extends StatelessWidget {
  const GoToLoginButton({super.key});

  final String label = 'Ir a iniciar sesión';
  @override
  Widget build(BuildContext context) {
    return Button(
      label: label,
      function: () => {},
    );
  }
}
