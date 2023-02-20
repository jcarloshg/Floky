import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/utils/abstract.form_controller.dart';
import 'package:flutter/material.dart';

class FormController extends FormControllerAbstract {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();

  @override
  AccountData getData() {
    return AccountData(
      isValidData: formKey.currentState?.validate() ?? false,
      email: email.text.trim(),
      pass: pass.text.trim(),
      confirmPass: confirmPass.text.trim(),
    );
  }

  @override
  void setData(data) {
    // todo: implement setData
  }
}
