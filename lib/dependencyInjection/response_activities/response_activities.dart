import 'package:floky/data/usecase/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/response_activities/data.response_activity.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/response_activities/di.get_activities_by_key_word.dart';
import 'package:floky/dependencyInjection/response_activities/di.get_activity_by_id.dart';
import 'package:floky/dependencyInjection/response_activities/di.get_recent_activities.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/domain/usecase/authenticate/infrastructure/aws.get_current_student.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activities_by_keyword.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.response_activity.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivities({required GetIt di}) async {
  //

  final ResponseActivitiesNavigator navigator = ResponseActivitiesNavigator();
  final ResponseActivities responseActivities = ResponseActivities(
    getRecentActivitiesRepository: GetRecentActivitiesAWS(),
    getActivityByIDRepository: GetActivityByIdAWS(),
    responseActivityRepository: ResponseActivityAWS(),
    getActivitiesByKeyWordRepository: GetActivitiesByKeyWordAWS(),
    getCurrentStudentRepository: GetCurrentStudentAWS(),
  );

  //============================================================
  // data
  //============================================================
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

  //============================================================
  // view
  //============================================================
  Future<void> _view() async {
    final responseActivitiesController = ResponseActivitiesController(
      globalState: di<GlobalState>(),
      navigator: ResponseActivitiesNavigator(),
      //
      getActivitiesByKeyWordData: di<GetActivitiesByKeyWordData>(),
      getActivityByIDData: di<GetActivityByIDData>(),
      responseActivityData: di<ResponseActivityData>(),
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

  await getRecentActivities(
    di: di,
    domain: responseActivities,
    navigator: navigator,
  );

  await getActivityById(
    di: di,
    domain: responseActivities,
    navigator: navigator,
  );

  await getActivitiesByKeyWord(
    di: di,
    domain: responseActivities,
    navigator: navigator,
  );
}
