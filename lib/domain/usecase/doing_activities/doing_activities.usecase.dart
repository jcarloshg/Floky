import 'package:floky/domain/entities/models/ActivityType.dart';

class ResponseActivities {
  final bool isOK;
  final String? msg;
  final dynamic data;

  ResponseActivities({
    required this.isOK,
    this.msg,
    this.data,
  });
}

abstract class DoingActivities {
  Future<ResponseActivities> listActivitiesByKeyword({
    required String keyword,
  });

  Future<ResponseActivities> listActivitiesByActivityType({
    required ActivityType activityType,
  });

  Future<ResponseActivities> listActivitiesRandom();

  // TODO check :)
  Future<ResponseActivities> responseActivity({
    required String accountId,
    required String activityId,
  });

  Future<ResponseActivities> getProgressFromStudent({
    required String studentId,
  });
}
