import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.confirm_reset_password.dart';

class ConfirmResetPasswordAWS extends ConfirmResetPasswordRepository {
  @override
  Future<bool> run(ConfirmResetPasswordParams params) async {
    try {
      await Amplify.Auth.confirmResetPassword(
        username: params.username,
        newPassword: params.newPassword,
        confirmationCode: params.confirmationCode,
      );
      return true;
    } on AmplifyException catch (e) {
      log(e.message);
      return false;
    }
  }
}
