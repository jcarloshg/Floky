import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';

class ExistAStudentLoggedInAWS extends ExistAStudentLoggedInRepository {
  @override
  Future<Account?> run() async {
    try {
      final AuthUser user = await Amplify.Auth.getCurrentUser();
      log('user.userId $user.userId');
      log(user.userId);
      // ignore: avoid_print
      print(user);

      return null;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return null;
    }
  }
}
