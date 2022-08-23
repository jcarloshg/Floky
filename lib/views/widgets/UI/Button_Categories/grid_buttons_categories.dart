import 'package:flutter/material.dart';
import 'package:floky/views/widgets/UI/Button_Categories/button_listen.dart';
import 'package:floky/views/widgets/UI/Button_Categories/button_read.dart';
import 'package:floky/views/widgets/UI/Button_Categories/button_speak.dart';
import 'package:floky/views/widgets/UI/Button_Categories/button_write.dart';

class GridButtonsCategories extends StatelessWidget {
  const GridButtonsCategories({Key? key}) : super(key: key);

  static const buttons = [
    ButtonRead(),
    ButtonWrite(),
    ButtonSpeak(),
    ButtonListen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 100,
      child: GridView.builder(
        itemCount: buttons.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          mainAxisExtent: 45,
        ),
        itemBuilder: (BuildContext context, int index) => buttons[index],
      ),
    );
  }
}
