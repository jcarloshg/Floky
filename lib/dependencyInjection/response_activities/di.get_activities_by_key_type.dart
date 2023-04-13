import 'package:floky/data/usecase/response_activities/get_activities_by_key_type/controller.get_activities_by_key_type.dart';
import 'package:floky/data/usecase/response_activities/get_activities_by_key_type/state.get_activities_by_key_type.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> getActivitiesByKeyType({
  required GetIt di,
  required ResponseActivities domain,
  required ResponseActivitiesNavigator navigator,
}) async {
  //

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetActivitiesByKeyTypeState>(
    GetActivitiesByKeyTypeState(),
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetActivitiesByKeyTypeController>(
    GetActivitiesByKeyTypeController(
      domain: domain,
      state: di<GetActivitiesByKeyTypeState>(),
      navigator: navigator,
    ),
    signalsReady: true,
  );

  //============================================================
  // driver
  //============================================================

  return await null;
}
