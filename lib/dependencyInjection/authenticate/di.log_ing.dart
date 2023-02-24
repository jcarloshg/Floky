import 'package:floky/data/usecase/aws_amplify/authenticate/data.exist_a_student_logged_in.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.log_in_method.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/usecase/authenticate/application/log_in/application.log_in.dart';
import 'package:floky/domain/usecase/authenticate/domain/log_in/repository.log_in.dart';
import 'package:floky/views/pages/authenticate/controller/navigator.authenticate.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.exist_a_student_logged_in.dart';
import 'package:floky/views/pages/authenticate/pages/log_in/controller/controller.log_in.dart';
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
      globalState: di<GlobalState>(),
      state: di<LoginChangeNotifier>(),
    ),
    signalsReady: true,
  );

  di.registerSingleton<LogInMethodData>(
    LogInMethodData(
      globalState: di<GlobalState>(),
      state: di<LoginChangeNotifier>(),
    ),
    signalsReady: true,
  );

  di.registerSingleton<LogInRepository>(
    LogIn(
      existAStudentLoggedInRepository: di<ExistAStudentLoggedInData>(),
      logInMethodRepository: di<LogInMethodData>(),
    ),
    signalsReady: true,
  );

  return await null;
}

_view({required GetIt di}) async {
  di.registerSingleton<LogInController>(
    LogInController(
      domain: di<LogInRepository>(),
      state: di<LoginChangeNotifier>(),
      navigator: AuthenticateNavigator(),
      globalState: di<GlobalState>(),
    ),
    signalsReady: true,
  );

  di.registerSingleton<ExistAStudentLoggedInController>(
    ExistAStudentLoggedInController(
      domain: di<LogInRepository>(),
      state: di<LoginChangeNotifier>(),
      navigator: AuthenticateNavigator(),
      globalState: di<GlobalState>(),
    ),
    signalsReady: true,
  );

  return await null;
}

_driver({required GetIt di}) async {}
