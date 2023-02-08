import 'package:floky/views/pages/authenticate/pages/log_in/widgets/widget.log_in_form.dart';
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
            children: [
              LogInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
