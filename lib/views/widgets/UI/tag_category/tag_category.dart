import 'package:floky/views/utils/utils.index.dart';
import 'package:flutter/material.dart';

class TagCategory extends StatelessWidget {
  final Category category;
  const TagCategory({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: category.color,
        // border: Border.all(),
      ),
      child: Center(
        child: Text(
          '${category.name}   ${category.icon}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
