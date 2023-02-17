import 'package:floky/domain/change_notifier/authenticate/change_notifier.register_student.dart';
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

_driver({required GetIt di}) async {
  return await null;
}

_view({required GetIt di}) async {
  return await null;
}

_data({required GetIt di}) async {
  return await null;
}
