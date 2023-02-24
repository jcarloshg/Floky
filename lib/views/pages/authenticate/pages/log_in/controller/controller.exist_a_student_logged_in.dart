import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in.dart';
import 'package:floky/views/pages/authenticate/controller/navigator.authenticate.dart';

class ExistAStudentLoggedInController {
  final LogInRepository domain;
  final LoginChangeNotifier state;
  final AuthenticateNavigator navigator;
  //
  final GlobalState globalState;

  ExistAStudentLoggedInController({
    required this.domain,
    required this.state,
    required this.navigator,
    required this.globalState,
  });

  existAStudentLoggedIn() async {
    final Account? studentLoggedIn = await domain.existAStudentLoggedIn();
    final existStudentLogged = (studentLoggedIn != null) ? true : false;
    existStudentLogged ? navigator.goToHome() : navigator.goToLogInScreen();
    return existStudentLogged;
  }
}
