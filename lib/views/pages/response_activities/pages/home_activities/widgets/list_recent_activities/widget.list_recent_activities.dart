import 'package:flutter/widgets.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class ListRecentActivities extends StatelessWidget {
  const ListRecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: Column(
        children: [
          Titles.subtitle('Descubre actividades nuevas'),
        ],
      ),
    );
  }
}
