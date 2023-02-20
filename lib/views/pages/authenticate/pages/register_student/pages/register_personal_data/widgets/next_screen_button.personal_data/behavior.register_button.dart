import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:flutter/material.dart';

class NextScreenButtonBehavior {
  registerPersonalData(BuildContext context) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;

    final PersonalData personalData = changeNotifier.getPersonalData();

    if (personalData.isValidData == false) {
      changeNotifier.setPersonalDataMessageError(
        'Rellena todos los campos correctamente',
      );
      return;
    }

    // is valid [PersonalDataForm]
    changeNotifier.resetPersonalDataChangeNotifier();
    registerStudentController.navigator.goToRegisterSchoolDataForm(context);
  }
}
