import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in_method.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws/log_in/utils/utils.getActivitiesProgress.dart';

class LogInMethodAWS extends LogInMethodRepository {
  @override
  Future<Account?> run({required String email, required String pass}) async {
    try {
      await Amplify.Auth.signIn(username: email, password: pass);
      final AuthUser authUser = await Amplify.Auth.getCurrentUser();
      final studentID = authUser.userId;
      final List<Account> students = await Amplify.DataStore.query(
        Account.classType,
        where: Account.ID.eq(studentID),
      );
      final Account currentStudent = students[0];
      final currentStudentUpdated = getActivitiesProgress(currentStudent);
      return currentStudentUpdated;
    } on AuthException catch (e) {
      log('error [LogInMethodAWS]');
      log(e.message);
      return null;
    }
  }
}
