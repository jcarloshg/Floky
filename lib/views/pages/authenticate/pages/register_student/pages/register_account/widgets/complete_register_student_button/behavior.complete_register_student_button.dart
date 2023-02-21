import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.sing_up.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:flutter/material.dart';

class CompleteRegisterStudentButtonBehavior {
  //

  Future<void> completeRegisterStudent(BuildContext context) async {
    final registerStudentController = di<RegisterStudentController>();
    final changeNotifier = registerStudentController.changeNotifier;

    final AccountData accountData = changeNotifier.getAccountData();
    final PersonalData personalData = changeNotifier.getPersonalData();
    final SchoolData schoolData = changeNotifier.getSchoolData();

    final accountDataIsValid = accountData.isValidData;
    if (accountDataIsValid == false) {
      changeNotifier.setAccountDataMessageError(
        'Ingresa los datos correctamente',
      );
      return;
    }

    final thePasswordsAreTheSame = accountData.pass == accountData.confirmPass;
    if (thePasswordsAreTheSame == false) {
      changeNotifier.setAccountDataMessageError(
        'Las contraseñas deben coincidir',
      );
      return;
    }

    final repository = registerStudentController.repository;
    final SignUpParams signUpParams = SignUpParams(
      fullName: personalData.fullName,
      collegeName: schoolData.collegeName,
      collegeEnrollment: schoolData.collegeEnrollment,
      email: accountData.email,
      pass: accountData.pass,
      role: Role.STUDENT,
    );

    final studentDataWasRegistered = await repository.signUp(signUpParams);
    if (studentDataWasRegistered == false) {
      changeNotifier.setAccountDataMessageError(
        'Ocurrió un error, inténtalo mas tarde',
      );
      return;
    }

    registerStudentController.navigator.goToConfirmarAccount(context);
  }
}
