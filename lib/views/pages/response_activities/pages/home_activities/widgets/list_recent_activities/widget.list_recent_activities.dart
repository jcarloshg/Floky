import 'dart:developer';

import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/list_recent_activities/widget.activities_carousel_horizontal.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ListRecentActivities extends StatefulWidget {
  const ListRecentActivities({super.key});

  @override
  State<ListRecentActivities> createState() => _ListRecentActivitiesState();
}

class _ListRecentActivitiesState extends State<ListRecentActivities> {
  List<Activity> _activities = [];

  @override
  void initState() {
    super.initState();
    getRecentActivities();
  }

  Future<void> getRecentActivities() async {
    final responseActivitiesController = di<ResponseActivitiesController>();
    final activities = await responseActivitiesController.getRecentActivities();
    for (var activity in activities) {
      log('ACTIVITY');
      log(activity.name);
    }
    setState(() => _activities = activities);
  }

  @override
  Widget build(BuildContext context) {
    return _activities.isEmpty ? loading() : viewerActivities();
  }

  Widget loading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget viewerActivities() {
    return Column(
      children: [
        Titles.subtitle('Descubre actividades nuevas'),
        ActivitiesCarouselHorizontal(activities: _activities),
      ],
    );
  }
}
