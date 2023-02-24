import 'package:floky/data/usecase/aws_amplify/authenticate/data.get_current_student.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.response_activity.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivities({required GetIt di}) async {
  //
  //
  // domain
  Future<void> _domain() async {
    di.registerSingleton<ResponseActivitiesChangeNotifier>(
      ResponseActivitiesChangeNotifier(),
      signalsReady: true,
    );

    return await null;
  }

  //
  //
  // data
  Future<void> _data() async {
    di.registerSingleton<GetRecentActivitiesData>(
      GetRecentActivitiesData(),
      signalsReady: true,
    );
    di.registerSingleton<GetActivitiesByKeyWordData>(
      GetActivitiesByKeyWordData(),
      signalsReady: true,
    );
    di.registerSingleton<ResponseActivityData>(
      ResponseActivityData(),
      signalsReady: true,
    );
    di.registerSingleton<GetActivityByIDData>(
      GetActivityByIDData(),
      signalsReady: true,
    );
    return await null;
  }

  //
  //
  // view
  Future<void> _view() async {
    final ResponseActivitiesController responseActivitiesController =
        ResponseActivitiesController(
      getActivitiesByKeyWordData: di<GetActivitiesByKeyWordData>(),
      getActivityByIDData: di<GetActivityByIDData>(),
      responseActivityData: di<ResponseActivityData>(),
      getRecentActivitiesData: di<GetRecentActivitiesData>(),
      getCurrentStudentData: di<GetCurrentStudentData>(),
      navigator: ResponseActivitiesNavigator(),
    );

    di.registerSingleton<ResponseActivitiesController>(
      responseActivitiesController,
      signalsReady: true,
    );

    return await null;
  }

  //
  //
  // _driver
  Future<void> _driver() async {
    return await null;
  }

  await _domain();
  await _data();
  await _view();
  await _driver();
}
