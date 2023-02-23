import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_complete/screen.register_complete.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/screen.register_personal_data.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/set_user_name/screen.set_user_name.dart';
import 'package:flutter/material.dart';

class AuthenticateNavigator {
  void goToRegisterNewAccount(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterComplete(),
      ),
    );
  }

  void goToSetUserNameScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SetUserNameScreen(),
      ),
    );
  }
}
