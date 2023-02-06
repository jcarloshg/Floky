import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/views/pages/response_activities/pages/response_activity/widgets/valid_response_button/behavior.valid_response_button.dart';
import 'package:flutter/material.dart';

class ValidResponseButton extends StatelessWidget
    with BehaviorValidResponseButton {
  ValidResponseButton({
    super.key,
    required this.answerCorrect,
    required this.activityType,
  });

  final String answerCorrect;
  final ActivityType activityType;
  static const String textButton = 'Comprobar';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => validResponse(
          activityType: activityType,
          answerCorrect: answerCorrect,
        ),
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
        ValidResponseButton.textButton,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );
}
