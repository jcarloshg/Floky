import 'package:floky/domain/usecase/doing_activities/doing_activities.usecase.dart';
import 'package:floky/models/model.index.dart';

class DoingActivitiesAWS extends DoingActivities {
  @override
  Future<ResponseActivities> getProgressFromStudent({
    required String studentId,
  }) async {
    return ResponseActivities(
      isOK: false,
      msg: '[NOT_IMPLEMENT] - getProgressFromStudent',
      data: studentId,
    );
  }

  @override
  Future<ResponseActivities> listActivitiesByActivityType({
    required ActivityType activityType,
  }) async {
    return ResponseActivities(
      isOK: false,
      msg: '[NOT_IMPLEMENT] - listActivitiesByActivityType',
      data: activityType,
    );
  }

  @override
  Future<ResponseActivities> listActivitiesByKeyword({
    required String keyword,
  }) async {
    return ResponseActivities(
      isOK: false,
      msg: '[NOT_IMPLEMENT] - listActivitiesByKeyword',
      data: keyword,
    );
  }

  @override
  Future<ResponseActivities> listActivitiesRandom() async {
    return ResponseActivities(
      isOK: false,
      msg: '[NOT_IMPLEMENT] - listActivitiesRandom',
      data: null,
    );
  }

  @override
  Future<ResponseActivities> responseActivity({
    required String accountId,
    required String activityId,
  }) async {
    return ResponseActivities(
      isOK: false,
      msg: '[NOT_IMPLEMENT] - responseActivity',
      data: {
        accountId: accountId,
        activityId: activityId,
      },
    );
  }
}
