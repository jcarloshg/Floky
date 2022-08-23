import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CarouselActivities extends StatelessWidget {
  const CarouselActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(175),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const ActivityCard(),
        ),
      ),
    );
  }
}
