import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.confirm_reset_password.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_password.dart';

abstract class ResetPassRepository {
  Future<bool> resetPassword(ResetPasswordParams params);
  Future<bool> confirmResetPassword(ConfirmResetPasswordParams params);
}
