import 'package:floky/views/pages/activities/activities/widgets/search_bar_activities/search_activities_delegate.dart';
import 'package:flutter/material.dart';

class SearchBarActivities extends StatelessWidget {
  const SearchBarActivities({Key? key}) : super(key: key);

  void _openSearchScreen(BuildContext context) {
    // ignore: avoid_print
    print('SearchBarActivities - _openSearchScreen');
    showSearch(
      context: context,
      delegate: SearchActivitiesDelegate(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.name,
        autocorrect: false,
        decoration: _inputDecoration(context),
        onTap: () => _openSearchScreen(context),
      ),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) {
    return InputDecoration(
      hintText: "ej. Leer Thom Soyers",
      border: const OutlineInputBorder(),
      suffixIcon: IconButton(
        onPressed: () => _openSearchScreen(context),
        icon: const Icon(Icons.search),
      ),
    );
  }
}
