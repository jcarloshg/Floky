import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  static String text = 'Ingresar';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => logIn(),
      child: Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        margin: EdgeInsets.symmetric(vertical: Spacers.size10),
        child: button(),
      ),
    );
  }

  void logIn() {
    try {
      final logInController = di<LogInController>();
      final changeNotifier = logInController.changeNotifier;
      // final String email = changeNotifier.loginEmailString;
      final String email = 'carlosj12336@gmail.com';
      // final String pass = changeNotifier.loginPassString;
      final String pass = 'Qazwsx123';
      final repository = logInController.repository;
      repository.logInMethod(email: email, pass: pass);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  Container button() {
    Text buttonText() => Text(
          LogInButton.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        );

    BoxDecoration boxDecoration() => BoxDecoration(
          border: Border.all(color: Colors.blueAccent.shade400),
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(4),
        );

    return Container(
      width: 200,
      height: 48,
      decoration: boxDecoration(),
      child: Center(child: buttonText()),
    );
  }
}
