import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'behavior.complete_register_student_button.dart';

class CompleteRegisterStudentButton extends StatelessWidget
    with CompleteRegisterStudentButtonBehavior {
  //

  const CompleteRegisterStudentButton({super.key});

  final String label = 'Completar registro 😄';

  @override
  Widget build(BuildContext context) {
    return Button(
      label: label,
      function: () => completeRegisterStudent(),
    );
  }
}
