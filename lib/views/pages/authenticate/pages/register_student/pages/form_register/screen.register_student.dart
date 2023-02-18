import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/form_register/widget.register_student_form.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/register_button/widget.register_button.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterStudent extends StatelessWidget {
  const RegisterStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Titles.title('Crea una nueva cuenta'),
              Titles.subtitle('Ingresa tus datos'),
              RegisterStudentForm(),
              const ErrorMessage(error: 'ERROR_ERROR'),
              const RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
