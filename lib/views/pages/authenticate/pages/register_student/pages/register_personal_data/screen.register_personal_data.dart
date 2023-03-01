import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/next_screen_button.personal_data/widget.next_screen_button.personal_data..dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/personal_data_error_message/widget.error_message.personal_data.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_personal_data/widgets/personal_data_form/widget.data_form.personal_data.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

// .personal_data.dart

class RegisterPersonalDataScreen extends StatelessWidget {
  const RegisterPersonalDataScreen({super.key});

  final String title = 'Crea tu cuenta de estudiante 👩‍🎓👨‍🎓';
  final String subtitle = 'Cuéntanos, ¿Cual es tu nombre completo?';

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
              DataForm(),
              const PersonalDataErrorMessage(),
              const NextScreenButton(),
              Flexible(flex: 1, child: Container()),
              const ImageLogo(svgPictureWidth: 150),
              Spacers.spacer30,
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