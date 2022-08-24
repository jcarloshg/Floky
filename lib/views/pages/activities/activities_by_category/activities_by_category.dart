import 'package:floky/views/pages/activities/activities/widgets/widgets.index.dart';
import 'package:floky/views/pages/activities/activities_by_category/Widgets/header.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class ActivitiesByCategoryScreen extends StatelessWidget {
  const ActivitiesByCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO - do it with provider
    final Category category = Categories.read;

    return Scaffold(
      body: SafeArea(
        child: Container(
          // decoration: _boxDecoration(category.color),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(category: category),
                const SearchBarActivities(),
                const CarouselActivities(label: 'Nuevas'),
                const CardRecomendation(),
                const CarouselActivities(label: 'Sugeridas'),
                const CarouselActivities(label: 'Para expertos 😎'),
                const CardRecomendation(),
                const SizedBox(height: 15)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
