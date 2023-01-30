import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ListRecentActivities extends StatefulWidget {
  const ListRecentActivities({super.key});

  @override
  State<ListRecentActivities> createState() => _ListRecentActivitiesState();
}

class _ListRecentActivitiesState extends State<ListRecentActivities> {
  final String _title = 'Descubre actividades nuevas';
  List<Activity> _activities = [];

  @override
  void initState() {
    super.initState();
    getRecentActivities();
  }

  Future<void> getRecentActivities() async {
    final responseActivitiesController = di<ResponseActivitiesController>();
    final activities = await responseActivitiesController.getRecentActivities();
    setState(() => _activities = activities);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: _activities.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Titles.subtitle(_title),
                SizedBox(
                  height: 100,
                  child: activitiesCarousel(_activities),
                )
              ],
            ),
    );
  }

  Widget activitiesCarousel(List<Activity> activities) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: activities.length,
      separatorBuilder: (_, __) => const SizedBox(width: 15, height: 15),
      itemBuilder: (context, index) => Text(activities[index].name),
    );
  }
}
