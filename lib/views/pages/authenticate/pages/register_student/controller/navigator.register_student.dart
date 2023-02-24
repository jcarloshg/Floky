import 'dart:developer';

import 'package:floky/views/pages/authenticate/pages/log_in/pages/screen.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/screen.confirmar_account.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_account/screen.register_account.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_complete/screen.register_complete.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/screen.register_school_data.dart';
import 'package:flutter/material.dart';

class RegisterStudentNavigator {
  //

  BuildContext? buildContext;
  void setBuildContext(BuildContext? context) {
    buildContext = context;
  }

  void goToRegisterSchoolDataForm() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const RegisterSchoolData(),
      ),
    );
  }

  void goToRegisterAccount() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const RegisterAccount(),
      ),
    );
  }

  void goToConfirmarAccount(BuildContext context) {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const ConfirmarAccount(),
      ),
    );
  }

  void goToRegisterComplete() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const RegisterComplete(),
      ),
    );
  }

  void goToLogInScreen() {
    if (buildContext == null) return;
    Navigator.pushAndRemoveUntil(
      buildContext!,
      MaterialPageRoute(builder: (_) => const LogInScreen()),
      (Route<dynamic> route) => false,
    );
  }
}
