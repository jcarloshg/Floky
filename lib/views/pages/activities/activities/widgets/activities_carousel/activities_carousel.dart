import 'package:floky/views/utils/utils.index.dart';
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
        Container(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              height: 100,
              width: 200,
              decoration: _boxDecoration(context),
            ),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 15),
          ),
        ),
      ],
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: ColorsApp.greyAAAAAA,
        width: 2,
      ),
      // boxShadow: const [
      //   BoxShadow(
      //     color: Colors.black12,
      //     offset: Offset(5, 0),
      //     blurRadius: 15,
      //   )
      // ],
    );
  }
}
