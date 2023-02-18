import 'dart:developer';

import 'package:floky/domain/change_notifier/authenticate/change_notifier.register_student.dart';

class RegisterStudentController {
  //

  RegisterStudentChangeNotifier changeNotifier;

  RegisterStudentController({required this.changeNotifier});

  void signUp() {
    final signUpFormController = changeNotifier.signUpFormController;
    final isValidForm = signUpFormController.formKey.currentState?.validate();

    if (isValidForm == false) {
      log('is not valid data');
      changeNotifier.signUpMessageError = 'Ingresa los datos correctamente';
      return;
    }
  }
}
