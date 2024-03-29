import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivity({
  required GetIt di,
  required ResponseActivities domain,
  required ResponseActivitiesNavigator navigator,
}) async {
  //

  //============================================================
  // data
  //============================================================
  di.registerSingleton<ResponseActivitiesChangeNotifier>(
    ResponseActivitiesChangeNotifier(),
    signalsReady: true,
  );

  //============================================================
  // domain -> this has been initialized
  //============================================================

  //============================================================
  // view
  //============================================================
  di.registerSingleton<ResponseActivitiesController>(
    ResponseActivitiesController(
      domain: domain,
      state: di<ResponseActivitiesChangeNotifier>(),
      navigator: navigator,
    ),
    signalsReady: true,
  );

  //============================================================
  // driver
  //============================================================
}
