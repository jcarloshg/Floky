import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:flutter/material.dart';

class ErrorLoginMessage extends StatelessWidget {
  const ErrorLoginMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final logInController = di<LogInController>();
    final changeNotifier = logInController.changeNotifier;
    final messageError = changeNotifier.messageErroLogIn;

    log('ErrorLoginMessage');
    log(messageError);

    return messageError.isEmpty
        ? const SizedBox()
        : Text(
            messageError,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          );
  }
}
