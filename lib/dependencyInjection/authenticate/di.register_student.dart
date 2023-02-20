import 'package:floky/data/usecase/aws_amplify/authenticate/register_student/data.confirm_user.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/register_student/data.sing_up.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/controller.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/register_student/controller/navigator.register_student.dart';
import 'package:get_it/get_it.dart';

registerStudent({required GetIt di}) async {
  await _domain(di: di);
  await _data(di: di);
  await _view(di: di);
  await _driver(di: di);
}

_domain({required GetIt di}) async {
  di.registerSingleton<RegisterStudentChangeNotifier>(
    RegisterStudentChangeNotifier(),
    signalsReady: true,
  );
  return await null;
}

_data({required GetIt di}) async {
  di.registerSingleton<ConfirmUserData>(
    ConfirmUserData(),
    signalsReady: true,
  );

  di.registerSingleton<SignUpData>(
    SignUpData(changeNotifier: di<RegisterStudentChangeNotifier>()),
    signalsReady: true,
  );

  return await null;
}

_view({required GetIt di}) async {
  final registerStudentController = RegisterStudentController(
    confirmUserData: di<ConfirmUserData>(),
    signUpData: di<SignUpData>(),
    changeNotifier: di<RegisterStudentChangeNotifier>(),
    navigator: RegisterStudentNavigator(),
  );

  di.registerSingleton<RegisterStudentController>(
    registerStudentController,
    signalsReady: true,
  );
  return await null;
}

_driver({required GetIt di}) async {
  return await null;
}
