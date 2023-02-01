import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/domain/entities/models/ActivityLevel.dart';
import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

part 'elements.activity_card.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity});

  final Activity activity;
  static const double width = 200;
  static const double height = 100;
  static const shadowOffsetX = 5;
  static const shadowOffsetY = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ActivityCard.width,
      // height: ActivityCard.height,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: _boxDecoration(context, activityType: activity.activityType),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          _CardHeader(title: activity.name, topicName: activity.topic.name),
          _CardBottom(level: activity.activityLevel),
          _ImageActivityType(activityType: activity.activityType),
        ],
      ),
    );
  }
}
