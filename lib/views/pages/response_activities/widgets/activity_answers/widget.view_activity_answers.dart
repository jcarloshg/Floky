import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.activity_answer_listening.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.activity_answer_reading.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.activity_answer_talking.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.activity_answer_writing.dart';
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
    if (activityType == ActivityType.WRITING) {
      return ActivityAnswerWriting(
        correctAnswer: answers.correct,
      );
    }

    if (activityType == ActivityType.READING) {
      return ActivityAnswerReading(
        answersListString: answersToList(answers),
      );
    }

    if (activityType == ActivityType.TALKING) {
      return ActivityAnswerTalking(
        correctAnswer: answers.correct,
      );
    }

    if (activityType == ActivityType.LISTENING) {
      return ActivityAnswerListening(
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
