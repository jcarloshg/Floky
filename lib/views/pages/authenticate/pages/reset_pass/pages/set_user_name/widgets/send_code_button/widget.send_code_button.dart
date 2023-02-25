import 'dart:developer';

import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class SendCodeButton extends StatelessWidget {
  const SendCodeButton({super.key});

  final String label = 'Enviar código';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: label,
      function: () => log(label),
    );
  }
}
