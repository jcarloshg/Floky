import 'package:flutter/material.dart';

class ResetPassFormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();

  ResetPassFormController({required String userName}) {
    userNameController.text = userName;
  }
}

class ResetPassData {
  bool isValidData;
  String userName;

  ResetPassData({
    required this.isValidData,
    required this.userName,
  });

  static ResetPassData getEmptyResetPassData() => ResetPassData(
        isValidData: false,
        userName: "",
      );

  ResetPassFormController getNewFormControl() {
    final resetPassFormController = ResetPassFormController(userName: userName);
    return resetPassFormController;
  }
}
