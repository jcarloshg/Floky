import 'package:floky/views/pages/activities/activities/widgets/search_bar_activities/search_activities_delegate.dart';
import 'package:flutter/material.dart';

class SearchBarActivities extends StatelessWidget {
  const SearchBarActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextFormField(
        keyboardType: TextInputType.name,
        autocorrect: false,
        decoration: _inputDecoration(context),
        onTap: () => _openSearchScreen(context),
      ),
    );
  }

  void _openSearchScreen(BuildContext context) {
    showSearch(
      context: context,
      delegate: SearchActivitiesDelegate(),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) {
    return InputDecoration(
      hintText: "ej. Leer Tom Sawyer",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      suffixIcon: IconButton(
        onPressed: () => _openSearchScreen(context),
        icon: const Icon(Icons.search),
      ),
    );
  }
}
