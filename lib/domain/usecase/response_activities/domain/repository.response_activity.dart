import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class ResponseActivityRepository {
  Future<void> run({
    required String studentID,
    required bool isTheCorrectResponse,
    required ActivityType activityType,
  });
}
