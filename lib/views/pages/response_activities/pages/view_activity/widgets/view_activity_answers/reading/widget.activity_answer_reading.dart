import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/view_activity_answers/reading/utils.activity_answer_reading.dart';
import 'package:flutter/material.dart';

class ActivityAnswerReading extends StatefulWidget {
  const ActivityAnswerReading({
    super.key,
    required this.answersListString,
    required this.responseActivitiesController,
  });

  final ResponseActivitiesController responseActivitiesController;
  final List<String> answersListString;

  @override
  State<ActivityAnswerReading> createState() => _ActivityAnswerReadingState();
}

class _ActivityAnswerReadingState extends State<ActivityAnswerReading> {
  String responseState = '';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.answersListString.length,
      itemBuilder: (context, index) => RadioListTile(
        contentPadding: const EdgeInsets.all(0),
        title: answerText(widget.answersListString[index]),
        value: widget.answersListString[index],
        groupValue: responseState,
        onChanged: (String? value) => selectResponse(value ?? ''),
      ),
    );
  }

  void selectResponse(String response) {
    final responseActivitiesState = widget.responseActivitiesController.state;
    responseActivitiesState.setResponse(response);
    setState(() => responseState = response);
  }
}
