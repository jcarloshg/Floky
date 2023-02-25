import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:flutter/material.dart';

class ResetPassData {
  bool isValidData;
  String userName;
  ResetPassFormController resetPassFormController = ResetPassFormController(
    userName: '',
  );

  ResetPassData({
    required this.isValidData,
    required this.userName,
    ResetPassFormController? resetPassFormController,
  }) {
    resetPassFormController != null
        ? this.resetPassFormController = resetPassFormController
        : null;
  }

  static ResetPassData getEmptyResetPassData() => ResetPassData(
        isValidData: false,
        userName: "",
      );

  ResetPassFormController getNewFormControl() {
    //
    // get email from login screen
    final loginChangeNotifier = di<LoginChangeNotifier>();
    final logInData = loginChangeNotifier.logInData;
    final emailFromLogInState = logInData.email;

    final resetPassFormController = ResetPassFormController(
      userName: emailFromLogInState,
    );
    this.resetPassFormController = resetPassFormController;
    return this.resetPassFormController;
  }
}

class ResetPassFormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();

  ResetPassFormController({required String userName}) {
    userNameController.text = userName;
  }
}
