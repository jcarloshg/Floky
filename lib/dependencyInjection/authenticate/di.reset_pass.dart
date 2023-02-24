import 'package:floky/domain/change_notifier/authenticate/reset_pass/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/change_notifier/authenticate/reset_pass/change_notifier.reset_pass.dart';
import 'package:get_it/get_it.dart';

resetPass({required GetIt di}) async {
  //============================================================
  // domain
  //============================================================
  di.registerSingleton<ResetPassChangeNotifier>(
    ResetPassChangeNotifier(),
    signalsReady: true,
  );

  di.registerSingleton<ConfirmResetPasswordChangeNotifier>(
    ConfirmResetPasswordChangeNotifier(),
    signalsReady: true,
  );

  //============================================================
  // data
  //============================================================

  //============================================================
  // view
  //============================================================

  //============================================================
  // driver
  //============================================================
}
