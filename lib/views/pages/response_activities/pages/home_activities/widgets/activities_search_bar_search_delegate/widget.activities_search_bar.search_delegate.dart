import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activity_card/widget.activity_card.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

part 'element.activities_search_bar.search_delegate.dart';

// ! FutureBuilder

class ActivitiesSearchBarSearchDelegate extends SearchDelegate {
  ActivitiesSearchBarSearchDelegate({required this.controller})
      : super(
          searchFieldLabel: searchFieldLabel,
          searchFieldStyle: searchFieldStyle,
        );

  final ResponseActivitiesController controller;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _renderActivitiesFoundedByKeyword(
      activitiesFounded:
          controller.getActivitiesByKeyWordData.activitiesFoundedByKeyword,
      queryTerm: query,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Future<List<Activity>> activitiesFuture = query.isEmpty
        ? controller.repository.getRecentActivities()
        : controller.repository.getActivitiesByKeyWord(keyword: query);

    return FutureBuilder(
      future: activitiesFuture,
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Activity>> snapshot,
      ) =>
          _renderSuggestionActivities(
        context: context,
        snapshot: snapshot,
      ),
    );
  }
}
