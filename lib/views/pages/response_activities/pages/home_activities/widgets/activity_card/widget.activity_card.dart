import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

part 'elements.activity_card.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.activity,
  });

  final Activity activity;
  static const double width = 200;
  static const double height = 100;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToViewActivity(context, activity),
      child: Container(
        width: ActivityCard.width,
        height: ActivityCard.height,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration:
            _boxDecoration(context, activityType: activity.activityType),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _CardHeader(title: activity.name, topicName: activity.topic.name),
            _CardBottom(level: activity.activityLevel),
            _ImageActivityType(activityType: activity.activityType),
          ],
        ),
      ),
    );
  }

  void goToViewActivity(BuildContext context, Activity activity) {
    final controller = di<ResponseActivitiesController>();
    controller.navigator.goToViewActivity(context, activity);
  }
}
