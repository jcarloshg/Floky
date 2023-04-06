import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class ResponseActivityRepository {
  Future<void> run({
    required Account currentStudent,
    required bool isTheCorrectResponse,
    required ActivityType activityType,
  });
}
