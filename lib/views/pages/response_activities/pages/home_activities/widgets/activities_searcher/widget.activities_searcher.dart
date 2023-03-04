import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activities_searcher/element.search_by_categories.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/search_input/widget.search_input.dart';
import 'package:flutter/material.dart';

class ActivitiesSearcher extends StatelessWidget {
  const ActivitiesSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: const Column(
        children: [
          SearchInput(),
          SearchByCategories(),
        ],
      ),
    );
  }
}
