import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/register_school_data_button/widget.register_school_next_screen_button.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_school_data/widgets/school_data_form/widget.school_data_form.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterSchoolData extends StatelessWidget {
  const RegisterSchoolData({super.key});

  final String title = 'Ingresa tu registro escolar 🏫';
  final String subtitle =
      'Esto para que tu institución educativa pueda localizarte. 🔍';

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
              SchoolDataForm(),
              const SchoolDataErrorMessage(),
              const RegisterSchoolNextScreenButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class SchoolDataErrorMessage extends StatelessWidget {
  const SchoolDataErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerStudentChangeNotifier =
        Provider.of<RegisterStudentChangeNotifier>(
      context,
      listen: true,
    );

    final errorMessage =
        registerStudentChangeNotifier.getSchoolDataMessageError();

    return errorMessage.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: errorMessage);
  }
}
