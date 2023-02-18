import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  static const String text = 'Registrarse';

  @override
  Widget build(BuildContext context) {
    //

    final registerStudentController = di<RegisterStudentController>();

    return Button(
      label: text,
      function: () => registerStudentController.signUp(),
    );
  }
}
