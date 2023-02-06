import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';

class BehaviorValidResponseButton {
  final ResponseActivitiesChangeNotifier responseActivitiesChangeNotifier =
      di<ResponseActivitiesChangeNotifier>();
  final ResponseActivitiesController responseActivitiesController =
      di<ResponseActivitiesController>();

  Future<void> validResponse({
    required ActivityType activityType,
    required String answerCorrect,
  }) async {
    final Account currentStudent =
        await responseActivitiesController.repository.getCurrentStudent();

    log('validResponse');
    print(currentStudent);
    // final String response = responseActivitiesChangeNotifier.response;
    // await responseActivitiesController.repository.responseActivity(
    //   activityType: activityType,
    //   answerCorrect: answerCorrect,
    //   response: response,
    // );
  }
}
