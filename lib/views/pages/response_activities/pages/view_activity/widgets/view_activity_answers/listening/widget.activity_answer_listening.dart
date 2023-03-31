import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/view_activity_answers/listening/widget.listening_button.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerListening extends StatelessWidget {
  const ActivityAnswerListening({
    super.key,
    required this.answersListString,
    required this.correctAnswer,
  });

  final List<String> answersListString;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListenButton(correctAnswer: correctAnswer),
        Spacers.spacer5,
        answerCorrectText('HOLA'),
        Spacers.spacer10,
        listAnswers(),
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

  ListView listAnswers() => ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: answersListString.length,
        separatorBuilder: (_, __) => Spacers.spacer10,
        itemBuilder: (context, index) => Row(
          children: [
            const Icon(Icons.circle_outlined, size: 24),
            Spacers.spacer5,
            answerText(answersListString[index]),
          ],
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
}
