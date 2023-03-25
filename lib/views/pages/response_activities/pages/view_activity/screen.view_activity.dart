import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/button_response_activity/widget.button_response_activity.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/widgets/view_activity_answers/widget.view_activity_answers.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_concept_Information_examples/widget.view_activity_concept_Information_examples.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_header/widget.view_activity_header.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_questions/widget.view_activity_questions.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_type_image/widget.view_activity_type_image.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ViewActivityScreen extends StatelessWidget {
  const ViewActivityScreen({
    super.key,
    required this.activity,
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: Spacers.size15,
            vertical: Spacers.size20,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ViewActivityTypeImage(activityType: activity.activityType),
              viewActivity(),
            ],
          ),
        ),
      ),
    );
  }

  Column viewActivity() {
    ViewActivityHeader viewActivityHeader() => ViewActivityHeader(
          activityLevel: activity.activityLevel,
          activityName: activity.name,
          activityType: activity.activityType,
          topicName: activity.topic.name,
        );

    ViewActivityQuestion viewActivityQuestion() => ViewActivityQuestion(
          question: activity.question,
          questionBody: activity.questionBody,
        );

    ViewActivityAnswers viewActivityAnswers() => ViewActivityAnswers(
          activityType: activity.activityType,
          answers: activity.answers,
        );

    ViewActivityConceptInformationExamples
        viewActivityConceptInformationExamples() =>
            ViewActivityConceptInformationExamples(
              conceptInformation: activity.topic.conceptInformation!,
              examples: activity.topic.examples!,
            );

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        viewActivityHeader(),
        Spacers.spacer20,
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                viewActivityQuestion(),
                Spacers.spacer20,
                viewActivityAnswers(),
                Spacers.spacer20,
              ],
            ),
          ),
        ),
        ResponseActivityButton(responseActivitiesController: di()),
        Spacers.spacer20,
        viewActivityConceptInformationExamples(),
        Spacers.spacer20,
      ],
    );
  }
}
