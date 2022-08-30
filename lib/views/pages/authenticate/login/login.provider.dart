import 'package:flutter/material.dart';

class LoginFormController {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  LoginFormController();
}

class LoginProvider extends ChangeNotifier {
  GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  final LoginFormController loginFormController = LoginFormController();

  Future<void> login() async {
    // ignore: avoid_print
    print('email ${loginFormController.emailControl.text}');
    // ignore: avoid_print
    print('pass ${loginFormController.passControl.text}');
  }
}
