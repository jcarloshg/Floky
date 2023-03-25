import 'dart:developer';

import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:flutter/material.dart';

class ResponseActivityButton extends StatelessWidget {
  const ResponseActivityButton({
    super.key,
    required this.responseActivitiesController,
  });

  final ResponseActivitiesController responseActivitiesController;
  static const String title = 'Responser actividad';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => responseActivitiesController.responseActivity(),
        child: Container(
          width: 200,
          height: 48,
          decoration: boxDecoration(),
          child: Center(child: text()),
        ),
      ),
    );
  }

  BoxDecoration boxDecoration() => BoxDecoration(
        border: Border.all(color: Colors.blueAccent.shade400),
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(4),
      );

  Text text() => const Text(
        ResponseActivityButton.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
}
