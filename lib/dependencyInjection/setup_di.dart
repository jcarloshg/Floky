import 'package:floky/data/usecase/awsamplify/authenticate/authenticate.aws.dart';
import 'package:floky/data/usecase/awsamplify/doing_activities/doing_activities.aws.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:floky/domain/usecase/doing_activities/doing_activities.usecase.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/pages/authenticate/singin/login.controller.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  await _data();
  await _domain();
  await _driver();
  await _view();
}

_domain() async {
  di.registerFactory(
    () => AuthenticateBloc(authenticate: di()),
  );
}

_data() async {
  di.registerLazySingleton<Authenticate>(() => AuthenticateAws());
  di.registerLazySingleton<DoingActivities>(() => DoingActivitiesAWS());

  return await null;
}

_view() async {
  //============================================================
  // ! this is to nominal cases from the all useCases
  // for example:
  // only needs a unique object from [SingupController] to all
  // screens that pertains to nominal case [SingUp]
  //============================================================
  // di.registerFactory<LoginController>(() => LoginController());
  di.registerSingleton(LoginController(), signalsReady: true);
  di.registerSingleton(SingupController(), signalsReady: true);
  di.registerSingleton(ResetPassControll(), signalsReady: true);

  return await null;
}

// access to hardware from device
_driver() async {
  return await null;
}
