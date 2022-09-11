import 'package:floky/views/pages/authenticate/singin/widgets/widgets.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

// FormLogin()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Floky'), elevation: 0),
      body: SafeArea(
        child: Container(
          decoration: _boxDecoration(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Titles.title('Floky'),
              const FormLogin(),
              const RegisterButton(),
            ],
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
        // begin: const Alignment(0, 0),
        // end: const Alignment(0, 0),
        colors: [
          // Theme.of(context).primaryColor.withOpacity(0.5),
          Theme.of(context).primaryColor.withOpacity(0.5),
          Colors.white,
        ],
      ),
    );
  }
}
