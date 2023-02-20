import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_account/widgets/register_account_form/widget.register_account_form.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterAccount extends StatelessWidget {
  const RegisterAccount({super.key});

  final String title = 'Creación de tu cuenta 👤';
  final String subtitle =
      'Usando tu correo electrónico y contraseña puedes ingresar 🔑';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              RegisterAccountForm(),
            ],
          ),
        ),
      ),
    );
  }
}
