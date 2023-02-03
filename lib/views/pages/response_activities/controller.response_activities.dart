import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';

class ResponseActivitiesController {
  final ResponseActivitiesRepository repository;

  // ============================================================
  // add [bloc] to every service from this nominal case
  // create [ResponseActivities] into [setupDI()] with his [services && repositories]
  // drop this methods
  // this controller only could receive an instance of [ResponseActivities]
  // ============================================================

  ResponseActivitiesController({required this.repository});

  // @override
  // Future<List<Activity>> getRecentActivities() async {
  //   final activities = await repository.getRecentActivities();
  //   return activities;
  // }

  // @override
  // Future<Activity> getActivityByID({required String id}) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<List<Activity>> getActivitiesByKeyWord({
  //   required String keyword,
  // }) async {
  //   final activities = await repository.getActivitiesByKeyWord(
  //     keyword: keyword,
  //   );
  //   return activities;
  // }

}
