import 'package:floky/views/pages/authenticate/pages/log_in/widgets/error_login_message/widget.error_login_message.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_button/widget.log_in_button.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/register_button/widget.register_button.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/log_in_form/widget.log_in_form.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          // padding: EdgeInsets.symmetric(horizontal: Spacers.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Titles.title('Inicia sesión'),
              const LogInForm(),
              const ErrorLoginMessage(),
              const LogInButton(),
              Spacers.spacer20,
              const RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
