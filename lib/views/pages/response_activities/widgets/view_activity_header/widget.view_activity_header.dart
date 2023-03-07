import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/view_posts/widgets/badge_activity_type/widget.badge_activity_type.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ViewActivityHeader extends StatelessWidget {
  const ViewActivityHeader({
    super.key,
    required this.activityLevel,
    required this.activityName,
    required this.activityType,
    required this.topicName,
  });

  final ActivityLevel activityLevel;
  final ActivityType activityType;
  final String activityName;
  final String topicName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(activityName),
              Spacers.spacer5,
              Row(
                children: [
                  level(ActivityUtility.getActivityLevelString(activityLevel)),
                  Spacers.spacer5,
                  topic(topicName),
                ],
              ),
            ],
          ),
        ),
        BadgeActivityType(activityType: activityType),
      ],
    );
  }
}

//============================================================
// elements
//============================================================

Text title(String activityName) => Text(
      activityName,
      style: const TextStyle(
        color: Color(0xFF384850),
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );

Text level(String activityLevel) => Text(
      activityLevel,
      style: const TextStyle(
        color: Color(0xFF384850),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );

Text topic(String topicName) => Text(
      topicName,
      style: const TextStyle(
        color: Color(0xFF384850),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
