import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.confirm_reset_password.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/navigator.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';

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

    // valid [data form] && [pass] are the same
    final isValidData = confirmResetPasswordValues.isValidData;
    if (isValidData == false) {
      state.setMessageErro('Ingresa todos los correctamente datos ');
      return;
    }
    final pass = confirmResetPasswordValues.pass;
    final confirmPass = confirmResetPasswordValues.confirmPass;
    final isTheSamePass = pass.compareTo(confirmPass) == 0 ? true : false;
    if (isTheSamePass == false) {
      state.setMessageErro('Las contraseñas no coinciden');
      return;
    }

    // reset pass
    final email = di<ResetPassChangeNotifier>().getResetPassData().userName;
    final confirmResetPasswordParams = ConfirmResetPasswordParams(
      username: email,
      newPassword: confirmResetPasswordValues.pass,
      confirmationCode: confirmResetPasswordValues.codeVerification,
    );
    final resetPassWasSuccessful =
        await domain.confirmResetPassword(confirmResetPasswordParams);
    if (resetPassWasSuccessful == false) {
      state.setMessageErro('Algo salio mal, inténtalo mas tarde. 😮‍💨');
      return;
    }

    state.setMessageErro('');
    navigator.goToCompleteResetPass();
  }
}
