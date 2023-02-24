import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/usecase/authenticate/domain/reset_pass/repository.reset_password.dart';

class ResetPasswordAWS extends ResetPasswordRepository {
  @override
  Future<bool> run(ResetPasswordParams params) async {
    try {
      await Amplify.Auth.resetPassword(username: params.username);
      return true;
    } on AmplifyException catch (e) {
      log(e.message);
      return false;
    }
  }
}
