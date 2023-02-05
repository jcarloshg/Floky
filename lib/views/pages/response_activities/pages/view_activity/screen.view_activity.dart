import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_answers/widget.view_activity_answers.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_questions/widget.view_activity_body.dart';
import 'package:floky/views/pages/response_activities/widgets/activity_header/widget.view_activity_header.dart';
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ViewActivityHeader(
                activityLevel: activity.activityLevel,
                activityName: activity.name,
                activityType: activity.activityType,
                topicName: activity.topic.name,
              ),
              Spacers.spacer20,
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ViewActivityBody(
                        question: activity.question,
                        questionBody: activity.questionBody,
                      ),
                      Spacers.spacer20,
                      ViewActivityAnswers(
                        activityType: activity.activityType,
                        answers: activity.answers,
                      ),
                    ],
                  ),
                ),
              ),
              Spacers.spacer20,
              Container(
                decoration: BoxDecoration(border: Border.all()),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Información del concepto',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacers.spacer10,
                    const Text(
                      'Ejemplos',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
