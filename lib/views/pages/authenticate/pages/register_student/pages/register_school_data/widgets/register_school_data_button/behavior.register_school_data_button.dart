import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:flutter/material.dart';

class RegisterSchoolDataButtonBehavior {
  void registerSchoolData(BuildContext context) {
    final registerStudentController = di<RegisterStudentController>();
    final navigator = registerStudentController.navigator;

    navigator.goToRegisterAccount(context);
  }
}
