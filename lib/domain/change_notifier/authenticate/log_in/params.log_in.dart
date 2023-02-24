import 'package:flutter/material.dart';

class LogInFormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  LogInFormController();

  LogInData getData() {
    return LogInData(
      isValidData: formKey.currentState?.validate() ?? false,
      email: email.text.trim(),
      pass: pass.text.trim(),
    );
  }

  void setData(LogInData logInData) {
    email.text = logInData.email;
    pass.text = logInData.pass;
  }
}

class LogInData {
  bool isValidData;
  String email;
  String pass;

  LogInData({
    required this.isValidData,
    required this.email,
    required this.pass,
  });

  static LogInData getEmptyLogInData() => LogInData(
        isValidData: false,
        email: "",
        pass: "",
      );
}
