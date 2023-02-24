import 'dart:developer';

import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in.dart';
import 'package:floky/views/pages/authenticate/controller/navigator.authenticate.dart';

class LogInController {
  final LogInRepository domain;
  final LoginChangeNotifier state;
  final AuthenticateNavigator navigator;
  //
  final GlobalState globalState;

  LogInController({
    required this.domain,
    required this.state,
    required this.navigator,
    required this.globalState,
  });

  Future<void> logIn() async {
    //

    final logInData = state.getCurrentLogInFormController().getData();

    final isValidForm = logInData.isValidData;
    if (isValidForm == false) {
      state.setMessageErro('Ingresa los datos correctamente');
      return;
    }

    state.setLogInData(logInData);

    final String email = logInData.email;
    final String pass = logInData.pass;
    final Account? accountStudent = await domain.logInMethod(
      email: email,
      pass: pass,
    );

    final existAccountLogged = accountStudent != null ? true : false;
    log(existAccountLogged.toString());
    if (existAccountLogged == false) {
      state.setMessageErro(
        'El correo electrónico o la contraseña son incorrectos',
      );
      return;
    }

    // [existAccountLogged] is true
    globalState.setCurrentStudent(accountStudent!);
    navigator.goToHome();
  }
}
