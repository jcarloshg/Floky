import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/full_name_input/input.full_name.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/personal_data_form/behavior.register_student_form.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/personal_data_form/form_controller.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class DataForm extends StatelessWidget with RegisterStudentFormBehavior {
  //

  DataForm({super.key});

  final FormController formController = FormController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formController.formKey,
      onChanged: () => updateSingUpParams(formController),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size10,
        ),
        child: Column(
          children: [
            FullNameInput(control: formController.fullName),
          ],
        ),
      ),
    );
  }
}
