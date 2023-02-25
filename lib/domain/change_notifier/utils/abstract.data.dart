import 'dart:developer';

import 'package:flutter/material.dart';

abstract class FormController {}

abstract class Data {
  FormController formController;

  Data({required this.formController});

  FormController getNewFormControl();
  updateWithFormController();
}

//============================================================
// proof
//============================================================

class ResetPassFormController extends FormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();

  ResetPassFormController({required String userName}) {
    userNameController.text = userName;
  }
}

class ResetPassData extends Data {
  bool isValidData;
  String userName;

  ResetPassData({
    required super.formController,
    required this.isValidData,
    required this.userName,
  });

  static ResetPassData getEmptyData() {
    final formController = ResetPassFormController(userName: 'hola');
    return ResetPassData(
      formController: formController,
      isValidData: false,
      userName: 'hola',
    );
  }

  @override
  FormController getNewFormControl() {
    return formController;
  }

  @override
  updateWithFormController() {
    final currentFormControl = formController as ResetPassFormController;
    isValidData = currentFormControl.formKey.currentState?.validate() ?? false;
    userName = currentFormControl.userNameController.text.trim();
  }
}
