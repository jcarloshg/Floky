import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/view_activity/widget.view_activity_header.dart';
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
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Titles.title(activity.name),
                        Titles.subtitle(activity.topic.name),
                      ],
                    ),
                  ),
                ),
              ),
              Spacers.spacer20,
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Titles.subtitle(activity.topic.name),
                    Titles.subtitle(activity.topic.name),
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
