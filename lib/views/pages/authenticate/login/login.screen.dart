import 'package:floky/views/pages/authenticate/login/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: Center(
          child: FormLogin(),
        ),
      ),
    );
  }
}
