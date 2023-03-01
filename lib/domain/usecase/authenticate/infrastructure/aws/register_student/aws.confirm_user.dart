import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';

class ConfirmUserAWS extends ConfirmUserRepository {
  //

  @override
  Future<bool> run(ConfirmUserParams params) async {
    try {
      await Amplify.Auth.confirmSignUp(
        username: params.username,
        confirmationCode: params.confirmationCode,
      );

      await registerUserIntoDinamoDB();

      return true;
    } on AuthException catch (e) {
      log('error [ConfirmUserAWS]');
      log(e.message);
      return false;
    }
  }

  Future<void> registerUserIntoDinamoDB() async {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;

    final AccountData accountData = changeNotifier.getAccountData();
    final PersonalData personalData = changeNotifier.getPersonalData();
    final SchoolData schoolData = changeNotifier.getSchoolData();

    // get user from cognito
    final email = accountData.email;
    final pass = accountData.pass;
    await Amplify.Auth.signIn(username: email, password: pass);
    final AuthUser user = await Amplify.Auth.getCurrentUser();

    // get userID from cognito
    final studentID = user.userId;

    // save new student into DinamoDB
    final Account newStudent = Account(
      id: studentID,
      fullName: personalData.fullName,
      email: accountData.email,
      collegeEnrollment: schoolData.collegeEnrollment,
      collegeName: schoolData.collegeName,
      role: Role.STUDENT,
    );
    await Amplify.DataStore.save<Account>(newStudent);

    await Amplify.Auth.signOut();
  }
}
