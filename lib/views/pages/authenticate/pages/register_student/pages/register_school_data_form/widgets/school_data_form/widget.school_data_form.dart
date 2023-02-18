import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/input_college_enrollment/input.college_enrollment.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/input_college_name/input.college_name.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class SchoolDataForm extends StatelessWidget {
  SchoolDataForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController collegeName = TextEditingController();
  final TextEditingController collegeEnrollment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Spacers.size15,
        vertical: Spacers.size10,
      ),
      // decoration: BoxDecoration(border: Border.all()),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CollegeNameInput(control: collegeName),
            CollegeEnrollmentInput(control: collegeEnrollment),
          ],
        ),
      ),
    );
  }
}
