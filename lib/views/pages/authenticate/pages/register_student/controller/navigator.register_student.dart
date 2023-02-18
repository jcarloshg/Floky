import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data_form/screen.register_school_data_form.dart';
import 'package:flutter/material.dart';

class RegisterStudentNavigator {
  void goToRegisterSchoolDataForm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterSchoolDataForm(),
      ),
    );
  }
}
