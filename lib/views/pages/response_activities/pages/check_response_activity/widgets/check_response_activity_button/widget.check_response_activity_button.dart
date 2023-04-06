import 'dart:math';

import 'package:floky/data/usecase/response_activities/get_recent_activities/controller.get_recent_activities.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:flutter/material.dart';

class CheckResponseActivityButton extends StatelessWidget {
  //

  const CheckResponseActivityButton({
    super.key,
    required this.responseActivitiesController,
  });

  final ResponseActivitiesController responseActivitiesController;
  static const String title = 'Realizar nueva actividad';

  @override
  Widget build(BuildContext context) {
    //
    responseActivitiesController.navigator.setBuildContext(context);

    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => goToViewNewActivity(),
        child: Container(
          width: 200,
          height: 48,
          decoration: boxDecoration(),
          child: Center(child: text()),
        ),
      ),
    );
  }

  void goToViewNewActivity() {
    final getRecentActivitiesController = di<GetRecentActivitiesController>();
    final getRecentActivitiesState = getRecentActivitiesController.state;
    final getRecentActivities = getRecentActivitiesState.getRecentActivities();
    final activitiesLength = getRecentActivities.length;

    Random random = Random();
    int min = 0, max = activitiesLength;
    int randomIndex = min + random.nextInt(max - min);

    final activityRandom = getRecentActivities[randomIndex];

    responseActivitiesController.navigator.goToViewNewActivity(activityRandom);
  }

  BoxDecoration boxDecoration() => BoxDecoration(
        border: Border.all(color: Colors.blueAccent.shade400),
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(4),
      );

  Text text() => const Text(
        CheckResponseActivityButton.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
}
