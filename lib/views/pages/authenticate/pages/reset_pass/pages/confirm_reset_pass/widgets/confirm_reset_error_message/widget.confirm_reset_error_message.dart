import 'dart:developer';

import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmResetErrorMessage extends StatelessWidget {
  const ConfirmResetErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final confirmResetPasswordChangeNotifier =
        Provider.of<ConfirmResetPasswordChangeNotifier>(
      context,
      listen: true,
    );

    final errorMessage = confirmResetPasswordChangeNotifier.getMessageErro();

    return errorMessage.isEmpty
        ? const SizedBox()
        : ErrorMessage(error: errorMessage);
  }
}
