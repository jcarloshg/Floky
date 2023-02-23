import 'package:floky/views/pages/authenticate/pages/register_student/pages/register_complete/widgets/go_to_login_button/button.go_to_login.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class RegisterComplete extends StatelessWidget {
  const RegisterComplete({super.key});

  //============================================================
  // todo - animated this elements
  //============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Titles.title('Registro completo 🏁'),
              Spacers.spacer20,
              const ImageLogo(),
              Spacers.spacer20,
              Titles.subtitle(
                'Ahora podrás adquirir una nueva habilidad que es el ingles. 📚',
              ),
              Spacers.spacer20,
              Titles.subtitle(
                'Inicia sesión para comenzar aprender ingles 👌',
              ),
              const GoToLoginButton(),
              Spacers.spacer30,
            ],
          ),
        ),
      ),
    );
  }
}
