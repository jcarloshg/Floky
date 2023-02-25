import 'package:flutter/material.dart';

class LogInData {
  bool isValidData;
  String email;
  String pass;
  LogInFormController logInFormController = LogInFormController(
    email: '',
    pass: '',
  );

  LogInData({
    required this.isValidData,
    required this.email,
    required this.pass,
    LogInFormController? logInFormController,
  }) {
    logInFormController != null
        ? this.logInFormController = logInFormController
        : null;
  }

  static LogInData getEmptyLogInData() => LogInData(
        isValidData: false,
        email: "",
        pass: "",
      );

  void updateWithFormController() {
    isValidData = logInFormController.formKey.currentState?.validate() ?? false;
    email = logInFormController.emailController.text.trim();
    pass = logInFormController.passController.text.trim();
  }

  LogInFormController getNewFormControl() {
    final LogInFormController newLogInFormController = LogInFormController(
      email: email,
      pass: pass,
    );
    logInFormController = newLogInFormController;
    return logInFormController;
  }
}

class LogInFormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  LogInFormController({
    required String email,
    required String pass,
  }) {
    emailController.text = email;
    passController.text = pass;
  }
}
