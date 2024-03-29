import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/views/pages/authenticate/utils/utils.authenticate.dart';
import 'package:flutter/material.dart';

class FormController extends FormControllerAbstract {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullName = TextEditingController();

  @override
  PersonalData getData() {
    return PersonalData(
      isValidData: formKey.currentState?.validate() ?? false,
      fullName: fullName.text.trim(),
    );
  }

  @override
  void setData(data) {}
}
