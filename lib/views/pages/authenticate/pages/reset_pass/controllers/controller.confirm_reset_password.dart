import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/reset_pass/change_notifier.confirm_reset_password.dart';
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

  Future<void> confirmResetPassword() async {}
}
