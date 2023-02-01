import 'dart:developer';

import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';
import 'package:floky/views/utils/utils.index.dart';

part 'element.button_category.dart';

class SearchByCategories extends StatelessWidget {
  const SearchByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    const spacer = SizedBox(height: 10);

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Titles.thirdTitle('Filtrar por...'),
          const _ButtonCategory(activityType: ActivityType.READING),
          spacer,
          const _ButtonCategory(activityType: ActivityType.WRITING),
          spacer,
          const _ButtonCategory(activityType: ActivityType.TALKING),
          spacer,
          const _ButtonCategory(activityType: ActivityType.LISTENING),
        ],
      ),
    );
  }
}
