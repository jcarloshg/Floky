import 'package:floky/data/usecase/awsamplify/response_activities/data.get_activities_by_keyword.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/data.get_activity_by_ID.dart';
import 'package:floky/data/usecase/awsamplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:get_it/get_it.dart';

Future<void> responseActivities({required GetIt di})  async {
  Future<void> _domain() async {
    di.registerFactory(() => ResponseActivitiesBloc());
    return await null;
  }

  Future<void> _data() async {
    di.registerSingleton<GetRecentActivitiesRepository>(
      GetRecentActivitiesData(),
      signalsReady: true,
    );
    di.registerSingleton<GetActivitiesByKeyWordRepository>(
      GetActivitiesByKeyWordData(),
      signalsReady: true,
    );
    di.registerSingleton<GetActivityByIDRepository>(
      GetActivityByIDData(),
      signalsReady: true,
    );
    return await null;
  }

  Future<void> _view() async {
    di.registerSingleton<ResponseActivitiesRepository>(
      ResponseActivities(
        getActivitiesByKeyWordRepository:
            di<GetActivitiesByKeyWordRepository>(),
        getActivityByIDRepository: di<GetActivityByIDRepository>(),
        getRecentActivitiesRepository: di<GetRecentActivitiesRepository>(),
      ),
      signalsReady: true,
    );

    di.registerSingleton(
      ResponseActivitiesController(
        repository: di<ResponseActivitiesRepository>(),
      ),
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
