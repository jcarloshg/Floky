import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_button/widget.log_in_button.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_form/widget.log_in_form.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/UI/spacer/ui.spacer.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: const [
              ContainerLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerLoginForm extends StatelessWidget {
  const ContainerLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: Spacers.size30,
        horizontal: Spacers.size20,
      ),
      margin: EdgeInsets.all(Spacers.size15),
      decoration: boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          logInText(),
          Spacers.spacer5,
          subTitle(),
          Spacers.spacer10,
          const LogInForm(),
          Spacers.spacer10,
          const LogInButton(),
        ],
      ),
    );
  }

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

  boxDecoration() => BoxDecoration(
        color: Colors.white,
        // border: Border.all(),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2, 2),
            blurRadius: 3,
          ),
        ],
      );
}
