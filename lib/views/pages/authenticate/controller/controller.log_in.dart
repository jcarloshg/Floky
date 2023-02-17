import 'dart:developer';

import 'package:floky/data/usecase/aws_amplify/authenticate/data.exist_a_student_logged_in.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.log_in_method.dart';
import 'package:floky/domain/change_notifier/authenticate/change_notifier.authenticate.dart';
import 'package:floky/domain/usecase/authenticate/application/log_in/application.log_in.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in.dart';

class LogInController {
  late LogInRepository repository;
  final AuthenticateChangeNotifier changeNotifier;

  final ExistAStudentLoggedInData existAStudentLoggedInData;
  final LogInMethodData logInMethodData;

  LogInController({
    required this.changeNotifier,
    required this.existAStudentLoggedInData,
    required this.logInMethodData,
  }) {
    repository = LogIn(
      existAStudentLoggedInRepository: existAStudentLoggedInData,
      logInMethodRepository: logInMethodData,
    );
  }

  void existAStudentLoggedIn() {}

  void logIn() {
    final loginFormController = changeNotifier.loginFormController;
    final isValidForm = loginFormController.formKey.currentState?.validate();

    log(isValidForm.toString());
    if (isValidForm == false) {
      changeNotifier.messageErroLogIn = 'Ingresa los datos correctamente';
      return;
    }
    final String email = loginFormController.emailString;
    final String pass = loginFormController.passString;
    repository.logInMethod(email: email, pass: pass);
  }
}
