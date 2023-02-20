import 'dart:async';

import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/input_college_enrollment/input.college_enrollment.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/input_college_name/input.college_name.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/school_data_form/behavior.school_data_form.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/school_data_form/form_controller.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class SchoolDataForm extends StatelessWidget with SchoolDataFormBehavior {
  SchoolDataForm({super.key});

  final FormController formController = FormController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formController.formKey,
      onChanged: () => updateSchoolData(formController),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Spacers.size15,
          vertical: Spacers.size10,
        ),
        child: Column(
          children: [
            CollegeNameInput(control: formController.collegeName),
            CollegeEnrollmentInput(control: formController.collegeEnrollment),
          ],
        ),
      ),
    );
  }
}
