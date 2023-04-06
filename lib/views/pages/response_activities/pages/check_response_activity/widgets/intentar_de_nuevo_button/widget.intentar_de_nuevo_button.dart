import 'dart:developer';

import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/widgets/UI/button_text/button_text.dart';
import 'package:flutter/material.dart';

class IntentarDeNuevoButton extends StatelessWidget {
  const IntentarDeNuevoButton({
    super.key,
    required this.responseActivitiesController,
  });

  final ResponseActivitiesController responseActivitiesController;

  @override
  Widget build(BuildContext context) {
    //

    responseActivitiesController.navigator.setBuildContext(context);

    return Container(
      alignment: Alignment.centerRight,
      width: double.infinity,
      child: ButtonText(
        label: 'Intentar de nuevo',
        function: () => responseActivitiesController.navigator.goToBack(),
      ),
    );
  }
}
