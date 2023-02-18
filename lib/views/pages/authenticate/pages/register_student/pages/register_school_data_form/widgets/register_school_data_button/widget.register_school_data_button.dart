import 'dart:developer';

import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterSchoolDataButton extends StatelessWidget {
  const RegisterSchoolDataButton({super.key});

  static const String text = 'Siguiente';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: text,
      function: () => {log(text)},
    );
  }
}
