import 'package:floky/views/pages/authenticate/pages/log_in/pages/screen.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/complete_reset_pass/screen.complete_reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/confirm_reset_pass/screen.confirm_reset_pass.dart';
import 'package:flutter/material.dart';

/// 1 - SetUserNameScreen
/// 2 - ConfirmResetPass
/// 3 - CompleteResetPass
/// 4 - LogInScreen

class ResetPassNavigator {
  BuildContext? buildContext;
  void setBuildContext(BuildContext? context) {
    buildContext = context;
  }

  void goToConfirmResetPass() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const ConfirmResetPass(),
      ),
    );
  }

  void goToCompleteResetPass() {
    if (buildContext == null) return;
    Navigator.push(
      buildContext!,
      MaterialPageRoute(
        builder: (context) => const CompleteResetPass(),
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
