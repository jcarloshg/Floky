import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';
import 'package:floky/views/widgets/UI/error_message/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SendCodeErrorMessage extends StatelessWidget {
  const SendCodeErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final resetPassChangeNotifier = Provider.of<ResetPassChangeNotifier>(
      context,
      listen: true,
    );

    final errorMessage = resetPassChangeNotifier.getMessageErro();

    return errorMessage.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: errorMessage);
  }
}
