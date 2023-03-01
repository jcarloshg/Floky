import 'package:floky/views/pages/authenticate/pages/log_in/pages/screen.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/screen.register_personal_data.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/set_user_name/screen.set_user_name.dart';
import 'package:floky/views/pages/home/home.screen.dart';
import 'package:flutter/material.dart';

class AuthenticateNavigator {
  BuildContext? buildContext;
  void setBuildContext(BuildContext? context) {
    buildContext = context;
  }

  // to register new user
  void goToRegisterNewAccount() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const RegisterPersonalDataScreen(),
      ),
    );
  }

  // to reset pass
  void goToSetUserNameScreen() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const SetUserNameScreen(),
      ),
    );
  }

  void goToHome() {
    if (buildContext == null) return;
    Navigator.pushAndRemoveUntil(
      buildContext!,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
      (Route<dynamic> route) => false,
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
