import 'dart:developer';

import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
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

  void responseActivity() {
    final String responseValue = state.getResponse();
    log(responseValue);
  }
}
