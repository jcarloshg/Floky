import 'dart:developer';

import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activity.dart';

class ResponseActivityAWS extends ResponseActivityRepository {
  @override
  Future<void> run({
    required String studentID,
    required bool isTheCorrectResponse,
    required ActivityType activityType,
  }) {
    throw UnimplementedError();
  }
}
