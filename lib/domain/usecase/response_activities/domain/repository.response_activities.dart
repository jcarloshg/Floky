import 'package:floky/domain/entities/models/Activity.dart';

abstract class ResponseActivitiesRepository {
  Future<List<Activity>> getRecentActivities();
  Future<Activity> getActivityByID({required String id});

  // Future<List<Activity>> getActivitiesByKeyWord();
  // Future<List<Activity>> getActivitiesByType();
}
