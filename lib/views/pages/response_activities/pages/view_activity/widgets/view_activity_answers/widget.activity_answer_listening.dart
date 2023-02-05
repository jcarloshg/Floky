import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivityAnswerListening extends StatelessWidget {
  const ActivityAnswerListening({
    super.key,
    required this.answersListString,
  });

  final List<String> answersListString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buttonPlayAudio(),
        listAnswers(),
      ],
    );
  }

  InkWell buttonPlayAudio() => InkWell(
        onTap: () {},
        child: Image(
          height: 80,
          width: 80,
          fit: BoxFit.scaleDown,
          image: AssetImage(ActivityUtility.urlImagePlay),
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
