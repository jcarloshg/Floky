import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
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

    final String messageErro = authenticateChangeNotifier.getMessageErro();

    return messageErro.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: messageErro);
  }
}
