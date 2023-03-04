import 'package:floky/data/usecase/response_activities/get_recent_activities/controller.get_recent_activities.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/list_recent_activities/widget.activities_carousel_horizontal.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListRecentActivities extends StatefulWidget {
  const ListRecentActivities({super.key});

  @override
  State<ListRecentActivities> createState() => _ListRecentActivitiesState();
}

class _ListRecentActivitiesState extends State<ListRecentActivities> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final getRecentActivitiesController =
            di<GetRecentActivitiesController>();
        getRecentActivitiesController.run();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final getRecentActivitiesState = Provider.of<GetRecentActivitiesState>(
      context,
      listen: true,
    );

    if (getRecentActivitiesState.getIsLoading() == true) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        Titles.subtitle('Descubre actividades nuevas'),
        const SizedBox(height: 5),
        ActivitiesCarouselHorizontal(
          activities: getRecentActivitiesState.getRecentActivities(),
        ),
      ],
    );
  }
}
