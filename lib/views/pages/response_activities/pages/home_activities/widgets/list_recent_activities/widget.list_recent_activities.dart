import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
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
        final responseActivitiesController = di<ResponseActivitiesController>();
        final domain = responseActivitiesController.domain;
        domain.getRecentActivities();
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

// class ListRecentActivities extends StatelessWidget {
//   const ListRecentActivities({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final responseActivitiesController = di<ResponseActivitiesController>();
//     final domain =responseActivitiesController.domain;
//     return FutureBuilder(
//       future: domain.getRecentActivities(),
//       builder: ((
//         BuildContext context,
//         AsyncSnapshot<List<Activity>> snapshot,
//       ) {
//         //
//         final List<Activity> recentActivities = snapshot.data ?? [];
//         final getRecentActivitiesState = Provider.of<GetRecentActivitiesState>(
//           context,
//           listen: true,
//         );
//         if (getRecentActivitiesState.getIsLoading() == true) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         final messageError = getRecentActivitiesState.getMessageErro();
//         if (messageError.isNotEmpty == true) {
//           return Text(messageError);
//         }
//         return ActivitiesCarouselHorizontal(activities: recentActivities,);
//       }) ,
//     );
//   }
// }

// class ListRecentActivities extends StatefulWidget {
//   const ListRecentActivities({super.key});

//   @override
//   State<ListRecentActivities> createState() => _ListRecentActivitiesState();
// }

// class _ListRecentActivitiesState extends State<ListRecentActivities> {
//   List<Activity> _activities = [];

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) => getRecentActivities(),
//     );
//   }

//   Future<void> getRecentActivities() async {
//     final responseActivitiesController = di<ResponseActivitiesController>();
//     final activities =
//         await responseActivitiesController.repository.getRecentActivities();
//     // todo fix this
//     // setState(() => _activities = activities);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _activities.isEmpty ? loading() : viewerActivities();
//   }

//   Widget loading() {
//     return const Center(child: CircularProgressIndicator());
//   }

//   Widget viewerActivities() {
//     return Column(
//       children: [
//         Titles.subtitle('Descubre actividades nuevas'),
//         const SizedBox(height: 5),
//         ActivitiesCarouselHorizontal(activities: _activities),
//       ],
//     );
//   }
// }
