import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  static const String text = 'Ingresar';

  @override
  Widget build(BuildContext context) {
    final logInController = di<LogInController>();
    final changeNotifier = logInController.changeNotifier;

    return InkWell(
      onTap: () => logInController.logIn(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            // decoration: BoxDecoration(border: Border.all()),
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(vertical: Spacers.size10),
            child: button(),
          ),
          changeNotifier.isLoading
              ? const CircularProgressIndicator(color: ColorsApp.write)
              : const SizedBox(),
        ],
      ),
    );
  }

  void logIn() {
    log('logIn');
    try {
      final logInController = di<LogInController>();
      final changeNotifier = logInController.changeNotifier;
      final loginFormController = changeNotifier.loginFormController;
      final String email = loginFormController.emailString;
      final String pass = loginFormController.passString;
      final repository = logInController.repository;
      repository.logInMethod(email: email, pass: pass);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  Container button() {
    Text buttonText() => const Text(
          LogInButton.text,
          style: TextStyle(
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
