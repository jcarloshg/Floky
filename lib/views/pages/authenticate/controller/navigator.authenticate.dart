import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/screen.form_register.dart';
import 'package:flutter/material.dart';

class AuthenticateNavigator {
  void goToRegisterNewAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FormRegister(),
      ),
    );
  }
}
