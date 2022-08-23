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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (label != null) TextDivider(label: label!),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const ActivityCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
