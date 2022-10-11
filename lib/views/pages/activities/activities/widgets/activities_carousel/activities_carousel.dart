import 'package:flutter/material.dart';
import 'package:floky/views/widgets/widgets.index.dart';

class ActivitiesCarousel extends StatelessWidget {
  final String titleCarousel;

  const ActivitiesCarousel({
    Key? key,
    required this.titleCarousel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Titles.subtitle(titleCarousel),
        const SizedBox(height: 5),
        SizedBox(
          // margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 100,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5 + 2,
            itemBuilder: (context, index) {
              return (index == 0 || index == 6)
                  ? const SizedBox.shrink()
                  : const ActivityCard();
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 15),
          ),
        ),
      ],
    );
  }
}
