import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/code_verification_input/input.code_verification.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/pages/confirmar_account/widgets/email_to_confirm_text/widget.email_to_confirm_text.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ConfirmarAccount extends StatelessWidget {
  ConfirmarAccount({super.key});

  final String title = 'Confirma tu registro ✔️';
  final TextEditingController codeVerificationController =
      TextEditingController();
  final String subtitle =
      'Ingresa el código que llego a tu correo electrónico 📧';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              const EmailToConfirmText(),
              CodeVerificationInput(control: codeVerificationController),
            ],
          ),
        ),
      ),
    );
  }
}
