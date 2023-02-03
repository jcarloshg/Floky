import 'package:floky/data/usecase/awsamplify/response_activities/data.get_recent_activities.dart';
import 'package:floky/domain/bloc/response_activities/bloc.response_activities.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activities_by_keyword.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.get_activity_by_ID.dart';

class ResponseActivitiesController implements ResponseActivitiesRepository {
  // drop
  final ResponseActivitiesBloc bloc;
  final ResponseActivitiesRepository repository;
  // not drop
  late ResponseActivities useCase;
  final GetRecentActivitiesData getRecentActivitiesData;

  //============================================================
  // add [bloc] to every service from this nominal case
  // create [ResponseActivities] into [setupDI()] with his [services && repositories]
  // drop this methods
  // this controller only could receive an instance of [ResponseActivities]
  //============================================================

  ResponseActivitiesController({
    required this.bloc,
    required this.repository,
    required this.getRecentActivitiesData,
  }) {
    useCase = ResponseActivities(
      getRecentActivitiesRepository: getRecentActivitiesData,
      getActivityByIDRepository: GetActivityByIdAWS(),
      getActivitiesByKeyWordRepository: GetActivitiesByKeyWordAWS(),
    );
  }

  @override
  Future<List<Activity>> getRecentActivities() async {
    final activities = await repository.getRecentActivities();
    return activities;
  }

  @override
  Future<Activity> getActivityByID({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<List<Activity>> getActivitiesByKeyWord({
    required String keyword,
  }) async {
    final activities = await repository.getActivitiesByKeyWord(
      keyword: keyword,
    );
    return activities;
  }
}
