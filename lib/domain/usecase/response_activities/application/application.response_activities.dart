import 'package:floky/domain/entities/models/Account.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/domain/usecase/authenticate/domain/repository.get_current_student.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activities_by_key_word.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_activity_by_ID.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.get_recent_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activities.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activity.dart';

class ResponseActivities extends ResponseActivitiesRepository {
  final GetRecentActivitiesRepository getRecentActivitiesRepository;
  final GetActivityByIDRepository getActivityByIDRepository;
  final ResponseActivityRepository responseActivityRepository;
  final GetActivitiesByKeyWordRepository getActivitiesByKeyWordRepository;
  final GetCurrentStudentRepository getCurrentStudentRepository;

  ResponseActivities({
    required this.getRecentActivitiesRepository,
    required this.getActivityByIDRepository,
    required this.responseActivityRepository,
    required this.getActivitiesByKeyWordRepository,
    required this.getCurrentStudentRepository,
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
  Future<Activity?> getActivityByID({required String id}) async {
    final Activity? activity = await getActivityByIDRepository.run(id: id);
    return activity;
  }

  @override
  Future<void> responseActivity({
    required ActivityType activityType,
    required String answerCorrect,
    required String response,
  }) async {
    await responseActivityRepository.run(
      activityType: activityType,
      answerCorrect: answerCorrect,
      response: response,
    );
    return;
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

  //============================================================
  // auxiliar methods
  //============================================================

  @override
  Future<Account> getCurrentStudent() async {
    final Account currentStudent = await getCurrentStudentRepository.run();
    return currentStudent;
  }
}
