import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/form_register/widget.register_student_form.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/register_button/widget.register_button.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/form_register/widgets/register_student_error_message/widget.register_student_error_message.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterStudent extends StatelessWidget {
  const RegisterStudent({super.key});

  final String title = 'Crea tu cuenta dentro de Floky';
  final String subtitle =
      'Rellena todos los campos para poder crear tu propia cuenta. 😃';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              const RegisterStudentForm(),
              const RegisterStudentErrorMessage(),
              const RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}


              // Titles.title('Bienvenido a Floky 😃'),
              // Titles.subtitle(
              //   'Un espacio en el que puedes aprender o mejorar ingles con ayuda de tu tutor y en compañía de tus compañeros. 🏫',
              // ),