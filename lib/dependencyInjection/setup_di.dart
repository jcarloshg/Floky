import 'package:floky/data/usecase/awsamplify/authenticate/authenticate.aws.dart';
import 'package:floky/data/usecase/awsamplify/doing_activities/doing_activities.aws.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/aws.response_activities.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:floky/domain/usecase/doing_activities/doing_activities.usecase.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';
import 'package:floky/views/pages/authenticate/reset_pass/reset_pass.controll.dart';
import 'package:floky/views/pages/authenticate/singin/login.controller.dart';
import 'package:floky/views/pages/authenticate/singup/singup.controller.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:get_it/get_it.dart';

GetIt di = GetIt.instance;

Future<void> setupDI() async {
  await _data();
  await _domain();
  await _view();
  await _driver();
}

_data() async {
  di.registerLazySingleton<Authenticate>(
    () => AuthenticateAws(),
  );

  di.registerLazySingleton<DoingActivities>(
    () => DoingActivitiesAWS(),
  );

  //============================================================
  // response activities
  //============================================================
  di.registerSingleton(GetRecentActivitiesData(), signalsReady: true);
  di.registerLazySingleton<ResponseActivitiesRepository>(
    () => setupResponseActivitiesAWS(),
  );

  return await null;
}

_domain() async {
  di.registerFactory(() => AuthenticateBloc(authenticate: di()));
  di.registerFactory(() => ResponseActivitiesBloc());
}

_view() async {
  //
  //
  // useCase [authenticate]
  //
  di.registerSingleton(LoginController(), signalsReady: true);
  di.registerSingleton(SingupController(), signalsReady: true);
  di.registerSingleton(ResetPassControll(), signalsReady: true);

  //
  //
  // useCase [response_activities]
  //
  di.registerSingleton(
    ResponseActivitiesController(
      bloc: di(),
      repository: di(),
      getRecentActivitiesData: di(),
    ),
    signalsReady: true,
  );

  return await null;
}

// access to hardware from device
_driver() async {
  return await null;
}
