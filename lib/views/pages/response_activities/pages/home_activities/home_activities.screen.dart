import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activities_searcher/widget.activities_searcher.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/list_recent_activities/widget.list_recent_activities.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class HomeActivitiesScreen extends StatelessWidget {
  const HomeActivitiesScreen({super.key});

  final String title = 'Actividades 📝';
  final String subtitle =
      'Resuelve actividades para mejorar en tus habilidades 🏃‍♀️🏃‍♂️';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Titles.title(title),
              Titles.subtitle(subtitle),
              Spacers.spacer20,
              const ActivitiesSearcher(),
              Spacers.spacer20,
              const ListRecentActivities(),
              Spacers.spacer20,
              const ListRecentActivities(),
              Spacers.spacer30,
            ],
          ),
        ),
      ),
    );
  }
}
