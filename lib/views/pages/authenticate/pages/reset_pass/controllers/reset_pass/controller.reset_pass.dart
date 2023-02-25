import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/navigator.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';

class ResetPassController {
  final ResetPassRepository domain;
  final ResetPassChangeNotifier state;
  final ResetPassNavigator navigator;
  final GlobalState globalState;

  ResetPassController({
    required this.domain,
    required this.state,
    required this.navigator,
    required this.globalState,
  });

  Future<void> resetPass() async {
    state.getResetPassData().updateWithFormController();
    final resetPassData = state.getResetPassData();

    if (resetPassData.isValidData == false) {
      state.setMessageErro('Ingresa tu correo electrónico correctamente.');
      return;
    }
  }
}
