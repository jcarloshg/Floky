import 'dart:developer';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activities_searcher/element.search_by_categories.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

part 'element.search_input.dart';

class ActivitiesSearcher extends StatelessWidget {
  const ActivitiesSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: const [
          _SearchInput(),
          SearchByCategories(),
        ],
      ),
    );
  }
}
