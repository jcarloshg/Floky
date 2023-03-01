import 'dart:developer';

import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ConfirmResetButton extends StatelessWidget {
  const ConfirmResetButton({super.key});

  static const String label = 'Confirmar';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: label,
      function: () => {},
    );
  }
}
