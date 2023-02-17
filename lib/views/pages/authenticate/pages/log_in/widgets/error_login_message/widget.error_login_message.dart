import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/change_notifier.authenticate.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErrorLoginMessage extends StatelessWidget {
  const ErrorLoginMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticateChangeNotifier = Provider.of<AuthenticateChangeNotifier>(
      context,
      listen: true,
    );

    final String messageErrorLogIn =
        authenticateChangeNotifier.messageErroLogIn;

    return messageErrorLogIn.isEmpty
        ? const SizedBox()
        : Text(
            messageErrorLogIn,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          );
  }
}
