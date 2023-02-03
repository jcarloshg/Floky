import 'package:floky/data/usecase/awsamplify/authenticate/authenticate.aws.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/domain/bloc/authenticate/authenticate_bloc.dart';
import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/domain/usecase/authenticate/authenticate.usecase.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
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

  //============================================================
  // by use cases
  //============================================================
  await _responseActivities();
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
  //
  //
  // useCase [authenticate]
  //
  di.registerSingleton(LoginController(), signalsReady: true);
  di.registerSingleton(SingupController(), signalsReady: true);
  di.registerSingleton(ResetPassControll(), signalsReady: true);

  return await null;
}

// access to hardware from device
_driver() async {
  return await null;
}

//============================================================
// by use cases
//============================================================
Future<void> _responseActivities() async {
  //
  // domain
  // insert into every [data class]
  //
  di.registerFactory(() => ResponseActivitiesBloc());
  //
  // data
  //
  //
  di.registerSingleton(GetRecentActivitiesData(), signalsReady: true);
  di.registerSingleton(GetActivitiesByKeyWordData(), signalsReady: true);
  di.registerSingleton(GetActivityByIDData(), signalsReady: true);

  di.registerSingleton<ResponseActivitiesRepository>(
    ResponseActivities(
      getActivitiesByKeyWordRepository: di(),
      getActivityByIDRepository: di(),
      getRecentActivitiesRepository: di(),
    ),
    signalsReady: true,
  );

  //
  // view
  //
  //
  di.registerSingleton(
    ResponseActivitiesController(
      repository: di<ResponseActivitiesRepository>(),
    ),
    signalsReady: true,
  );
  //
  // driver
  //
  //
}
