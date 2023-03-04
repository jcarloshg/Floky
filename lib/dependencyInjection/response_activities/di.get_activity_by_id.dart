import 'package:floky/data/usecase/response_activities/get_activity_by_id/controller.get_activity_by_id.dart';
import 'package:floky/data/usecase/response_activities/get_activity_by_id/state.get_activity_by_id.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> getActivityById({
  required GetIt di,
  required ResponseActivities domain,
  required ResponseActivitiesNavigator navigator,
}) async {
  //

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetActivityByIdState>(
    GetActivityByIdState(),
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetActivityByIdController>(
    GetActivityByIdController(
      domain: domain,
      state: di<GetActivityByIdState>(),
      navigator: navigator,
    ),
    signalsReady: true,
  );
  //============================================================
  // driver
  //============================================================

  return await null;
}
