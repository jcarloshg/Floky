import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:flutter/widgets.dart';

import 'listening/widget.activity_answer_listening.dart';
import 'reading/widget.activity_answer_reading.dart';
import 'talking/widget.activity_answer_talking.dart';
import 'writing/widget.activity_answer_writing.dart';

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
    if (activityType == ActivityType.READING) {
      return ActivityAnswerReading(
        answersListString: answersToList(answers),
        responseActivitiesController: di(),
      );
    }

    if (activityType == ActivityType.WRITING) {
      return ActivityAnswerWriting(
        correctAnswer: answers.correct,
        responseActivitiesController: di(),
      );
    }

    if (activityType == ActivityType.TALKING) {
      return ActivityAnswerTalking(
        correctAnswer: answers.correct,
        responseActivitiesController: di(),
      );
    }

    if (activityType == ActivityType.LISTENING) {
      return ActivityAnswerListening(
        correctAnswer: answers.correct,
        answersListString: answersToList(answers),
        responseActivitiesController: di(),
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
