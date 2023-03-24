import 'package:floky/data/usecase/response_activities/get_activity_by_id/state.get_activity_by_id.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/domain/usecase/response_activities/application/application.response_activities.dart';
import 'package:floky/views/pages/response_activities/controllers/navigator.response_activities.dart';
import 'package:flutter/material.dart';

class GetActivityByIdController {
  //

  final ResponseActivities domain;
  final GetActivityByIdState state;
  final ResponseActivitiesNavigator navigator;

  GetActivityByIdController({
    required this.state,
    required this.navigator,
    required this.domain,
  });

  void run({required String id, required BuildContext context}) async {
    state.setIsLoading(true);
    final Activity? activitySelected = await domain.getActivityByID(id: id);
    state.setIsLoading(false);

    if (activitySelected == null) {
      state.setMessageErro('No se encontró la actividad');
      return;
    }

    state.setActivitySelected(activitySelected);
    navigator.goToViewActivity(activitySelected);
  }
}
