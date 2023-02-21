import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'behavior.complete_register_student_button.dart';

class CompleteRegisterStudentButton extends StatelessWidget
    with CompleteRegisterStudentButtonBehavior {
  //

  const CompleteRegisterStudentButton({super.key});

  final String label = 'Completar registro 😄';

  @override
  Widget build(BuildContext context) {
    final changeNotifier = Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    return Button(
      label: label,
      function: () => completeRegisterStudent(context),
      isLoading: changeNotifier.isLoading,
    );
  }
}
