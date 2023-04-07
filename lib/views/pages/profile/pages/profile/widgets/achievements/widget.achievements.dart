import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

import 'elements.achievements.dart';

class Achievements extends StatelessWidget {
  const Achievements({
    super.key,
    required this.activitiesProgress,
  });

  final ActivitiesProgress? activitiesProgress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Titles.subtitle('Tus logros 🏆'),
        Spacers.spacer10,
        activitiesProgress == null
            ? messageNotActivitiesProgress()
            : achievementsContainer(activitiesProgress!),
      ],
    );
  }

  Container achievementsContainer(ActivitiesProgress activitiesProgress) {
    final listCategoriesBox =
        AchievementsElements.getListCategoriesBox(activitiesProgress);

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        // decoration: BoxDecoration(border: Border.all()),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: listCategoriesBox.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            mainAxisExtent: 200,
          ),
          itemBuilder: (context, index) => listCategoriesBox[index],
        ));
  }

  Container messageNotActivitiesProgress() {
    const title = Text(
      'Aun no tienes progreso. 😪',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF384850),
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );

    const subtext = Text(
      'Realiza algunas actividades 😃',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF384850),
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 450,
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          title,
          Spacers.spacer10,
          subtext,
        ],
      ),
    );
  }
}
