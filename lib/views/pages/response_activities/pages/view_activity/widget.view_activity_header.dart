import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ViewActivityHeader extends StatelessWidget {
  final ActivityLevel activityLevel;
  final ActivityType activityType;
  final String activityName;
  final String topicName;
  // final String activityType;

  const ViewActivityHeader({
    super.key,
    required this.activityLevel,
    required this.activityName,
    required this.activityType,
    required this.topicName,
  });

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
        type(activityType),
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

Widget type(ActivityType activityType) {
  BoxDecoration boxDecoration = BoxDecoration(
    color: ActivityUtility.getCategoryColor(activityType),
    borderRadius: BorderRadius.circular(30),
  );

  Text activityTypeText = Text(
    ActivityUtility.getCategoryName(activityType),
    style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );

  return Container(
    width: 90,
    height: 30,
    decoration: boxDecoration,
    child: Center(
      child: activityTypeText,
    ),
  );
}
