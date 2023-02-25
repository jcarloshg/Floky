import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.confirm_reset_password.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/reset_pass/aws.confirm_reset_password.dart';

class ConfirmResetPasswordData extends ConfirmResetPasswordRepository {
  ConfirmResetPasswordChangeNotifier get state =>
      di<ConfirmResetPasswordChangeNotifier>();

  @override
  Future<bool> run(ConfirmResetPasswordParams params) async {
    state.setIsLoading(true);
    final passRested = await ConfirmResetPasswordAWS().run(params);
    state.setIsLoading(false);
    return passRested;
  }
}
