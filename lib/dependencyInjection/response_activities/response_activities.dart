import 'package:floky/data/usecase/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/response_activities/data.response_activity.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/data.get_recent_activities.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivities({required GetIt di}) async {
  //

  //============================================================
  // data
  //============================================================
  di.registerSingleton<GetRecentActivitiesState>(
    GetRecentActivitiesState(),
    signalsReady: true,
  );
  di.registerSingleton<GetRecentActivitiesData>(
    GetRecentActivitiesData(),
    signalsReady: true,
  );
  //
  //
  //
  di.registerSingleton<GetActivityByIDData>(
    GetActivityByIDData(),
    signalsReady: true,
  );
  //
  //
  //
  di.registerSingleton<ResponseActivityData>(
    ResponseActivityData(),
    signalsReady: true,
  );
  //
  //
  //
  di.registerSingleton<GetActivitiesByKeyWordData>(
    GetActivitiesByKeyWordData(),
    signalsReady: true,
  );

  //============================================================
  // domain
  //============================================================
  Future<void> _domain() async {
    di.registerSingleton<ResponseActivitiesChangeNotifier>(
      ResponseActivitiesChangeNotifier(),
      signalsReady: true,
    );

    return await null;
  }

  ResponseActivities responseActivities = ResponseActivities(
    getRecentActivitiesRepository: di<GetRecentActivitiesData>(),
    getActivityByIDRepository: di<GetActivityByIDData>(),
    responseActivityRepository: di<ResponseActivityData>(),
    getActivitiesByKeyWordRepository: di<GetActivitiesByKeyWordData>(),
    getCurrentStudentRepository: di<GetCurrentStudentData>(),
  );

  //============================================================
  // view
  //============================================================
  Future<void> _view() async {
    final responseActivitiesController = ResponseActivitiesController(
      domain: responseActivities,
      globalState: di<GlobalState>(),
      navigator: ResponseActivitiesNavigator(),
      //
      getActivitiesByKeyWordData: di<GetActivitiesByKeyWordData>(),
      getActivityByIDData: di<GetActivityByIDData>(),
      responseActivityData: di<ResponseActivityData>(),
      getRecentActivitiesData: di<GetRecentActivitiesData>(),
      getCurrentStudentData: di<GetCurrentStudentData>(),
    );

    di.registerSingleton<ResponseActivitiesController>(
      responseActivitiesController,
      signalsReady: true,
    );

    return await null;
  }

  //============================================================
  // _driver
  //============================================================

  await _domain();
  await _view();
}
