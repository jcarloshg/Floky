import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/confirmar_account_button/widget.confirmar_account_button.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/confirmar_account_error_message/widget.confirmar_account_error_message.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/email_to_confirm_text/widget.email_to_confirm_text.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'widgets/confirmar_account_form/widget.confirmar_account_form.dart';

class ConfirmarAccount extends StatelessWidget {
  const ConfirmarAccount({super.key});

  final String title = 'Confirma tu registro ✔️';
  final String subtitle =
      'Ingresa el código que te llego a tu correo electrónico 📧';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              const EmailToConfirmText(),
              ConfirmarAccountForm(),
              const ConfirmarAccountErrorMessage(),
              const ConfirmarAccountButton(),
              const ConfirmarAccountResendCode(),
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
