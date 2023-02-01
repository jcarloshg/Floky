import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';

class ResponseActivities extends ResponseActivitiesRepository {
  final GetRecentActivitiesRepository getRecentActivitiesRepository;
  final GetActivityByIDRepository getActivityByIDRepository;
  final GetActivitiesByKeyWordRepository getActivitiesByKeyWordRepository;

  ResponseActivities({
    required this.getRecentActivitiesRepository,
    required this.getActivityByIDRepository,
    required this.getActivitiesByKeyWordRepository,
  });

  //============================================================
  // nominal tracking
  //============================================================

  @override
  Future<List<Activity>> getRecentActivities() async {
    final List<Activity> activities = await getRecentActivitiesRepository.run();
    return activities;
  }

  @override
  Future<Activity> getActivityByID({required String id}) async {
    final Activity activity = await getActivityByIDRepository.run(id: id);
    return activity;
  }

  //============================================================
  // tracking alternative nominal
  //============================================================

  @override
  Future<List<Activity>> getActivitiesByKeyWord({
    required String keyword,
  }) async {
    final List<Activity> activities =
        await getActivitiesByKeyWordRepository.run(keyword: keyword);
    return activities;
  }
}
