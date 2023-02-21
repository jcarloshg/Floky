import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/student_params_to_sign_up.dart';
import 'package:floky/domain/usecase/authenticate/domain/register_student/repository.confirm_user.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';

class ConfirmarAccountButtonBehavior {
  Future<void> confirmAccountStudent(String code) async {
    final controller = di<RegisterStudentController>();
    final changeNotifier = controller.changeNotifier;
    final AccountData accountData = changeNotifier.getAccountData();

    // data to confirm account
    final String email = accountData.email;
    final String confirmationCode = code;

    final ConfirmUserParams confirmUserParams = ConfirmUserParams(
      username: email,
      confirmationCode: confirmationCode,
    );

    final accountWasConfirmed =
        await controller.repository.confirmUser(confirmUserParams);

    if (accountWasConfirmed == false) {
      changeNotifier.setConfirmarAccountMessageError(
        'Ingresa el código correctamente.',
      );
      return;
    }

    // todo go to welcome screen
  }
}
