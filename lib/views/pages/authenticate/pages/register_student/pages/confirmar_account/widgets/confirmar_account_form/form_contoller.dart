import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/utils/utils.authenticate.dart';
import 'package:flutter/material.dart';

class FormController extends FormControllerAbstract {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final codeVerificationController = TextEditingController();

  @override
  ConfirmarAccountData getData() {
    return ConfirmarAccountData(
      isValidData: formKey.currentState?.validate() ?? false,
      codeVerification: codeVerificationController.text.trim(),
    );
  }

  @override
  void setData(data) {}
}
