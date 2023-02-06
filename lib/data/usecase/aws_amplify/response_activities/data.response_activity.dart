import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/domain/usecase/response_activities/domain/repository.response_activity.dart';
import 'package:floky/domain/usecase/response_activities/infrastructure/aws/aws.response_activity.dart';

class ResponseActivityData extends ResponseActivityRepository {
  @override
  Future<void> run({
    required ActivityType activityType,
    required String answerCorrect,
    required String response,
  }) async {
    await ResponseActivityAWS().run(
      activityType: activityType,
      answerCorrect: answerCorrect,
      response: response,
    );
  }
}
