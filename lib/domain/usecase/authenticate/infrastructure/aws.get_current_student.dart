import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/authenticate/domain/repository.get_current_student.dart';

class GetCurrentStudentAWS extends GetCurrentStudentRepository {
  @override
  Future<Account> run() async {
    final AuthUser user = await Amplify.Auth.getCurrentUser();
    final String studentID = user.userId;
    final List<Account> students = await Amplify.DataStore.query(
      Account.classType,
      where: Account.ID.eq(studentID),
    );
    final Account currentStudent = students[0];
    return currentStudent;
  }
}
