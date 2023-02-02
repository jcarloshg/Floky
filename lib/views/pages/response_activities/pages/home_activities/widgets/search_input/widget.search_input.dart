import 'dart:developer';

import 'package:floky/views/pages/response_activities/controller.response_activities.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

part 'elements.search_input.dart';

class SearchInput extends StatelessWidget {
  SearchInput({super.key, required this.controller});

  final ResponseActivitiesController controller;
  final searchInputController = TextEditingController();

  Future<void> getActivitiesByKeyWord() async {
    final String keyword = searchInputController.text;
    await controller.getActivitiesByKeyWord(keyword: keyword);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchInputController,
      keyboardType: TextInputType.name,
      decoration: inputDecoration(
        context,
        iconButton: iconButton(search: getActivitiesByKeyWord),
      ),
    );
  }
}
