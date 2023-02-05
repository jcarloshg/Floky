import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerTalking extends StatelessWidget {
  const ActivityAnswerTalking({
    super.key,
    required this.correctAnswer,
  });

  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacers.spacer20,
        buttonPlayAudio(),
        Spacers.spacer10,
        answerText(correctAnswer),
      ],
    );
  }

  InkWell buttonPlayAudio() => InkWell(
        onTap: () {},
        child: Image(
          height: 80,
          width: 80,
          fit: BoxFit.scaleDown,
          image: AssetImage(ActivityUtility.urlImageSpeak),
        ),
      );

  Text answerText(String answer) => Text(
        answer,
        style: const TextStyle(
          color: ColorsApp.text,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
        ),
      );
}
