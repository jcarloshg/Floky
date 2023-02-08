import 'package:floky/data/usecase/aws_amplify/authenticate/data.exist_a_student_logged_in.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/aws_amplify/authenticate/data.log_in_method.dart';
import 'package:floky/views/pages/authenticate/controller/controller.log_in.dart';
import 'package:get_it/get_it.dart';

authenticate({required GetIt di}) async {
  //
  //
  // domain
  _domain() async {
    return await null;
  }

  //
  //
  // data
  _data() async {
    di.registerSingleton<GetCurrentStudentData>(
      GetCurrentStudentData(),
      signalsReady: true,
    );

    di.registerSingleton<ExistAStudentLoggedInData>(
      ExistAStudentLoggedInData(),
      signalsReady: true,
    );

    di.registerSingleton<LogInMethodData>(
      LogInMethodData(),
      signalsReady: true,
    );

    return await null;
  }

  //
  //
  // view
  _view() async {
    final LogInController logInController = LogInController(
      existAStudentLoggedInData: di<ExistAStudentLoggedInData>(),
      logInMethodData: di<LogInMethodData>(),
    );

    di.registerSingleton<LogInController>(
      logInController,
      signalsReady: true,
    );

    return await null;
  }

  //
  //
  // driver
  _driver() async {
    return await null;
  }

  await _domain();
  await _data();
  await _view();
  await _driver();
}
