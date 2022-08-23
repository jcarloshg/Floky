import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CarouselActivities extends StatelessWidget {
  final String? label;
  const CarouselActivities({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 250,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (label != null) TextDivider(label: label!),
          Flexible(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const ActivityCard(),
            ),
          ),
        ],
      ),
    );
  }
}
