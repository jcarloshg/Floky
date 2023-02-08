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

      // ignore: avoid_print
      print(signInResult);
    } on AuthException catch (e) {
      // ignore: avoid_print
      print('[LogInMethodAWS] $e.message');
    }

    return null;
  }
}
