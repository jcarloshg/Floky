import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.confirm_reset_password.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_pass.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_password.dart';

class ResetPass extends ResetPassRepository {
  ResetPass({
    required this.resetPasswordRepository,
    required this.confirmResetPasswordRepository,
  });

  final ResetPasswordRepository resetPasswordRepository;
  final ConfirmResetPasswordRepository confirmResetPasswordRepository;

  @override
  Future<bool> confirmResetPassword(ConfirmResetPasswordParams params) async {
    final passwordRested = await confirmResetPasswordRepository.run(params);
    return passwordRested;
  }

  @override
  Future<bool> resetPassword(ResetPasswordParams params) async {
    final isSendCode = await resetPasswordRepository.run(params);
    return isSendCode ? true : false;
  }
}
