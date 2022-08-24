import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Category category;
  const Header({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Center(
        child: Titles.title('${category.name} ${category.icon}'),
      ),
    );
  }
}
