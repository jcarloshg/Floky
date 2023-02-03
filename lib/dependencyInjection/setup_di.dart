import 'package:floky/data/usecase/awsamplify/authenticate/authenticate.aws.dart';
import 'package:floky/dependencyInjection/response_activities.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/pages/authenticate/singin/login.controller.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  await _data();
  await _domain();
  await _view();
  await _driver();

  await responseActivities(di: di);
}

_data() async {
  di.registerLazySingleton<Authenticate>(
    () => AuthenticateAws(),
  );
  return await null;
}

_domain() async {
  di.registerFactory(() => AuthenticateBloc(authenticate: di()));
}

_view() async {
  di.registerSingleton(LoginController(), signalsReady: true);
  di.registerSingleton(SingupController(), signalsReady: true);
  di.registerSingleton(ResetPassControll(), signalsReady: true);

  return await null;
}

// access to hardware from device
_driver() async {
  return await null;
}
