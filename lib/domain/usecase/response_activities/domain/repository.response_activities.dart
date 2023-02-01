import 'package:floky/domain/entities/models/Activity.dart';

abstract class ResponseActivitiesRepository {
  // nominal tracking
  Future<List<Activity>> getRecentActivities();
  Future<Activity> getActivityByID({required String id});

  // tracking alternative nominal
  Future<List<Activity>> getActivitiesByKeyWord({required String keyword});

  // Future<List<Activity>> getActivitiesByType();
}
