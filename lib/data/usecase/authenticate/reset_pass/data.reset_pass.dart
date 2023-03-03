import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_password.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/reset_pass/aws.reset_password.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';

class ResetPasswordData extends ResetPasswordRepository {
  ResetPassChangeNotifier get state => di<ResetPassChangeNotifier>();

  @override
  Future<bool> run(ResetPasswordParams params) {
    state.setIsLoading(true);
    final sendCodeToUsername = ResetPasswordAWS().run(params);
    state.setIsLoading(false);
    return sendCodeToUsername;
  }
}
