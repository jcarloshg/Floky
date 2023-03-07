import 'package:floky/domain/entities/models/ActivityType.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class BadgeActivityType extends StatelessWidget {
  //

  const BadgeActivityType({
    super.key,
    required this.activityType,
  });

  final ActivityType activityType;

  BoxDecoration _boxDecoration(ActivityType activityType) => BoxDecoration(
        color: ActivityUtility.getCategoryColor(activityType),
        borderRadius: BorderRadius.circular(30),
      );

  Text _activityTypeText(ActivityType activityType) => Text(
        ActivityUtility.getCategoryName(activityType),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      decoration: _boxDecoration(activityType),
      child: Center(
        child: _activityTypeText(activityType),
      ),
    );
  }
}
