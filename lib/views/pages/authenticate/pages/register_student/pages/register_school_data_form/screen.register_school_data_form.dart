import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data_form/widgets/register_school_data_button/widget.register_school_data_button.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data_form/widgets/school_data_form/widget.school_data_form.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterSchoolDataForm extends StatelessWidget {
  const RegisterSchoolDataForm({super.key});

  final String title = 'Ingresa tu registro escolar 🏫';
  final String subtitle =
      'Esto para que tu institución educativa pueda localizarte. 🔍';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              SchoolDataForm(),
              const RegisterSchoolDataButton(),
            ],
          ),
        ),
      ),
    );
  }
}
