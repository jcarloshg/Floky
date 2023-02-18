import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/full_name_input/input.full_name.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/input_college_enrollment/input.college_enrollment.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/input_college_name/input.college_name.dart';
import 'package:floky/views/pages/authenticate/widgets/input_email/input.email.dart';
import 'package:floky/views/pages/authenticate/widgets/input_pass/input.pass.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterStudentForm extends StatelessWidget {
  const RegisterStudentForm({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;
    final signUpFormController = changeNotifier.signUpFormController;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Spacers.size15,
        vertical: Spacers.size10,
      ),
      child: Form(
        key: signUpFormController.formKey,
        child: Column(
          children: [
            FullNameInput(control: signUpFormController.fullName),
            EmailInput(control: signUpFormController.email),
            // CollegeNameInput(control: signUpFormController.collegeName),
            // CollegeEnrollmentInput(
            //   control: signUpFormController.collegeEnrollment,
            // ),
            // PassInput(control: signUpFormController.pass),
            // PassInput(control: signUpFormController.confirmPass),
          ],
        ),
      ),
    );
  }
}
