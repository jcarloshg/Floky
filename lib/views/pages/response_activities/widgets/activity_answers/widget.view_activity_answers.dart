import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.activity_answer_listening.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.activity_answer_reading.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/widgets.dart';

class ViewActivityAnswers extends StatelessWidget {
  const ViewActivityAnswers({
    super.key,
    required this.activityType,
    required this.answers,
  });

  final ActivityType activityType;
  final Answer answers;

  @override
  Widget build(BuildContext context) {
    if (activityType == ActivityType.LISTENING) {
      return ActivityAnswerListening(
        answersListString: answersToList(answers),
      );
    }

    if (activityType == ActivityType.READING) {
      return ActivityAnswerReading(
        answersListString: answersToList(answers),
      );
    }

    return Container();
  }

  List<String> answersToList(Answer answers) {
    final List<String> answersList = [
      answers.correct,
      answers.incorrect_1 ?? '',
      answers.incorrect_2 ?? '',
      answers.incorrect_3 ?? '',
    ];
    List<String> answersListShuffled = answersList
        .where(
          (answer) => answer.isNotEmpty,
        )
        .toList();
    answersListShuffled.shuffle();
    return answersListShuffled;
  }
}

Widget bodyListening() {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(),
      color: ColorsApp.listen,
    ),
  );
}

Widget bodyWriting() {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(),
      color: ColorsApp.write,
    ),
  );
}

Widget bodyReading(List<String> answersListString) {
  return ListView.separated(
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: answersListString.length,
    separatorBuilder: (_, __) => Spacers.spacer5,
    itemBuilder: (_, index) => Text(answersListString[index]),
  );
}

Widget bodyTalking() {
  return Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(),
      color: ColorsApp.speak,
    ),
  );
}
