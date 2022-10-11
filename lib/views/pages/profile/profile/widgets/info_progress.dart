import 'package:floky/views/pages/profile/profile/widgets/widgets.index.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class InfoProgress extends StatelessWidget {
  const InfoProgress({Key? key}) : super(key: key);

  static final categorisProgress = [
    CardCategoryProgress(
      categoryProgress: CategoryProgress(Categories.read, 1, 2, 3),
    ),
    CardCategoryProgress(
      categoryProgress: CategoryProgress(Categories.write, 1, 2, 3),
    ),
    CardCategoryProgress(
      categoryProgress: CategoryProgress(Categories.listen, 1, 2, 3),
    ),
    CardCategoryProgress(
      categoryProgress: CategoryProgress(Categories.speak, 1, 2, 3),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Titles.subtitle('Tu progreso'),
        const SizedBox(height: 5),
        Container(
          height: 415,
          // decoration: BoxDecoration(border: Border.all()),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
              itemCount: categorisProgress.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                mainAxisExtent: 200,
              ),
              itemBuilder: (BuildContext context, int index) =>
                  categorisProgress[index]),
        ),
      ],
    );
  }
}
