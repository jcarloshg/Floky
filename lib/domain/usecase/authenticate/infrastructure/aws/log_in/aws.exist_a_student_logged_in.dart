import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.exist_a_student_logged_in.dart';

import 'utils/utils.getActivitiesProgress.dart';

class ExistAStudentLoggedInAWS extends ExistAStudentLoggedInRepository {
  @override
  Future<Account?> run() async {
    try {
      inspect(await Amplify.Auth.getCurrentUser());
      final AuthUser user = await Amplify.Auth.getCurrentUser();
      final String studentID = user.userId;
      final List<Account> students = await Amplify.DataStore.query(
        Account.classType,
        where: Account.ID.eq(studentID),
      );
      final Account currentStudent = students[0];
      final currentStudentUpdated = getActivitiesProgress(currentStudent);
      return currentStudentUpdated;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return null;
    }
  }
}
