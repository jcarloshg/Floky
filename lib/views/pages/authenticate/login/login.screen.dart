import 'package:floky/views/pages/authenticate/login/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: Container(
          decoration: _boxDecoration(context),
          child: const Center(
            child: FormLogin(),
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      // border: Border.all(),
      gradient: LinearGradient(
        begin: const Alignment(-1.75, -1.75),
        end: const Alignment(1.75, 1.75),
        colors: [
          Theme.of(context).primaryColor.withOpacity(0.5),
          Colors.white,
          Theme.of(context).primaryColor.withOpacity(0.5),
        ],
      ),
    );
  }
}
