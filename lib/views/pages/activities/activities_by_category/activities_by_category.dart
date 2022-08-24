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
    final Category category = Categories.listen;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(category: category),
              const SearchBarActivities(),
              const CarouselActivities(label: 'Nuevas'),
              const CarouselActivities(label: 'Sugeridas'),
              const CarouselActivities(label: 'Para expertos 😎'),
            ],
          ),
        ),
      ),
    );
  }
}
