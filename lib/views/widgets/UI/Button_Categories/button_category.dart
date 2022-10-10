import 'dart:developer';

import 'package:floky/views/pages/pages.index.dart';
import 'package:flutter/material.dart';
import '../../../utils/utils.index.dart';

class ButtonCategory extends StatelessWidget {
  final Category category;

  const ButtonCategory({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      onPressed: () => _navigateActivities(context),
      shape: _roundedRectangleBorder(),
      color: category.color,
      child: _bodyButton(),
    );
  }

  _navigateActivities(BuildContext context) {
    // Navigator.pushNamed(
    //   context,
    //   PageIndex.activitiesByCategoryScreen.route,
    // );
    log('[ButtonCategory] - _navigateActivities - ${PageIndex.activitiesByCategoryScreen.route}');
  }

  RoundedRectangleBorder _roundedRectangleBorder() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    );
  }

  Widget _bodyButton() {
    final label = SizedBox(
      width: double.infinity,
      child: Text(
        category.name,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );

    final icon = SizedBox(
      width: double.infinity,
      child: Text(category.icon),
    );

    return Row(
      children: [
        Flexible(flex: 3, child: label),
        Flexible(flex: 1, child: icon),
      ],
    );
  }
}
