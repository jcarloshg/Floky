import 'package:floky/data/usecase/aws_amplify/authenticate/data.exist_a_student_logged_in.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.log_in_method.dart';
import 'package:floky/domain/change_notifier/authenticate/change_notifier.log_in.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:floky/views/pages/authenticate/controller/navigator.authenticate.dart';
import 'package:get_it/get_it.dart';

logIn({required GetIt di}) async {
  await _domain(di: di);
  await _data(di: di);
  await _view(di: di);
  await _driver(di: di);
}

_domain({required GetIt di}) async {
  di.registerSingleton<LoginChangeNotifier>(
    LoginChangeNotifier(),
    signalsReady: true,
  );
  return await null;
}

_data({required GetIt di}) async {
  di.registerSingleton<GetCurrentStudentData>(
    GetCurrentStudentData(),
    signalsReady: true,
  );

  di.registerSingleton<ExistAStudentLoggedInData>(
    ExistAStudentLoggedInData(
      authenticateChangeNotifier: di<LoginChangeNotifier>(),
    ),
    signalsReady: true,
  );

  di.registerSingleton<LogInMethodData>(
    LogInMethodData(
      authenticateChangeNotifier: di<LoginChangeNotifier>(),
    ),
    signalsReady: true,
  );

  return await null;
}

_view({required GetIt di}) async {
  final LogInController logInController = LogInController(
    changeNotifier: di<LoginChangeNotifier>(),
    existAStudentLoggedInData: di<ExistAStudentLoggedInData>(),
    logInMethodData: di<LogInMethodData>(),
    navigator: AuthenticateNavigator(),
  );

  di.registerSingleton<LogInController>(
    logInController,
    signalsReady: true,
  );

  return await null;
}

_driver({required GetIt di}) async {}
