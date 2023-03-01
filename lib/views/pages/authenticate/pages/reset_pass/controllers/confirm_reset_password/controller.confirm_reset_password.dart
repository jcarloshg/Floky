import 'dart:developer';

import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/navigator.reset_pass.dart';

class ConfirmResetPasswordController {
  final ResetPassRepository domain;
  final ConfirmResetPasswordChangeNotifier state;
  final ResetPassNavigator navigator;
  final GlobalState globalState;

  ConfirmResetPasswordController({
    required this.domain,
    required this.state,
    required this.navigator,
    required this.globalState,
  });

  Future<void> confirmResetPassword() async {
    final confirmResetPasswordValues = state.getConfirmResetPasswordValues();
    confirmResetPasswordValues.updateWithFormController();

    final isValidData = confirmResetPasswordValues.isValidData;
    log(isValidData.toString());
    if (isValidData == false) {
      state.setMessageErro('Ingresa todos los correctamente datos ');
      return;
    }
  }
}
