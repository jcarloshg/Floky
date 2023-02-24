import 'package:floky/views/pages/authenticate/pages/log_in/widgets/error_login_message/widget.error_login_message.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/widgets/go_to_reset_pass/widget.go_to_reset_pass.dart';
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
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ImageLogo(),
                LogInForm(),
                ErrorLoginMessage(),
                LogInButton(),
                RegisterButton(),
                GoToResetPassButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
