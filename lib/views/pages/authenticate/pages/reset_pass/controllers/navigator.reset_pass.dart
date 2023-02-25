import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/confirm_reset_pass/screen.confirm_reset_pass.dart';
import 'package:flutter/material.dart';

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
}
