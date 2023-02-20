import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_account/screen.register_account.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/register_school_data_button/widget.register_school_data_button.dart';
import 'package:flutter/material.dart';

class RegisterStudentNavigator {
  void goToRegisterSchoolDataForm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterSchoolDataButton(),
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
}
