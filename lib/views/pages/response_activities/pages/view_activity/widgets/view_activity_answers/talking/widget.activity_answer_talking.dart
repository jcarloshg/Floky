import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/view_activity_answers/talking/widget.talking_button.dart';
// import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/view_activity_answers/talking/widget.talking_button_.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerTalking extends StatelessWidget {
  const ActivityAnswerTalking({
    super.key,
    required this.correctAnswer,
    required this.responseActivitiesController,
  });

  final String correctAnswer;
  final ResponseActivitiesController responseActivitiesController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacers.spacer10,
        TalkingButton(
          responseActivitiesController: responseActivitiesController,
        ),
        Spacers.spacer10,
        answerText(correctAnswer),
      ],
    );
  }

  Text answerText(String answer) => Text(
        answer,
        style: const TextStyle(
          color: ColorsApp.text,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
        ),
      );
}
