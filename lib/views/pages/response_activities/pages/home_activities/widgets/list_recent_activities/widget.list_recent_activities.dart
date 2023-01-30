import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/widgets.dart';

class ListRecentActivities extends StatelessWidget {
  final String title = 'Descubre actividades nuevas';

  const ListRecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    activitiesCarousel();

    return Container(
      decoration: BoxDecoration(border: Border.all()),
      // margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Titles.subtitle(title),
        ],
      ),
    );
  }

  Future<void> activitiesCarousel() async {
    final responseActivitiesController = di<ResponseActivitiesController>();
    final activities = await responseActivitiesController.getRecentActivities();
    for (var element in activities) {
      // ignore: avoid_print
      print(element.name);
    }
    // return Container(
    //   decoration: BoxDecoration(border: Border.all()),
    //   width: 150,
    //   height: 150,
    //   child: ListView.separated(
    //     itemCount: activities.length,
    //     separatorBuilder: (_, __) => const SizedBox(width: 15, height: 15),
    //     itemBuilder: (context, index) => Text(activities[index].name),
    //   ),
    // );
  }
}
