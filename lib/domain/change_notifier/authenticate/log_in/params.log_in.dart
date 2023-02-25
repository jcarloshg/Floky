import 'dart:developer';

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
    log('LogInData');
    logInFormController != null
        ? this.logInFormController = logInFormController
        : null;
  }

  static LogInData getEmptyLogInData() => LogInData(
        isValidData: false,
        email: "",
        pass: "",
      );

  updateLogInData(LogInFormController logInFormController) {
    isValidData = logInFormController.formKey.currentState?.validate() ?? false;
    email = logInFormController.emailController.text.trim();
    pass = logInFormController.passController.text.trim();
  }

  LogInData getCurrentState() {
    try {
      final currentFormController = logInFormController;
      return LogInData(
        isValidData:
            currentFormController.formKey.currentState?.validate() ?? false,
        email: currentFormController.emailController.text.trim(),
        pass: currentFormController.passController.text.trim(),
        logInFormController: currentFormController,
      );
    } catch (e) {
      return LogInData(
        isValidData: false,
        email: email,
        pass: pass,
      );
    }
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
