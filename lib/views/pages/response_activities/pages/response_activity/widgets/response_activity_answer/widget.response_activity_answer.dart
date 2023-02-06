import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/response_activity/widgets/response_activity_answer/widget.response_activity_writing.dart';
import 'package:flutter/widgets.dart';

class ResponseActivityAnswer extends StatelessWidget {
  const ResponseActivityAnswer({
    super.key,
    required this.activityType,
    required this.answers,
  });

  final ActivityType activityType;
  final Answer answers;

  @override
  Widget build(BuildContext context) {
    if (activityType == ActivityType.WRITING) {
      return ResponseActivityWriting(
        correctAnswer: answers.correct,
      );
    }

    return Container();
  }
}
