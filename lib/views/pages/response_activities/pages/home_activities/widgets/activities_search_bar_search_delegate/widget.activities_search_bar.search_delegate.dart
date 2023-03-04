import 'package:floky/data/usecase/response_activities/get_activities_by_key_word/controller.get_activities_by_key_word.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controllers/controller.response_activities.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activity_card/widget.activity_card.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

part 'element.activities_search_bar.search_delegate.dart';

// ! FutureBuilder

class ActivitiesSearchBarSearchDelegate extends SearchDelegate {
  ActivitiesSearchBarSearchDelegate({
    required this.controller,
    required this.getActivitiesByKeyWordController,
  }) : super(
          searchFieldLabel: searchFieldLabel,
          searchFieldStyle: searchFieldStyle,
        );

  final ResponseActivitiesController controller;
  final GetActivitiesByKeyWordController getActivitiesByKeyWordController;

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
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: getActivitiesByKeyWordController.run(keyword: query),
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

  @override
  Widget buildResults(BuildContext context) {
    return _renderActivitiesFoundedByKeyword(
      activitiesFounded:
          controller.getActivitiesByKeyWordData.activitiesFoundedByKeyword,
      queryTerm: query,
    );
  }
}
