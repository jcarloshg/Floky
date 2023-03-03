import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/controller.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> getRecentActivities({
  required GetIt di,
  required ResponseActivities domain,
  required ResponseActivitiesNavigator navigator,
}) async {
  //

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetRecentActivitiesState>(
    GetRecentActivitiesState(),
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetRecentActivitiesController>(
    GetRecentActivitiesController(
      domain: domain,
      state: di<GetRecentActivitiesState>(),
      navigator: navigator,
    ),
    signalsReady: true,
  );
  //============================================================
  // driver
  //============================================================

  return await null;
}
