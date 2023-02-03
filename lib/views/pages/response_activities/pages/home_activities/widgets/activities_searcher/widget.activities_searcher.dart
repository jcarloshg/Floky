import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
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
      child: Column(
        children: [
          SearchInput(),
          const SearchByCategories(),
        ],
      ),
    );
  }
}
