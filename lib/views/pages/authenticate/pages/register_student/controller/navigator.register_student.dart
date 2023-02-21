import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/screen.confirmar_account.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_account/screen.register_account.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/screen.register_school_data.dart';
import 'package:flutter/material.dart';

class RegisterStudentNavigator {
  void goToRegisterSchoolDataForm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterSchoolData(),
      ),
    );
  }

  void goToRegisterAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterAccount(),
      ),
    );
  }

  void goToConfirmarAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmarAccount(),
      ),
    );
  }
}
