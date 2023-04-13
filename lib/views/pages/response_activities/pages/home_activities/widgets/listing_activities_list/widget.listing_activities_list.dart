import 'package:floky/data/usecase/response_activities/get_activities_by_key_type/controller.get_activities_by_key_type.dart';
import 'package:floky/data/usecase/response_activities/get_activities_by_key_type/state.get_activities_by_key_type.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/list_recent_activities/widget.activities_carousel_horizontal.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListingActivitiesList extends StatefulWidget {
  //

  static String label = 'Actividades para escuchar 🎧';
  const ListingActivitiesList({super.key});

  @override
  State<ListingActivitiesList> createState() => _ListingActivitiesListState();
}

class _ListingActivitiesListState extends State<ListingActivitiesList> {
  //

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final getRecentActivitiesController =
            di<GetActivitiesByKeyTypeController>();
        getRecentActivitiesController.run(activityType: ActivityType.LISTENING);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //

    final getActivitiesByKeyTypeState =
        Provider.of<GetActivitiesByKeyTypeState>(
      context,
      listen: true,
    );

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Titles.subtitle(ListingActivitiesList.label),
          Spacers.spacer10,
          ActivitiesCarouselHorizontal(
            activities: getActivitiesByKeyTypeState.getListeningActivities(),
          ),
        ],
      ),
    );
  }
}
