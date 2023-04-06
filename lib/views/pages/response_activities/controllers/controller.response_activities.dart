import 'dart:developer';

import 'package:floky/data/usecase/response_activities/get_activity_by_id/controller.get_activity_by_id.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';

class ResponseActivitiesController {
  final ResponseActivities domain;
  final ResponseActivitiesChangeNotifier state;
  final ResponseActivitiesNavigator navigator;

  ResponseActivitiesController({
    required this.domain,
    required this.state,
    required this.navigator,
  });

  Future<void> responseActivity() async {
    //

    // getActivitySelected
    final getActivityByIdController = di<GetActivityByIdController>();
    final getActivityByIdState = getActivityByIdController.state;
    final activitySelected = getActivityByIdState.getActivitySelected();

    // getCurrentStudent
    final Account currentStudent = await domain.getCurrentStudent();
    inspect(currentStudent);

    // valid response
    final response = state.getResponse();
    final responseCorrect = activitySelected?.answers.correct;

    if (response == responseCorrect) {
      log('chi');
    } else {
      log('no');
    }

    // this.domain.responseActivityRepository.run(
    //       activityType: activityType,
    //       answerCorrect: answerCorrect,
    //       response: response,
    //     );
  }
}
