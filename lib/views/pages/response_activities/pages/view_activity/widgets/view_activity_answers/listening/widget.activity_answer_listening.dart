import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/view_activity_answers/listening/widget.listening_button.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerListening extends StatefulWidget {
  const ActivityAnswerListening({
    super.key,
    required this.answersListString,
    required this.correctAnswer,
    required this.responseActivitiesController,
  });

  final List<String> answersListString;
  final String correctAnswer;
  final ResponseActivitiesController responseActivitiesController;

  @override
  State<ActivityAnswerListening> createState() =>
      _ActivityAnswerListeningState();
}

class _ActivityAnswerListeningState extends State<ActivityAnswerListening> {
  String responseState = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListenButton(correctAnswer: widget.correctAnswer),
        Spacers.spacer5,
        answerCorrectText(widget.correctAnswer),
        Spacers.spacer10,
        listAnswers(widget.answersListString),
      ],
    );
  }

  Text answerCorrectText(String answer) => Text(
        answer,
        style: const TextStyle(
          color: ColorsApp.text,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
        ),
      );

  ListView listAnswers(List<String> answersListString) => ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: answersListString.length,
        itemBuilder: (context, index) => RadioListTile(
          contentPadding: const EdgeInsets.all(0),
          value: answersListString[index],
          title: answerText(answersListString[index]),
          groupValue: responseState,
          onChanged: (String? value) => _selectResponse(value ?? ''),
        ),
      );

  Text answerText(String answer) => Text(
        answer,
        style: const TextStyle(
          color: ColorsApp.text,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
      );

  void _selectResponse(String response) {
    final responseActivitiesState = widget.responseActivitiesController.state;
    responseActivitiesState.setResponse(response);
    setState(() => responseState = response);
  }
}
