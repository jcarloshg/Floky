import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/UI/Button_Categories/button_category.dart';
import 'package:flutter/material.dart';

class GridButtonsCategories extends StatelessWidget {
  const GridButtonsCategories({Key? key}) : super(key: key);

  static final buttons = [
    ButtonCategory(category: Categories.read),
    ButtonCategory(category: Categories.write),
    ButtonCategory(category: Categories.speak),
    ButtonCategory(category: Categories.listen),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 95,
      child: GridView.builder(
        itemCount: buttons.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 40,
        ),
        itemBuilder: (BuildContext context, int index) => buttons[index],
      ),
    );
  }
}
