import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class ResponseActivitiesRepository {
  //

  // nominal tracking
  Future<List<Activity>> getRecentActivities();
  Future<Activity?> getActivityByID({required String id});
  Future<void> responseActivity({
    required String studentID,
    required bool isTheCorrectResponse,
    required ActivityType activityType,
  });

  // tracking alternative nominal
  Future<List<Activity>> getActivitiesByKeyWord({required String keyword});
  // Future<List<Activity>> getActivitiesByType();

  // auxiliar methods
  Future<Account> getCurrentStudent();
}
