import 'package:floky/views/pages/authenticate/login/login.provider.dart';
import 'package:floky/views/pages/authenticate/login/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    final loginFormController = loginProvider.loginFormController;

    return Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: Container(
          decoration: _boxDecoration(context),
          child: Center(
            child: FormLogin(
              keyForm: loginProvider.formLoginKey,
              emailControl: loginFormController.emailControl,
              passControl: loginFormController.passControl,
              funcLogin: loginProvider.login,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      // border: Border.all(),
      gradient: LinearGradient(
        // begin: const Alignment(-1.75, -1.75),
        begin: const Alignment(0, 0),
        end: const Alignment(1.75, 1.75),
        colors: [
          // Theme.of(context).primaryColor.withOpacity(0.5),
          Colors.white,
          Theme.of(context).primaryColor.withOpacity(0.5),
        ],
      ),
    );
  }
}
