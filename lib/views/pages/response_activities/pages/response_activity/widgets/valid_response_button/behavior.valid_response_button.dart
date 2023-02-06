import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';

class BehaviorValidResponseButton {
  final responseActivitiesChangeNotifier =
      di<ResponseActivitiesChangeNotifier>();
  final responseActivitiesController = di<ResponseActivitiesController>();

  void validResponse() {
    final String response = responseActivitiesChangeNotifier.response;
    log('validResponse $response');
  }
}
