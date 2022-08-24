import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // decoration: BoxDecoration(border: Border.all()),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Titles.subtitle('Descripcion'),
          Titles.text(description),
        ],
      ),
    );
  }
}
