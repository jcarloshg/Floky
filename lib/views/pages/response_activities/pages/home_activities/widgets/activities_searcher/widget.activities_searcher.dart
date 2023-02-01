import 'package:flutter/material.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'dart:developer';

part 'element.search_input.dart';
part 'element.search_by_categories.dart';

class ActivitiesSearcher extends StatelessWidget {
  const ActivitiesSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const _SearchInput(),
          const SizedBox(height: 10),
          _SearchByCategories(),
        ],
      ),
    );
  }
}
