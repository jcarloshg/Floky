import 'package:floky/data/usecase/aws_amplify/authenticate/reset_pass/data.confirm_reset_password.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/reset_pass/data.reset_pass.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/reset_pass/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/change_notifier/authenticate/reset_pass/change_notifier.reset_pass.dart';
import 'package:floky/domain/usecase/authenticate/application/reset_pass/application.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/controller.confirm_reset_password.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/controller.reset_pass.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/navigator.reset_pass.dart';
import 'package:get_it/get_it.dart';

resetPass({required GetIt di}) async {
  // ============================================================
  //
  // domain
  //
  // ============================================================
  di.registerSingleton<ResetPassChangeNotifier>(
    ResetPassChangeNotifier(),
    signalsReady: true,
  );

  di.registerSingleton<ConfirmResetPasswordChangeNotifier>(
    ConfirmResetPasswordChangeNotifier(),
    signalsReady: true,
  );

  // ============================================================
  //
  // data
  //
  // ============================================================
  final confirmResetPasswordData = ConfirmResetPasswordData();
  final resetPasswordData = ResetPasswordData();
  final ResetPass resetPass = ResetPass(
    confirmResetPasswordRepository: confirmResetPasswordData,
    resetPasswordRepository: resetPasswordData,
  );

  // ============================================================
  //
  // view
  //
  // ============================================================
  di.registerSingleton<ResetPassController>(
    ResetPassController(
      domain: resetPass,
      navigator: ResetPassNavigator(),
      state: di<ResetPassChangeNotifier>(),
      globalState: di<GlobalState>(),
    ),
  );

  di.registerSingleton<ConfirmResetPasswordController>(
    ConfirmResetPasswordController(
      domain: resetPass,
      navigator: ResetPassNavigator(),
      state: di<ConfirmResetPasswordChangeNotifier>(),
      globalState: di<GlobalState>(),
    ),
  );

  // ============================================================
  //
  // driver
  //
  // ============================================================
}
