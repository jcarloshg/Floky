import 'package:floky/views/pages/authenticate/pages/log_in/widgets/input_email/input.email.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/input_pass/input.pass.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_button/widget.log_in_button.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  LogInForm({super.key});

  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: Spacers.size30,
        horizontal: Spacers.size20,
      ),
      margin: EdgeInsets.all(Spacers.size10),
      decoration: boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          logInText(),
          Spacers.spacer5,
          subTitle(),
          Spacers.spacer10,
          EmailInput(control: emailController),
          PassInput(control: passController),
          const LogInButton(),
          Spacers.spacer10,
        ],
      ),
    );
  }

  boxDecoration() => BoxDecoration(
        color: Colors.white,
        // border: Border.all(),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      );

  logInText() => const Text(
        'Inicia sesión',
        style: TextStyle(
          color: ColorsApp.text,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      );

  subTitle() => const Text(
        'Ingresa tu correo electrónico y contraseña',
        style: TextStyle(
          color: ColorsApp.text,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      );
}
