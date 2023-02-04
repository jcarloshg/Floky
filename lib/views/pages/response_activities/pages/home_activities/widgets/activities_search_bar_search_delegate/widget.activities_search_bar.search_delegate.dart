import 'dart:developer';

import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
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

  List<String> fruits = [
    'past simple',
    'past continuos',
    'past perfect',
    'past perfect continuos',
    'conditional perfect',
    'conditional continuos perfect',
    'present',
    'present continuos',
    'present perfect',
    'present perfect continuos',
    'conditional simple',
    'conditional continuo',
    'future',
    'future simple',
    'future continuos',
    'continuos perfect',
    'going to',
  ];

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
    log(query);

    List results = [];
    for (final fruit in fruits) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) results.add(fruit);
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: controller.repository.getRecentActivities(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<Activity>> snapshot,
      ) =>
          _buildSuggestions(
        context: context,
        snapshot: snapshot,
        queryTerm: query,
      ),
    );

    // List results = [];
    // for (final fruit in fruits) {
    //   if (fruit.toLowerCase().contains(query.toLowerCase())) results.add(fruit);
    // }

    // return ListView.builder(
    //   itemCount: results.length,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text('h ${results[index]}'),
    //     );
    //   },
    // );
  }
}
