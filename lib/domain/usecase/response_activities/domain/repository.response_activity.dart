import 'package:floky/domain/entities/models/ModelProvider.dart';

abstract class ResponseActivityRepository {
  Future<void> run({
    required ActivityType activityType,
    required String answerCorrect,
    required String response,
  });
}
