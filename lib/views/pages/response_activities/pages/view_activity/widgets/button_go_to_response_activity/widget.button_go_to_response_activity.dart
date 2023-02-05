import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:flutter/material.dart';

class GoToResponseActivityButton extends StatelessWidget {
  const GoToResponseActivityButton({
    super.key,
    required this.activity,
  });

  final Activity activity;
  static const String title = 'Responser actividad.';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => goToResponseActivity(context, activity),
        child: Container(
          width: 200,
          height: 48,
          decoration: boxDecoration(),
          child: Center(child: text()),
        ),
      ),
    );
  }

  void goToResponseActivity(BuildContext context, Activity activity) {
    final controller = di<ResponseActivitiesController>();
    controller.navigator.goToResponseActivity(context, activity);
  }

  BoxDecoration boxDecoration() => BoxDecoration(
        border: Border.all(color: Colors.blueAccent.shade400),
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(4),
      );

  Text text() => const Text(
        GoToResponseActivityButton.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
}
