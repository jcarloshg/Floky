import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';

class LogInMethodAWS extends LogInMethodRepository {
  @override
  Future<Account?> run({required String email, required String pass}) async {
    try {
      final signInResult = await Amplify.Auth.signIn(
        username: email,
        password: pass,
      );

      final AuthUser authUser = await Amplify.Auth.getCurrentUser();
      inspect(signInResult);
      inspect(authUser);
    } on AuthException catch (e) {
      log('error [LogInMethodAWS]');
      log(e.message);
      return null;
    }

    return null;
  }
}
