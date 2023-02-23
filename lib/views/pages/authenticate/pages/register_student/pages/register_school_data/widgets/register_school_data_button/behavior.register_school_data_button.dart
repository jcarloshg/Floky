import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:flutter/material.dart';

class RegisterSchoolNextScreenButtonBehavior {
  void registerSchoolData(BuildContext context) {
    final controller = di<RegisterStudentController>();
    controller.navigator.setBuildContext(context);

    final changeNotifier = controller.changeNotifier;
    final SchoolData schoolData = changeNotifier.getSchoolData();
    if (schoolData.isValidData == false) {
      changeNotifier.setSchoolDataMessageError(
        'Debes ingresar todos tus datos institucionales correctamente',
      );
      return;
    }

    changeNotifier.setSchoolDataMessageError('');
    final navigator = controller.navigator;
    navigator.goToRegisterAccount();
  }
}
