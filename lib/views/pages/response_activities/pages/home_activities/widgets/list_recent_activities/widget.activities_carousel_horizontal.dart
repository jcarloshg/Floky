import 'package:floky/domain/entities/models/Activity.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activity_card/widget.activity_card.dart';
import 'package:flutter/material.dart';

class ActivitiesCarouselHorizontal extends StatelessWidget {
  final List<Activity> activities;

  const ActivitiesCarouselHorizontal({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ActivityCard.height,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: activities.length,
        separatorBuilder: (_, __) => const SizedBox(width: 15, height: 15),
        itemBuilder: (_, index) => ActivityCard(activity: activities[index]),
      ),
    );
  }
}
