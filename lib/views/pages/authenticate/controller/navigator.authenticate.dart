import 'dart:developer';

import 'package:floky/views/pages/authenticate/pages/log_in/pages/screen.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_complete/screen.register_complete.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/set_user_name/screen.set_user_name.dart';
import 'package:floky/views/pages/home/home.screen.dart';
import 'package:flutter/material.dart';

class AuthenticateNavigator {
  BuildContext? buildContext;
  void setBuildContext(BuildContext? context) {
    buildContext = context;
  }

  void goToRegisterNewAccount() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const RegisterComplete(),
      ),
    );
  }

  void goToSetUserNameScreen() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const SetUserNameScreen(),
      ),
    );
  }

  void goToLogInScreen() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const LogInScreen(),
      ),
    );
  }

  void goToHome() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
