import 'package:flutter/material.dart';
import '../../../utils/utils.index.dart';

class ButtonCategory extends StatelessWidget {
  final Category category;
  const ButtonCategory({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 50,
      shape: _roundedRectangleBorder(),
      color: category.color,
      child: _bodyButton(),
    );
  }

  RoundedRectangleBorder _roundedRectangleBorder() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    );
  }

  Widget _bodyButton() {
    final label = SizedBox(
      width: double.infinity,
      child: Text(
        category.name,
        style: const TextStyle(
          color: Colors.white,
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
