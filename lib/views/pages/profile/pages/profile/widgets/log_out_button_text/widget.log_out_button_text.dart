import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class LogOutButtonText extends StatelessWidget {
  const LogOutButtonText({super.key});

  static String text = 'Cerrar sesión';

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      child: textButton(),
    );
  }

  TextButton textButton() => TextButton(
        onPressed: () => singOut(),
        child: Text(
          LogOutButtonText.text,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  Future<void> singOut() async {
    try {
      await Amplify.Auth.signOut();
    } on AuthException catch (e) {
      log('error [singOut]');
      log(e.message);
    }
  }
}
