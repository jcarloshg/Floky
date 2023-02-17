import 'dart:developer';

import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  static const String text = 'Registrarse';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: text,
      function: () => {log('[RegisterButton] - [onTap]')},
    );
  }
}
