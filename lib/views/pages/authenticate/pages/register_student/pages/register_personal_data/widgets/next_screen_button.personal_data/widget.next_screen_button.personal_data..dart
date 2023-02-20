import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/next_screen_button.personal_data/behavior.register_button.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class NextScreenButton extends StatelessWidget with NextScreenButtonBehavior {
  const NextScreenButton({super.key});

  static const String label = 'Siguiente';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: label,
      function: () => registerPersonalData(context),
    );
  }
}
