import 'package:floky/views/pages/authenticate/pages/log_in/widgets/error_login_message/widget.error_login_message.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_button/widget.log_in_button.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_form/widget.log_in_form.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/register_button/widget.register_button.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/UI/spacer/ui.spacer.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: Spacers.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              logInText(),
              Spacers.spacer10,
              const LogInForm(),
              Spacers.spacer10,
              const LogInButton(),
              Spacers.spacer10,
              const RegisterButton(),
              Spacers.spacer10,
              const ErrorLoginMessage(),
            ],
          ),
        ),
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
