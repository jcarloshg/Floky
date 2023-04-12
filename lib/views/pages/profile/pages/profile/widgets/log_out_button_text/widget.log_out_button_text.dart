import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:flutter/material.dart';

class LogOutButtonText extends StatelessWidget {
  const LogOutButtonText({
    super.key,
    required this.logInController,
  });

  static String text = 'Cerrar sesión';
  final LogInController logInController;

  @override
  Widget build(BuildContext context) {
    //

    logInController.navigator.setBuildContext(context);

    return TextButton(
      onPressed: () => singOut(context),
      child: Text(
        LogOutButtonText.text,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Future<void> singOut(BuildContext context) async {
    try {
      await Amplify.Auth.signOut();
      logInController.navigator.goToLogInScreen();
    } on AuthException catch (e) {
      log('error [singOut]');
      log(e.message);
    }
  }
}
