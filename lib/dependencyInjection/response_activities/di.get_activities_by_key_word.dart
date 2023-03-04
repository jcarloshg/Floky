import 'package:floky/data/usecase/response_activities/get_activities_by_key_word/controller.get_activities_by_key_word.dart';
import 'package:floky/data/usecase/response_activities/get_activities_by_key_word/state.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> getActivitiesByKeyWord({
  required GetIt di,
  required ResponseActivities domain,
  required ResponseActivitiesNavigator navigator,
}) async {
  //

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetActivitiesByKeyWordState>(
    GetActivitiesByKeyWordState(),
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<GetActivitiesByKeyWordController>(
    GetActivitiesByKeyWordController(
      domain: domain,
      navigator: navigator,
      state: di<GetActivitiesByKeyWordState>(),
    ),
    signalsReady: true,
  );
  //============================================================
  // driver
  //============================================================

  return await null;
}
