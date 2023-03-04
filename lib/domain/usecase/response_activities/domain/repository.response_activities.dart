import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class ResponseActivitiesRepository {
  // nominal tracking
  Future<List<Activity>> getRecentActivities();
  Future<Activity?> getActivityByID({required String id});
  Future<void> responseActivity({
    required ActivityType activityType,
    required String answerCorrect,
    required String response,
  });

  // tracking alternative nominal
  Future<List<Activity>> getActivitiesByKeyWord({required String keyword});
  // Future<List<Activity>> getActivitiesByType();

  // auxiliar methods
  Future<Account> getCurrentStudent();
}
