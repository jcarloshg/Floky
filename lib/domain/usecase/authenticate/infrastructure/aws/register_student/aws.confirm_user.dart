import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';

class ConfirmUserAWS extends ConfirmUserRepository {
  @override
  Future<bool> run(ConfirmUserParams params) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: params.username,
        confirmationCode: params.confirmationCode,
      );
      return true;
    } on AuthException catch (e) {
      log('error [ConfirmUserAWS]');
      log(e.message);
      return false;
    }
  }
}
