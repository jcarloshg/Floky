import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/views/pages/response_activities/pages/home_activities/widgets/activities_search_bar_search_delegate/widget.activities_search_bar.search_delegate.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

part 'elements.search_input.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  Future<void> getActivitiesByKeyWord() async {
    // const String keyword = 'new keyword';
    // await controller.getActivitiesByKeyWord(keyword: keyword);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showSearch(
        context: context,
        delegate: ActivitiesSearchBarSearchDelegate(controller: di()),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: _decoration(),
        child: _placeHolder(),
      ),
    );
  }
}