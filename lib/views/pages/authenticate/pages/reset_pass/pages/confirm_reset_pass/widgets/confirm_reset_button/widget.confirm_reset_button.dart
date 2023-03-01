import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/controller.confirm_reset_password.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmResetButton extends StatelessWidget {
  const ConfirmResetButton({super.key});

  static const String label = 'Confirmar';

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ConfirmResetPasswordChangeNotifier>(
      context,
      listen: true,
    );
    final confirmResetPasswordController = di<ConfirmResetPasswordController>();
    final navigator = confirmResetPasswordController.navigator;
    navigator.setBuildContext(context);

    return Button(
      label: label,
      function: () => confirmResetPasswordController.confirmResetPassword(),
      isLoading: state.getIsLoading(),
    );
  }
}
