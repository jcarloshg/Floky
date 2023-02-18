import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';

class RegisterButtonBehavior {
  singUp() {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;

    // valid register student form
    final signUpFormController = changeNotifier.signUpFormController;
    final isValidForm = signUpFormController.formKey.currentState?.validate();

    if (isValidForm == false) {
      log('is not valid data');
      changeNotifier.signUpMessageError = 'Ingresa los datos correctamente';
      return;
    }

    log('all data cool');
  }
}
