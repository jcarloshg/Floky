import 'package:floky/domain/change_notifier/authenticate/change_notifier.log_in.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErrorLoginMessage extends StatelessWidget {
  const ErrorLoginMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticateChangeNotifier = Provider.of<LoginChangeNotifier>(
      context,
      listen: true,
    );

    final String messageErrorLogIn =
        authenticateChangeNotifier.messageErroLogIn;

    return messageErrorLogIn.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: messageErrorLogIn);
  }
}
