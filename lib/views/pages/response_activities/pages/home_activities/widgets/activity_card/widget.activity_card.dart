import 'package:floky/domain/entities/models/ModelProvider.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity});

  final Activity activity;
  static const double width = 200;
  static const double height = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ActivityCard.width,
      height: ActivityCard.height,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: _boxDecoration(context),
      child: Text(activity.name),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: ColorsApp.greyAAAAAA,
        width: 1,
      ),
    );
  }
}
