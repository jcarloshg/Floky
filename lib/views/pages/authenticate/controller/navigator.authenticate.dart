import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/screen.register_personal_data.dart';
import 'package:flutter/material.dart';

class AuthenticateNavigator {
  void goToRegisterNewAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPersonalData(),
      ),
    );
  }
}
