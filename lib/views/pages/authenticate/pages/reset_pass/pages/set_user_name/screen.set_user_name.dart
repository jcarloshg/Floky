import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/set_user_name/widgets/send_code_button/widget.send_code_button.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/pages/set_user_name/widgets/send_code_error_message/widget.send_code_error_message.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

import 'widgets/set_user_name_form/widget.set_user_name_form.dart';

class SetUserNameScreen extends StatelessWidget {
  const SetUserNameScreen({super.key});

  final String title = 'Ingresa tu correo electrónico 📧';
  final String subtitle =
      'Introduce el correo electrónico que usas para ingresar 🙋‍♀️🙋‍♂️';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              const SetUserNameForm(),
              const SendCodeErrorMessage(),
              const SendCodeButton(),
              Flexible(flex: 1, child: Container()),
              const ImageLogo(svgPictureWidth: 150),
              Spacers.spacer30,
              Spacers.spacer30,
            ],
          ),
        ),
      ),
    );
  }
}
