import 'package:floky/data/usecase/aws_amplify/authenticate/data.exist_a_student_logged_in.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.log_in_method.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/usecase/authenticate/application/log_in/application.log_in.dart';
import 'package:floky/views/pages/authenticate/controller/navigator.authenticate.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.exist_a_student_logged_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
import 'package:get_it/get_it.dart';

logIn({required GetIt di}) async {
  //============================================================
  // domain
  //============================================================
  di.registerSingleton<LoginChangeNotifier>(
    LoginChangeNotifier(),
    signalsReady: true,
  );

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetCurrentStudentData>(
    GetCurrentStudentData(),
    signalsReady: true,
  );
  final existAStudentLoggedInData = ExistAStudentLoggedInData();
  final logInMethodData = LogInMethodData();

  //============================================================
  // view
  //============================================================
  LogIn logIn = LogIn(
    existAStudentLoggedInRepository: existAStudentLoggedInData,
    logInMethodRepository: logInMethodData,
  );

  di.registerSingleton<LogInController>(
    LogInController(
      domain: logIn,
      state: di<LoginChangeNotifier>(),
      navigator: AuthenticateNavigator(),
      globalState: di<GlobalState>(),
    ),
    signalsReady: true,
  );

  di.registerSingleton<ExistAStudentLoggedInController>(
    ExistAStudentLoggedInController(
      domain: logIn,
      state: di<LoginChangeNotifier>(),
      navigator: AuthenticateNavigator(),
      globalState: di<GlobalState>(),
    ),
    signalsReady: true,
  );

  //============================================================
  // driver
  //============================================================

  return await null;
}
