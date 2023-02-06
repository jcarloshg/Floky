import 'package:floky/data/usecase/aws_amplify/authenticate/data.get_current_student.dart';
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
    return await null;
  }

  //
  //
  // view
  _view() async {
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
