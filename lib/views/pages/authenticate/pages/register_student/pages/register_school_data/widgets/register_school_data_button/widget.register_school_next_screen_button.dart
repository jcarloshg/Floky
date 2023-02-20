import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/register_school_data_button/behavior.register_school_data_button.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterSchoolNextScreenButton extends StatelessWidget
    with RegisterSchoolNextScreenButtonBehavior {
  //

  const RegisterSchoolNextScreenButton({super.key});

  static const String text = 'Siguiente';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: text,
      function: () => registerSchoolData(context),
    );
  }
}
