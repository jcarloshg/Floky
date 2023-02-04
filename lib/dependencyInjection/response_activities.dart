import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/aws_amplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivities({required GetIt di}) async {
  Future<void> _domain() async {
    di.registerFactory(() => ResponseActivitiesBloc());
    return await null;
  }

  Future<void> _data() async {
    di.registerSingleton<GetRecentActivitiesData>(
      GetRecentActivitiesData(),
      signalsReady: true,
    );
    di.registerSingleton<GetActivitiesByKeyWordData>(
      GetActivitiesByKeyWordData(),
      signalsReady: true,
    );
    di.registerSingleton<GetActivityByIDData>(
      GetActivityByIDData(),
      signalsReady: true,
    );
    return await null;
  }

  Future<void> _view() async {
    final getActivitiesByKeyWord = di<GetActivitiesByKeyWordData>();
    final getRecentActivities = di<GetRecentActivitiesData>();
    final getActivityByID = di<GetActivityByIDData>();

    final ResponseActivitiesController responseActivitiesController =
        ResponseActivitiesController(
      getActivitiesByKeyWordData: getActivitiesByKeyWord,
      getActivityByIDData: getActivityByID,
      getRecentActivitiesData: getRecentActivities,
    );

    di.registerSingleton<ResponseActivitiesController>(
      responseActivitiesController,
      signalsReady: true,
    );

    return await null;
  }

  Future<void> _driver() async {
    return await null;
  }

  await _domain();
  await _data();
  await _view();
  await _driver();
}
