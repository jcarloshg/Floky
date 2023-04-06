import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_header/widget.view_activity_header.dart';
import 'package:floky/views/pages/response_activities/widgets/view_activity_type_image/widget.view_activity_type_image.dart';
import 'package:floky/views/widgets/UI/spacer/ui.spacer.dart';
import 'package:flutter/material.dart';

import 'widgets/message_about_response/widget.message_about_response.dart';

class CheckResponseActivityScreen extends StatelessWidget {
  const CheckResponseActivityScreen({
    super.key,
    required this.activity,
    required this.isTheCorrectResponse,
  });

  final Activity activity;
  final bool isTheCorrectResponse;

  @override
  Widget build(BuildContext context) {
    //

    final String responseCorrect = activity.answers.correct;

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
              viewActivity(responseCorrect),
            ],
          ),
        ),
      ),
    );
  }

  Column viewActivity(String responseCorrect) {
    //

    ViewActivityHeader viewActivityHeader() => ViewActivityHeader(
          activityLevel: activity.activityLevel,
          activityName: activity.name,
          activityType: activity.activityType,
          topicName: activity.topic.name,
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
                MessageAboutResponseWidget(
                  isTheCorrectResponse: isTheCorrectResponse,
                  responseCorrect: responseCorrect,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
