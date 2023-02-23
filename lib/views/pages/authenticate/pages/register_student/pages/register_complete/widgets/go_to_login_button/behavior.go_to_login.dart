import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:flutter/material.dart';

class GoToLoginBehavior {
  void goToLogin(BuildContext context) {
    final controller = di<RegisterStudentController>();
    final navigator = controller.navigator;
    navigator.setBuildContext(context);
    navigator.goToLogInScreen();
  }
}
